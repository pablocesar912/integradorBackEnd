const express = require("express")
const cors = require("cors")
const libroRouter = require("./routes/libroRouter.js")
const app = express()
const port = 3030

const db = require("./data/db.js")

app.use(cors())
app.use(express.json())

app.get ("/",(req,res)=>{
res.send("Estás en el home: Servidor creado con express, para la entrega del proyecto final integrador.")
})

app.use("/libros", libroRouter) //Modularizado

// Conexión a la base de datos
const conexionDB = async ()=>{
    try {
        await db.authenticate()
        console.log(`Conectado Ok a la Base de datos`);
    } catch (error) {
        console.log(`Hay un error y es el siguiente : ${error}`);
    }
}

app.listen (port,()=>{
    conexionDB()
    console.log(`Server OK en el puerto ${port}`);
})





/* instalar dependencias 

npm i nodemon -g
npm i cors mysql2 sequelize (listo)

correr el servidor

npm run dev

*/