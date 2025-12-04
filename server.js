// Importamos modulos de express y mysql
const express = require('express')  
const mysql = require('mysql2/promise')  
const fs = require('fs')  
const path = require('path')  

const app = express()
const port = 3000

// Conexion a BD
const pool = mysql.createPool({
    host: 'db',
    user: 'root',
    password: 'tiendadb123',
    database: 'tienda',
    port: '3306',
    waitForConnections: true,
    connectionLimit: 10,
    queueLimit: 0
})

app.get('/', async(req, res) => {
    let connection
    
    try{
        connection = await pool.getConnection()

        const [rows] = await connection.execute('SELECT nombre, descripcion, precio, imagen FROM `productos`;')
        const productos = rows

        let productosHTML = productos.map(producto => `
            <article>
                <div class="contenedor-imagen">
                    <img src="${producto.imagen}" alt="${producto.nombre}" id="imagen-producto">
                </div>
                <div class="contenedor-producto">
                    <span id="nombre-producto" class="nombre-producto">${producto.nombre}</span>
                    <span id="descripcion" class="descripcion">${producto.descripcion}</span>
                    <span id="precio" class="precio">S/${producto.precio}</span>
                </div>
            </article>
        `).join('');

        const indexPath = path.join(__dirname, 'index.html');
        let htmlContent = fs.readFileSync(indexPath, 'utf8');

        htmlContent = htmlContent.replace('$$PRODUCTOS$$', productosHTML);

        res.send(htmlContent);
    }catch(e){
        console.error('Error Crítico (Conexión/DB):', e.message);
        res.status(500).send(`
            <h1>Error al cargar productos</h1>
            <p><strong>El Error es:</strong> ${e.message}</p>
        `);
    }finally {
        if (connection) {
            connection.release();
        }
    }
})

app.get('/styles.css', (req, res) => {
    res.sendFile(path.join(__dirname, 'styles.css'));
});

app.listen(port, () => {
    console.log(`Servidor Node.js escuchando en http://localhost:${port}`);
});