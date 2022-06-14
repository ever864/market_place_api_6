# Market Place Api
La aplicacion construida es una market place, donde se pueden comprar y vender productos entre los usuarios registrados a la aplicación.

Esta API RESTful esta compuesta por 5 modelos, los usuarios que pueden autenticarse mediante su propio email y password, para la seguridad del password se implementó JSON Web Tokens (JWT). Lo cual, un usuario pueden crear su propia lista de productos para mostrar tambien a otros usuarios y el producto a crear tiene un titulo, precio, y si será publicado o no, aplicando un boleano a esta columna. Tambien, para poder comprar se necesita un modelo llamado ordenes, donde ahi se va a guardar el precio final o total de los productos, que estaria vinculado con en modelo de los productos. Por último, tendrá un modelo llamado placement que unirá ordenes y productos, ya que son mucho a muchos entre ambos, que se guardaria ahi la cantidad por cada producto. 

# Tecnologias
- Ruby -v "2.7.0" 
- Ruby On Rails -v "6.1.4"
- Sqlite3
- Bcrypt
- JWT
- Faker
- Fast_jsonapi
- Kaminari
- Rack-Cors

# Como instalar y correr la aplicación 
1. Tienes que configurar la versión de ruby a 2.7.0, utilizando un manejador de versiones como rvm o rbenv. Luego, instalar la version de rails "6.1.4".
2. Luego tienes que clonar el repositorio y luego dentro de la aplicación, poner en la terminal `bundle install` para instalar las gemas.
3. Se tiene que correr las migraciones para que se cree la base de datos con el siguiente comando en la terminal `rails db:migrate`
4. Para hacer funcionar la aplicación tienes que usar el comando `rails server`
5. Por último para visualizar la construccion de la api, se puede usar la aplicacion Postman.

# Funcionalidades de las rutas en la aplicación
1. Con esta url (`http://localhost:3000/api/v1/products`) y el metodo `GET`, puedes visualizar todos los productos disponibles de todos los usuarios
2. Con esta url (`http://localhost:3000/api/v1/users`) y el metodo `POST` y poner alguna credenciale en (email y password) puedes crear un usuario en la aplicación.
3. Con esta url (`http://localhost:3000/api/v1/tokens`) y el metodo `POST` y ponder las credenciales usadas en el punto 2, puedes obtener tu token para usar la aplicacion.
