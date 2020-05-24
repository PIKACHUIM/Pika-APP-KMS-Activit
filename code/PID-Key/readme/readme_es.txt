
                            PIDKey Portable от Ratiborus,
                                       MSFree Inc.

       		                        Descripción:
                          —————————————————————————————————
Este programa fue hecho para ver, actualizar y guardar información acerca de las keys de
productos Microsoft en un archivo de registro. 
En muchos casos, te permite reemplazar a VAMT.

       		                      Uso del programa:
                          —————————————————————————————————
Ejecute PIDKey.exe, seleccione la configuración deseada, inserte la llave en el campo de
entrada a continuación, haga clic en ¡IR! Puede insertar una o más claves por copiarlas 
en el portapapeles y haciendo clic con el ratón en el campo para introducir la clave. 
La identificación de la configuración de teclas se comprueba con todas las 
configuraciones, empezando por el principio de la lista hasta se recuperan los datos 
correctos. 
El programa tiene varias configuraciones integradas, pero también puede crear 
su configuración personalizada. Si usted pone su fichero de configuración en la carpeta 
del programa, el archivo se guardará en una ruta relativa y el programa puede trabajar 
con ella desde cualquier ubicación de la carpeta con el programa. 
Cuando se selecciona una configuración personalizada en un botón que se disponga para 
quitarla. Usted puede comprobar la clave desde un archivo. Puede utilizar cualquier 
archivo en formato de texto que contiene una clave mezclado con cualquier número de 
otras teclas para que se extraen correctamente. En la carpeta con la activación 
almacenado, se crea el archivo Activation_Restore.cmd. Con él, siempre podrá restaurar 
la activación sin ni siquiera tener que tener programa PIDKEY.

                          —————————————————————————————————
                                                                Ratiborus


Changelog:
v2.1.2 build 1015 
 -Fixed minor bugs.

v2.1.2 build 1014 
 -Small interface changes.

v2.1.2 build 1013 
 -Optimized some functions to accelerate the program.
 -Small interface changes.

v2.1.2 build 1010
 -Small changes to the interface.

v2.1.1 build 1006
-Key Groups beginning with "Server Cloud12" need to recheck, from the table. They will
 be transferred to the group "Server Cloud 2012" 
-Key Groups beginning with "Server Cloud2016" need to recheck, from the table. They will
 be transferred to the group "Server Cloud 2016"
-Key Groups "Not Found" need to recheck.

v2.1.1 build 1005
 -Small changes to the interface.
 -Changes in function prediction configuration.
 -Fixed minor bugs.

v2.1.1 build 1000
 -The program window has become smaller, 780x550. Changed font and button layout.
 -Key Groups beginning with "Server 12" need to recheck, from the table. They will
  be transferred to the group "Server 2012"
 -When checking the keys works prediction function, increasing the speed of work.
 -The program works on Windows XP, only the x86 version.
 -Added configuration to determine Windows 10 b14352 keys, definition  works only
  on Windows 7-10, on XP not working. New DLL pidgenx.dll does not support Windows XP.

v2.1.0 build 1001
 -Small changes to the interface.

v2.1.0 build 1000
-Small changes to the interface, added compatibility with Windоws 10 build 14352.

v2.0.9 build 1008
 -Optimized some functions to speed up the program.

v2.0.9 build 1006
 -Changes in the "Service Keys Database" function.

v2.0.9 build 1005
 -Optimized some functions to speed up the program.

v2.0.9 build 1004
 -Cuando una key está siendo identificada el programa muestra un parámetro llamado "Total keys"
 "Total keys" - es el número de keys relacionadas a un subtipo (ejemplo X18-32647, X20-32655, 
 [TH] X20-17626...) las cuales pueden ser emitidas sólo por M$.

v2.0.9 build 1003
-En Windows 10 el OSSP no identifica las keys correctamente.
-Arreglado: Mensaje diciendo que las keys de Office 15 no instaladas.

v2.0.9 build 1002
 -Algunas funciones optimizadas para hacer veloz el programa.
 -La configuración completa es almacenada en el archivo INI.
 -Ahora puedes crear cualquier número de configuraciones (cantidad de archivos pconfig.xrm-ms) 
  en esta versión, la lista crecerá dinámicamente según añadas nuevas configuraciones. Puedes 
  crear un lista de cualquier tamaño.
 -Cuando se ejecuta el programa, la base de datos de keys es descomprimida en la carpeta 
  C:\Windows\Temp
 -Puedes ejecutar múltiples instancias/copias del programa, pero mucho cuidado si ejecutas una 
  copia de la misma carpeta, la última instancia/copia del programa ejecutándose sobreescribe 
  las keys cuando se cierra!

PD: En el ensamble de prueba 1001 la base de keys es almacenada en la carpeta del programa, y
  si la longitud de la ruta a la base de datos excede los 259 caracteres, entonces la base de 
  datos entera no se muesta, las keys se pierden. En la build 1002 la base de datos de keys es 
  descomprimida otra vez, en C:\Windows\Temp.

v2.0.9 build 1000 
 -Optimized some functions to accelerate the program. 
 -Small interface changes.

v2.0.8 build 1002
 -Agregado "Remover todas las keys bloqueadas de la base de datos" (Alt + presionar el botón).
 
v2.0.8 build 1001
 -En Windows 10 Technical Preview el OSPP no es determinado apropiadamente, no se pueden
  insertar las keys de Office 14.

v2.0.8 build 1000
 -El programa ahora es multi-lenguaje, agregada la capacidad de cambiar el idioma de la
  interfaz.
 -Agregado el despliegue de Product.LicenseStatusReason en el status de licencia de productos, 
  si el parámetro no es igual a cero (error 0x4004F040).

v2.0.7 build 2120
 -Optimizada la función de entrada de keys desde el portapapeles.
 -Muestra la información completa acerca del KMS-Service cuando una key CSVLK 
  es instalada en el host o KMS Host para Office 14/15.
  
v2.0.7 build 2119
 -Corregido un bug en Windows 7, no se muestra el status de la licencia.
 
v2.0.7 build 2117
 -Arreglado un problema que tras cambiar ProductKeyChannel el producto no puede ser activado.
 -Arreglado un bug cuando se guarda la key en la base de datos.
 -Se incrementó la velocidad de ejecución del programa.
 
v2.0.7 build 2116
 -Arreglados algunos bugs menores.

v2.0.7 build 2114
 -Totalmente reescritas las funciones de introducir las keys y activación.
 -Mejorado el ordenamiento de keys. 
 -Agregada una interfaz para poner la key y activar. 
 -Agregada la habilidad de guardar y restaurar la activación. 
 -Ten cuidado, la restauración de la activación no siempre funciona. 
 -Agregado el botón "Activar por teléfono". 
 -Agregado el botón "Información de Licencia".

v2.0.7 build 2000 Final (Logré hacer todo lo que quería y tenía planeado. ;) )
 -Arreglados algunos bugs menores.
 -Cuando se agrega una key, un mensaje es mostrado si la key está bloqueada.
 -Se muestra el número de keys en grupo ListView.
 -Agregado en el menú de contexto "Mover las keys seleccionadas a bloqueadas".
 -La función de restauación de la Base de Datos de Keys ahorar funciona desde 
  cualquier carpeta.
 -Agregada la habilidad para borrar las keys seleccionadas.
 
v2.0.6.1
 -Corregido un bug el cual no copiaba apropiadamente las keys seleccionadas a un archivo de texto.
 
v2.0.6
 -Agregada la habilidad de ocultar keys por canal de licencia (CSVLK, GVLK, OEM, MAK, RETAIL).
 -Agregada la habilidad de guardar keys bloqueadas en un archivo de texto.
 -Agregado el parámetro "SaveBasePermanently=False/True" en В Settings.ini.
  False - la base de keys es guardada sólo cuando se sale del programa;
  True - la base de keys persiste después de agregar cada key.
  
v2.0.5
 -Si no hay conexión a Internet cuando se determna el Conteo de Activaciones 
 un error ocurría. Arreglado.
 -Agregada la habilidad de guardar y restaurar las keys.
 -Bugs menores arreglados.
 
v2.0.4
 -Arreglados algunos bugs. 
 -Agregados botones para Deshacer y Rehacer. 
 -Agregada la habilidad de proteger con contraseña la base de keys. 
 -Agregado una ayuda cuando pasas el mouse sobre una key. 
 -Base de keys almacenada en un archivo protegido por contraseña. Carpeta KEYS 
  no se necesita más. 
 -Cuando se proecesan keys con archivos *.key y *.cilx se agregan comentarios a la 
  base de datos. 
 -Arreglados algunos bugs cuando se ordena la lista en los campos.

v2.0.3
 -Cambios en la función de búsqueda de keys.
 -Cuando se procesan archivos .cilx los comentarios con copiados a la key.
 -Funciona ordenando keys.
 -Eliminados muchos errores. Pero ciertamente no todos. :)

v2.0.2
 -Cambios en la interfaz del programa. PID Checker windows combinded with base keys.

v2.0.1
 -Cambios en la interfaz del programa.
 
v1.0.5.1
 -Se aumentó la velocidad del programa.
 -Cambios en la interfaz del programa.
 
v1.0.4
 -Agregada la habilidad de ver y editar archivos con keys.
 
v1.0.3
 -Campo para introducir key, puedes introducir varias keys. Con texto adicional.
 -Agregado keys sorteadas.
 -Puedes agregar comentarios a las keys.
 -Búsqueda de la key, parte de la key y comentario.
 
v1.0.1
 -Cambios en la interfaz del programa.
 -Agregadas keys bloqueadas a la base de datos.


v1.0.0
 -Primera versión del programa.
