#  09_02_ASSI_function_procedure_cursor_trigger

## Requerimientos

+ Docker

+ Git

## Instalación 

Clonar el repositorio remoto utilizando una herramienta de control de versiones como Git. Para ello, se debe ejecutar el siguiente comando en la línea de comandos:
~~~
git clone https://github.com/jtur17/09_02_ASSI_function_procedure_cursor_trigger.git
~~~

Despues tendrás que hacer un docker compose up y ya estaría todo para poder utilizarlo sin problema.

## Estructura del proyecto

~~~
09_02_ASSI_function_procedure_cursor_trigger

├── db/
|
│   └── 01_create_tables.sql
|
│   └── 02_fill_tables.sql
|
├── src/
|
│   └── cursor.sql
|
│   └── function.sql
|
│   └── procedure.sql
|
│   └── trigger.sql
|
├── docker-compose.yaml
|
└── README.md

~~~

# Base de datos

Los archivos SQL se encuentran dentro de la carpeta.


1. `01_create_tables.sql` Creación de las tablas de la base de datos.

2. `02_fill_tables.sql` Esté script sirve para crear los objetos para la tabla.

# SRC 

En esta carpeta podemos ver los siguientes documentos:

1. `cursor.sql` Lo que hace esté cursor es que te lista todos los objetos que hay dentro de la tabla de libros y te lo saca por pantalla de manera que te saca el titulo del libro y el autor en una misma linea.

2. `function.sql` Lo que hace está funcion es contar todos los libros que hay en la base de datos.

3. `procedure.sql` Lo que hace es añadir un libro, lo unico que tienes que hacer es pasarle por parametros los atributos del libro, osea el titulo del libro y el autor.

4. `trigger.sql` Este codigo sacará un error cuando intentes crear un libro en el que ya haya otro libro con el mismo titulo.