# Fase III
# Proyecto

## Descripción
Sistema de inventario para el área de almacén de un hospital que guarde los datos en archivos .txt
+Cuenta con las siguientes funcionalidades:
* Añadir medicamentos: Nombre, caducidad, gramaje, ubicación, cantidad.
* Eliminar medicamentos: Desplegar lista y seleccionar para eliminar.
* Actualizar cantidad: Seleccionar de la lista un medicamento y actualizar la cantidad de stock disponible. 
* Informes: Visualizar toda la información de todos los medicamentos disponibles.
* Iniciar sesión: Un login para ingresar al sistema. 
* Reigstrar nuevo usuario: Se solicitará la clave de administrador (1234), formulario de registro y después podrá ser guardado.
El sistema tiene como fin mitigar las problemáticas de almacén con la solución más limpia y portable posible. Haciendo posible manejar sus datos de forma fácil y sencilla.
## Problema
El sistema actual de inventario está completamente obsoleto y su mayor error es que produce inconsistencias en los registros de inventario. Esto produce errores en la cantidad de medicamentos registrados por unidad, haciendo imposible una correcta y optima gestión del almacén que provoca a veces falta de stock, exceso de stock debido a compras innecesarias y medicamentos vencidos.

## Solución
Después de analizar la situación, se implementará un sistema lo más sencillo de utilizar posible (tomando en cuenta las necesidades y carácterísticas del personal), que pueda solventar una gestión de inventario sin problemas, siendo estable y segura. El problema más grande del sistema actual es que cambia los parámetros del medicamento, así que el principal objetivo será solucionar ese apartado implementando un nuevo sistema desde cero, además haciendo la interfaz más simple y funcional posible para que sea más fácil para el personal del almácen. Se realizará en el lenguaje Java, con la IDE eclipse con .jsp y con apache tomcat. 
Las cifras deberán ser siempre exactas y la eliminación de medicamento deberá borrar el medicamento del registro, la actualización deberá borrar o sumar cantidades exactas y los informes deberán verse en tiempo real después de realizar cualquier acción reflejando el resultado correcto de estos. 

Mitigación
![](https://github.com/Danger19/Faselll/blob/develop/Captura%20de%20pantalla%202024-04-18%20122849.png)
## Arquitectura
 Java: java version "11.0.21"
IDE – eclipse 2023
Archivo - .jsp
Servidor Apache-tomcat- 8.5.95

![](https://github.com/Danger19/Faselll/blob/develop/Captura%20de%20pantalla%202024-04-15%20175044.png)
 ## Tabla de Contenidos
 - [Requerimientos](https://github.com/Danger19/Faselll?tab=readme-ov-file#requerimientos)
 - [Instalación](https://github.com/Danger19/Faselll?tab=readme-ov-file#instalaci%C3%B3n)
 - [Configuración](https://github.com/Danger19/Faselll?tab=readme-ov-file#instalaci%C3%B3n)
 - [Uso](https://github.com/Danger19/Faselll/blob/develop/README.md#uso)
 - [Contribución](https://github.com/Danger19/Faselll/blob/develop/README.md#contribuci%C3%B3n)
 - [Roadmap](https://github.com/Danger19/Faselll/blob/develop/README.md#roadmap)
 ## Requerimientos
 * IDE: Eclipse 2023
 * Java: 11.0.21
 * Archivo: .jsp
 * Servidor: Apache tomcat 8.5.95
 * Repositorio
 * Las librerias ya están incluidas basta con copiar el código

 ## Instalación
* Descargar e instalar Java 11.0.21 o superior del siguiente link: https://www.java.com/es/
* Descargar e instalar Eclipse del siguiente link: https://eclipseide.org/
* Descargar e instalar Apache tomcat del siguiente link: https://tomcat.apache.org/download-80.cgi
  ## Ejecutar prueba (Continuación de instalación)
  * Descarga el repositorio, puedes descargar la carpeta completa o crear tu propio proyecto copiar los archivos .jsp por si quieres tener otra organización.
  * Abre Eclipse
  * Importa el proyecto o crealo copiando los .jsp
  * Da clic en Window en la barra superior, luego clic en show view, luego clic en other y por último busca server, despliega la carpeta y da clic en servers.
  * Esto te abrirá esa ventana en la barra de abajo, da clic en servers
  * Da clic derecho, da clic en new y da clic en server
  * Abrirá un explorador, busca apache y da clic para desplegar los servidores
  * Busca Tomcat v8.5 Server (Si descargaste otra versión seleccionala)
  * Da clic, añade el proyecto y da clic en Finish
  * Por último dirigete al proyecto en el package explorer y da clic derecho
  * Se desplegará una lista de acciones, da clic en Run as y clic en Run on server
  * Selecciona el servidor apache-tomcat-8.5.95 at localhost y da clic en finish
  * Esto correra el servidor y dará abrira una pestaña en tu navegador corriendo el programa

 ## Configuración
 Para este programa no se requiere una configuración previa, basta con la instalación y la importación del repositorio a su ide y seguir los pasos de las pruebas de ejecución de arriba.

  ## Uso
  Programa iniciado en su navegador
   ### Dar de alta nuevo usuario: 
   + Una vez visualizando la primera pantalla de clic en el botón "Dar de alta nuevo usuario".
   + Se abrirá una pantalla pidiendo su clave de autorización. Esta clave esta predefinida como "1234", usted puede cambiarla desde el código a la que prefiera. Una vez ingresada de clic en inciar.
   + Se abrirá un formulario, llenelo y de clic en registrarse. (Si es menor de 18 años no se le permitirá el registro).
   + Se abrirá una pantalla indicando el éxito de su registro y podrá dar clic en inicar sesión que lo llevará a la primera pantalla.
  ### Iniciar sesión
  + En la primera pantalla de clic en iniciar sesión.
  + Se abrirá una pantalla con un formulario, llenelo con los parámetros que definio al registrarse y de clic en el botón inciar sesión.
  + Se abrirá un interfaz con las cuatro funcionalidades.
  ### Añadir medicmanto
  + En la pantalla interfaz, de clic en el botón "Añadir medicamento".
  + Se abrirá una pantalla con un formulario, llenelo ingresando el nombre, caducidad, gramaje, ubicación y cantidad.
  + Una vez llenado de clic en el botón "Añadir".
  + Se abrirá una pantalla indicando el éxito de la adición.
  + De clic en el botón "Volver a la página principal".
  ### Eliminar medicamento
  + En la pantalla interfaz, de clic en el botón "Elminar medicamento".
  + Se abrirá una pantalla con una lista despleagable, de clic y busque el medicamento deseado.
  + Una vez encontrado de clic y luego de clic en el botón rojo "Eiminar Registro".
  + Se abrirá una pantalla indicando el éxito de la eliminación, de clic en el botón "Volver a la página principal".
  ### Actualizar existencias
  + En la pantalla interfaz, de clic en el botón "Actualizar existencias".
  + Se abrirá una pantalla con una lista desplegable, de clic en ella y busque el medicamento deseado.
  + Una vez encontrado de clic en el.
  + Después en el formulario "Nueva cantidad" ingree la nueva cantidad del producto.
  + De clic en el botón "Actualizar cantidad".
  + Se abrirá una pantalla indicando el éxito de la actualización, de clic en el botón "Volver a la página principal".
  ### Generar informes
  + En la pantalla interfaz, de clic en el botón "Generar informes".
  + Se abrirá una pantalla con una tabla indicando todos los medicamentos registrados con su nombre, caducidad, gramaje, ubicación y cantidad disponible.
  + De clic en el botón "Volver a la página principal".
    
  ## Contribución
   ### Clonar repositorio
   * Vizualizando el repositorio da clic en Fork para crear una copia del repositorio en tu cuenta.
   * Clona el repositorio, si usas GitBash copia el URL y usa el siguiente código: git clone <URL del repositorio>.
   ### Crear Branch
   * Una vez hecho, verifica situarte en el main que es la rama principal.
   * Y crea una nueva branch para los cambios que hagas, el nombre debe llevar la función que implementarás.
   ### Commit
   * Realiza las implementaciones y cambios que desees
   * Puedes verificar el status con "git status"
   * Agrega tus modificaciones y antes de hacer el commit coloca una descripción de los cambios o funciiones que añadiste.
   * Da clic en commit.
   ### Pull request
   * Una vez hecho el commit, dentro de GitHub y tu repositorio clonado con los cambios hechos da clic en Compare & pull request
   * En el formulario copia la descripción que hiciste de tus cambios anteriormente y da clic en Create pull request.
   ### Marge
   * Una vez hecho esto espera a que revise los cambios que has hecho
   * Si cumplen con el objetivo del proyecto y todo está en orden te haré marge y tus cambios se verán reflejados en el proyecto principal.
     
  ## Roadmap
   * Alerta que notifique que quedan menos de 5 unidades de un medicamento.
   * Alerta que notifique que un medicamento está por caducar.
   * Historial de cambios realizados en la actualización, adición o eliminación de medicamentos.
   * Adición en serie de medicamentos.
   * Eliminación en serie de medicamentos.
   * Actualización en serie de medicamentos.
   * Barra buscadora de medciamentos.
   * En caso de que se escale a otra área implementar un sistema de base de datos, de momento no es necesaria.
