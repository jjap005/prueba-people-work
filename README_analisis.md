# prueba-people-work
La prueba es sencilla, lo primero que me hizo pensar fue, si hacer la aplicación todo junto o separarlas correctamente como si fuera abordar un proyecto mediano/grande

tome en cuenta que la función para crear un palindromo es fácil, la inclui en un servicio por varias razones
1.- No queria llenar el controlador de funciones ajenas a lo que corresponde
2.- Tal vez en un futuro (imaginando /suponiendo casos), esa función/validaciones/acciones, se puede utilizar en otro sector del codigo, creando campañas, productos en especificos, enviados email con promociones o codigos (en fin N cantidad de posibles aplicaciones)
3.- Lo ideal es que un paquete de funciones que son independientes o pueden funcionar desacopladas se creen en una libreria o service

otro detalle que he tomado en cuenta puede ser la seguridad de la información o que se lo mas inmutbale o configurable posible (dependiendo el caso que aplique), me explico mejor: Cree un archivo settings.yml, donde puedo consultar la información que puede ser sensible, o configurable esos detalles de negocio que no corresponden al programdor sino al personal de marketing o aquellos que estan en la planeacion del proyecto de cara al cliente.


El render (el json de los productos) lo construyo desde un Serializer, lo cual me ayuda a despejar el controlador del codigo que no le corresponde, y me permite poder llevar esa sección de codigo a otros lados si se llegase a necesitar.

Para el momento actual, aun no culmino la parte de front, pero ya la incluyo. 

Me hace falta añadir las TDD's pero lo hago despues de culminar el front.
