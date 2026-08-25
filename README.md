<h1 align="center"> Busca Libros </h1>
<h2 align="center"> Buscador de libros con la API Gutendex, que contiene los títulos de </h2>
<h2 align="center"> Project Gutenberg ebook </h2>

Aplicación de consola (CLI) desarrollada en Java con Spring Boot como reto literalura en mis estudios en Alura Latam.<br><br>

<h1> Pruébalo: </h1> https://literalura-production.up.railway.app/ <h2> Busca un libro y agrégalo a la base de datos, entra a listar libros registrados y ahí estará. </h2>

La demo corre en un contenedor que expone la consola directamente en el navegador como si estuvieras en tu propia terminal. Usa una base de datos en memoria (H2) precargada con una muestra de libros. Los datos se reinician automáticamente en cada nueva sesión.

<br><br>

<h2>Funciones:</h2>

-Buscar un libro en Project Gutenberg ebook, seleccionar uno de la lista de resultados y agregarlo a tu base de datos

-Listar tus libros registrados

-Listar tus autores registrados

-Ingresar un año para saber qué autores estaban vivos en ese año

-Buscar dentro de la base de datos libros en un idioma determinado

<br><br>

<h2>El programa incluye:</h2>
  
-Validaciones con sus respectivos mensajes en todas entradas del usuario para evitar caracteres no válidos y entradas vacías

-Normalización de las entradas para aceptar palabras con o sin acento, mayúsculas o minúsculas, "n" o "ñ"

-Aceptar el idioma buscado por su nombre en español, convirtiéndolo a su código de idioma para su búsqueda en la base de datos

-Conversión de código de idioma a nombre en español para listar los libros

-Mapeo para otros idiomas que no están incluído en los que maneja Java, ej.: latín

-Normalización de los nombres de los autores para mostrar el nombre primero y después el apellido, ya que la respuesta de la api es primero apellido, luego nombre

-Codificación de los caracteres especiales para evitar errores en la búsqueda que se envía a la API en el caso de que el usuario los use

-Opciones para seguir buscando otro libro, otro año u otro idioma, guardar otro libro y en cada sección opción para regresar al menú anterior y luego al principal

-Si los resultados de búsqueda son más de 32, se muestran los primeros 32 y se ofrece al usuario la opción de refinar los resultados agregando palabras a la búsqueda

-Validación para no guardar un libro duplicado

-Si se guarda otro libro de un autor guardado,  no se duplica el autor, se relaciona el nuevo libro con el autor guardado

<br><br>

<h2>Bienvenida</h2>
<img width="1366" height="768" alt="Bienvenida" src="https://github.com/user-attachments/assets/450cf7ee-0ee3-4b13-a3fd-0b8ec9c88989" /> <br> <br>

<h2>Entradas no válidas</h2>
<img width="1366" height="768" alt="Entradas no válidas" src="https://github.com/user-attachments/assets/6a165333-94ac-43cd-9068-124f432c88c1" /> <br> <br>

<h2>No encontrado, manejo de caracteres especiales y más de 32 resultados</h2>

<img width="1366" height="768" alt="No encontrado, manejo de caracteres especiales y más de 32 resultado" src="https://github.com/user-attachments/assets/19c0115e-af0b-47b4-a50a-7153c67054d8" /> <br> <br>

<h2>Guardando un libro duplicado</h2>
<img width="1366" height="556" alt="Guardando un libro duplicado" src="https://github.com/user-attachments/assets/ffc21839-2c1d-4cfa-8d22-bfc939454ddd" /> <br> <br>

<h2>Lista de libros registrados</h2>
<img width="1366" height="768" alt="Lista de libros registrados" src="https://github.com/user-attachments/assets/eadb8c02-5477-4e96-9e09-2fe358977bc6" /> <br> <br>

<h2>Lista de autores registrados</h2>
<img width="1366" height="768" alt="Lista de autores registrados" src="https://github.com/user-attachments/assets/99b52b40-9de1-4a7e-b813-9f1ab4498391" /> <br> <br>

<h2>Listar autores vivos en cierto año</h2>
<img width="1366" height="768" alt="Listar autores vivos en cierto año" src="https://github.com/user-attachments/assets/413d9e00-e028-4127-9044-c562b0052205" /> <br> <br>

<h2>Buscar libros por idioma</h2>
<img width="1366" height="768" alt="Buscar libros por idioma" src="https://github.com/user-attachments/assets/a899a3b4-2b3d-434b-a23b-a46e1cd43be0" /> <br> <br>

<h2>Salida</h2>
<img width="1366" height="768" alt="Salida" src="https://github.com/user-attachments/assets/b43c488e-e9f9-4c3c-af87-80b36ba57493" /> <br> <br>


## 🛠️ Tecnologías utilizadas

-Java 17

-Spring Boot 3.5.0

-Spring Data JPA / Hibernate

-PostgreSQL (ambiente de desarrollo)

-H2 Database (ambiente de demo, en memoria)

-Maven

-Docker

-ttyd — expone la consola interactiva vía navegador para la demo pública

---

<br><br>

## 📦 Cómo correrlo localmente con datos de muestra (perfil demo, sin necesidad de PostgreSQL)

### Necesitas:
- JDK 17 o superior
- Maven (o usa el wrapper incluido `./mvnw`)


## Pasos

```bash
git clone https://github.com/Chicuno/literalura.git
cd literalura
./mvnw clean package -DskipTests
java -jar target/literalura-0.0.1-SNAPSHOT.jar --spring.profiles.active=demo
```
### Nota: funciona en CMD o Power Shell sin emojis ni colores. Git Bash representa colores pero no emojis. Para una representación completa como la desplegada, puedes correrlo en IntelliJ.

<br><br>

## 🐘 Correr con base de datos PostgreSQL (perfil por defecto)

Configura las siguientes variables de entorno antes de ejecutar:

```bash
export DB_HOST=localhost
export DB_PORT=5432
export DB_USERNAME=tu_usuario
export DB_PASSWORD=tu_password
```

- PostgreSQL corriendo localmente

```bash
java -jar target/literalura-0.0.1-SNAPSHOT.jar
```

<br><br>

## 🐳 Correr con Docker

El proyecto incluye un `Dockerfile` multi-stage que compila la app y la expone como una terminal interactiva vía navegador (usando `ttyd`) para desplegar la demo pública.

```bash
docker build -t literalura-demo .
docker run -p 7681:7681 literalura-demo
```

Abre `http://localhost:7681` en tu navegador para interactuar con la app.

<br><br>

## 🗂️ Estructura del proyecto

```
literalura/
├── src/
│   └── main/
│       ├── java/com/fernandez/literalura/
│       │   ├── modelos/       # Entidades JPA (Libro, Autor)
│       │   ├── servicio/  # Repositorios Spring Data JPA y consultas a la API
│       │   └── principal/     # Lógica de menú e interacción por consola
│       └── resources/
│           ├── application.properties         # Configuración por defecto (PostgreSQL)
│           ├── application-demo.properties     # Configuración de demo (H2 en memoria)
│           └── data.sql                        # Datos de muestra para el perfil demo
├── Dockerfile
├── entrypoint.sh
└── pom.xml
```


## 📄 Licencia

Este proyecto es de uso educativo, desarrollado como parte del programa Oracle Next Education.


