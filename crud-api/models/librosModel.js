// importo la base de datos

const db = require("../data/db.js")

const {DataTypes} = require("sequelize")


const librosModel = db.define ("libros",{
    titulo:{type:DataTypes.STRING},
    isbn:{type:DataTypes.STRING},
    autor_id:{type:DataTypes.INTEGER},
    editorial_id:{type:DataTypes.INTEGER},
    anio_publicacion:{type:DataTypes.INTEGER},
    genero:{type:DataTypes.STRING},
    disponible:{type:DataTypes.BOOLEAN}
})

module.exports = librosModel