// Función para crear un nuevo libro
async function crearLibro(nuevoLibro) {
    try {
      const res = await axios.post('http://localhost:3030/libros', nuevoLibro);
      console.log('Libro creado exitosamente:', res.data);
      formCrearLibro.reset(); // recargar la lista de libros
    } catch (error) {
      console.error(`Error al crear el libro: ${error}`);
    }
  }

  // Obtener el formulario y agregar evento submit
  const formCrearLibro = document.querySelector('#crear-libro');
  formCrearLibro.addEventListener('submit', async function (evento) {
    evento.preventDefault();

    // Obtener los datos del formulario
    const nuevoLibro = {
      titulo: document.querySelector('#titulo').value,
      autor: parseInt(document.querySelector("#autor").value, 10),
      editorial: parseInt(document.querySelector("#editorial").value, 10),
      isbn: document.querySelector('#isbn').value,
      anioPublicacion: parseInt(document.querySelector('#anio-publicacion').value, 10),
      genero: document.querySelector('#genero').value,
      disponibilidad: document.querySelector('#disponibilidad').checked,
    };

    // Crear el nuevo libro
    await crearLibro(nuevoLibro);
  });
