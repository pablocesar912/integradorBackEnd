const { DELETE } = require("sequelize/lib/query-types")
const librosModel = require("../models/librosModel.js")

/* TRAER TODOS LOS LIBROS (READ) -> GET */
const traerLibros = async (req,res)=> {
    try {
    const libros =  await librosModel.findAll()
    res.json(libros)
    } catch (error) {
        res.json({message:error.message})
    }
    }

/* FUNCION PARA TRAER UN LIBRO (READ) -> GET */
const traerUnLibro = async (req,res)=>{
    try {
        const libro = await librosModel.findByPk(req.params.id)
        res.json(libro)
    } catch (error) {
        res.json({message:error.message})
    }
    }    


/* FUNCION QUE CREA UN LIBRO (CREATE) -> POST */
const crearLibro = async (req,res)=>{
    try {
        await librosModel.create(req.body)
        res.json("registro creado correctamente")
    } catch (error) {
        res.json({message:error.message})
    }
}


/* FUNCION QUE ACTUALIZA UN LIBRO (UPDATE) -> PUT */
const actualizarLibro = async(req,res)=>{
    try {
        await librosModel.update(req.body,{
            where:{id:req.params.id}
        })
        res.json("registro ACTUALIZADO correctamente")
    } catch (error) {
        res.json({message:error.message})
    }
}


/* FUNCION PARA BORRAR UN LIBRO (DELETE) -> DELETE */
const borrarLibro = async (req,res)=>{
    try {
        await librosModel.destroy( { where:{id:req.params.id}})
        res.json("registro borrado correctamente")
    } catch (error) {
        res.json({message:error.message})
    }
}

module.exports = {traerLibros,traerUnLibro,crearLibro,actualizarLibro,borrarLibro}
