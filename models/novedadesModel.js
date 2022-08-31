var pool = require('./bd');  //vinculamos al archivo de la base de datos 
//funcion asincrónica porque no sé en que momento se van a requerir estos datos
async function getNovedades() {
    var query = "select * from novedades order by id DESC";
    var rows = await pool.query(query);
    return rows;
}
 
async function insertNovedad(obj) {
    try {
        var query = "insert into novedades set ?" ;
        var rows = await pool.query(query, [obj]);   //el obj está dentro de corchetes porque nos devuelve un array de elementos 
        return rows;
    } catch (error) {
        console.log(error);
        throw error;
    }
}

async function deleteNovedadesById(id) {
    var query = 'delete from novedades where id = ?';
    var rows = await pool.query(query, [id]);
    return rows;
}

async function getNovedadesById(id) {   //para listar una sola novedad por el id
    var query = 'select * from novedades where id = ?';
    var rows = await pool.query(query, [id]);
    return rows[0];
}

async function modificarNovedadesById(obj, id) {
    try {
        var query = "update novedades set ? where id = ?";
        var rows = await pool.query(query, [obj, id]);
        return rows;
    } catch (error) {
        throw error;
    }
}

module.exports = { getNovedades, insertNovedad, deleteNovedadesById, getNovedadesById, 
                    modificarNovedadesById } //exporto las funciones y cargo dentro del formulario