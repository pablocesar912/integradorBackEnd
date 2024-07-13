// DOMContentLoaded
document.addEventListener("DOMContentLoaded", () => {
  // Obtener el body de la tabla donde se mostraran los libros
  const bodyTablaLibros = document.querySelector("#body-tabla-libros");

  // Botón para redirigir hacia la página que permite dar de alta un nuevo libro
  const botonAltaLibro = document.querySelector("#alta-libro");

  // Función para obtener los datos de nuestra API utilizando AXIOS
  const fetchLibros = async () => {
    try {
      const respuesta = await axios.get(`http://localhost:3030/posteos/`);
      console.log(respuesta.data);

      const libros = respuesta.data;
      
      // Limpiar la tabla antes de agregar los nuevos datos
      bodyTablaLibros.innerHTML = "";

      // Iterar sobre los datos y agregar cada libro a la tabla
      libros.forEach((libro) => {

        // Crear una nueva fila
        const fila = document.createElement("tr");

        // Crear celdas para los datos a mostrar y las acciones
        const celdaTitulo = document.createElement("td");
        const celdaAutor = document.createElement("td");
        const celdaEditorial = document.createElement("td");
        const celdaIsbn = document.createElement("td");
        const celdaAnioPublicacion = document.createElement("td");
        const celdaGenero = document.createElement("td");
        const celdaDisponibilidad = document.createElement("td");
        const celdaAcciones = document.createElement("td");

        // Asignar el contenido de las celdas
        celdaTitulo.textContent = libro.titulo;
        celdaAutor.textContent = libro.autor_id;
        celdaEditorial.textContent = libro.editorial_id;
        celdaIsbn.textContent = libro.isbn;
        celdaAnioPublicacion.textContent = libro.anio_publicacion;
        celdaGenero.textContent = libro.genero;
        celdaDisponibilidad.textContent = libro.disponible;

        // Crear el botón para eliminar un libro
        const botonEliminar = document.createElement("button");
        botonEliminar.textContent = "Eliminar";
        botonEliminar.addEventListener("click", () => {
          borrarLibro(libro.id);
        });

        // Crear el botón para editar un libro
        const botonEditar = document.createElement("button");
        botonEditar.textContent = "Editar";
        botonEditar.addEventListener("click", () => {
          // Redirigir a la página de edición con el ID del libro en la url (no incluída en el proyecto)
          window.location.href = `../editLibro.html?id=${libro.id}`;
        });

        // Agregar los botones a la celda de 'Acciones'
        celdaAcciones.appendChild(botonEliminar);
        celdaAcciones.appendChild(botonEditar);

        // Agregar las celdas a la fila
        fila.appendChild(celdaTitulo);
        fila.appendChild(celdaAutor);
        fila.appendChild(celdaEditorial);
        fila.appendChild(celdaIsbn);
        fila.appendChild(celdaAnioPublicacion);
        fila.appendChild(celdaGenero);
        fila.appendChild(celdaDisponibilidad);
        fila.appendChild(celdaAcciones);

        // Agregar la fila al cuerpo de la tabla
        bodyTablaLibros.appendChild(fila);
      });
    } catch (error) {
      console.error(`Error al obtener los post : ${error}`);
    }

    // Funcionalidad del botón 'Alta Libro'
    botonAltaLibro.addEventListener("click", () => {
      window.location.href = "../newlibro.html";
    });
  };

  // Función para eliminar un libro
  const borrarLibro = async (id) => {
    try {
      await axios.delete(`http://localhost:3030/posteos/${id}`);

      console.log(`Libro con ID ${id} eliminado correctamente.`);

      // Recargar la lista de libros despues de elminar
      fetchLibros();
    } catch (error) {
      console.error(`Error al eliminar el post : ${error}`);
    }
  };

  // Llamar a la funcion para obtener y mostrar los libros cuando carga la página
  fetchLibros();
});
