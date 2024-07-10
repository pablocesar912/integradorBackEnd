const {Sequelize} = require("sequelize")

const database = new Sequelize("biblioteca24255","root","",{
    host: "localhost",
    dialect: "mysql",
    port:3306
})

module.exports = database