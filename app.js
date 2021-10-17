const express = require('express');
const app = express();
const puerto = 3006;

app.get('/', (req, res) => {
    res.send('Servicio de BD  en funcionamiento');
});

//Cargar librería para 'parseo' de contenido JSON sin esto no funcion para trabajar con bd
var bodyParser = require('body-parser');
app.use(bodyParser.json());

//Cargar libreria para habilitar CORS
//const cors = require('cors');
//app.use(cors())

//require("./rutas/moneda.rutas")(app);
require("./rutas/clientes.rutas")(app);
require("./rutas/usuario.rutas")(app);

app.listen(puerto, () => {
    console.log(`Servicio de BD  escuchando en http://localhost:${puerto}`);
})