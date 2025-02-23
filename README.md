# Base de Datos - Anima Beyond Fantasy

Este repositorio contiene la estructura y datos iniciales de la base de datos para el proyecto de Anima Beyond Fantasy.

## Requisitos Previos

Antes de comenzar, asegúrate de tener instalados los siguientes programas:

- [MySQL Server](https://dev.mysql.com/downloads/mysql/)
- [Git](https://git-scm.com/downloads)

Opcionalmente, puedes instalar [MySQL Workbench](https://dev.mysql.com/downloads/workbench/) para gestionar la base de datos visualmente.

## Instalación

### 1. Clonar el Repositorio

Abre una terminal y ejecuta el siguiente comando:

```bash
git clone https://github.com/Tales22/role-engine-bd.git
```

Luego, accede a la carpeta del proyecto:

```bash
cd role-engine-bd
```

### 2. Importar la Base de Datos

#### Opción 1: Usando MySQL desde la Terminal

1. Abre una terminal y accede a MySQL:
   ```bash
   mysql -u root -p
   ```
2. Crea la base de datos (si aún no existe):
   ```sql
   CREATE DATABASE role_engine_db;
   ```
3. Sal del cliente de MySQL escribiendo `exit`.
4. Importa el archivo de respaldo:
   ```bash
   mysql -u root -p role_engine_db < backup.sql
   ```

#### Opción 2: Usando MySQL Workbench

1. Abre **MySQL Workbench** y conéctate a tu servidor local.
2. Ve a **Server > Data Import**.
3. Selecciona la opción **Import from Self-Contained File** y elige `backup.sql`.
4. Asegúrate de seleccionar **anima\_db** como base de datos destino.
5. Haz clic en **Start Import**.

## Verificación

Para comprobar que la base de datos se importó correctamente, ejecuta:

```bash
mysql -u root -p -e "USE role_engine_db; SHOW TABLES;"
```

Si ves la lista de tablas, ¡todo está listo! 🎉

## Contribuir

Si necesitas modificar la base de datos, puedes hacer cambios y luego generar un nuevo backup con:

```bash
mysqldump -u root -p anima_db > backup.sql
```

Después, sube los cambios al repositorio con Git.

## Contacto

Si tienes dudas o problemas, abre un **issue** en el repositorio o contacta a los desarrolladores.

