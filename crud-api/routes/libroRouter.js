const express = require ("express")

// Controlador
const {traerLibros, traerUnLibro, crearLibro, actualizarLibro, borrarLibro} = require("../controllers/libroControlador.js")

const router = express.Router()

router.get ("/" ,traerLibros)
router.get ("/:id",traerUnLibro)
router.post ("/", crearLibro)
router.put ("/:id", actualizarLibro)
router.delete ("/:id", borrarLibro) 


module.exports = router