# Problema 3

Mostramos las versiones con las cuales estamos trabajando

![](https://github.com/Kinartb/CC3S2/blob/main/PC2_CC3S2/Imagenes/pc0.png)

Sin embargo en el entorno local del trabajo estamos usando ```ruby 3.0.2p107 (2021-07-07 revision 0db68f0233) [x86_64-linux]```. Posteriormente ejecutamos ```rails new rottenpotatoes --skip-test-unit --skip-turbolinks --skip-spring``` para crear el campo de trabajo.


![](https://github.com/Kinartb/CC3S2/blob/main/PC2_CC3S2/Imagenes/pc1.png)


¿Qué pasa con ese mensaje run bundle install?

Es el comando que se utiliza para instalar todas las gemas necesarias para el proyecto Ruby on Rails, este se crea o corre automaticamente al ejecutar ```rails new rottenpotatoes --skip-test-unit --skip-turbolinks --skip-spring```. Por el contrario para un trabajo nativo normalmente se suele crear un documento ```Gemfile``` e introducir de manera manual las gemas a utilizar, cuando se utiliza el comando anterior este se crea por si mismo.

cambiamos el Gemfile para trabajar con la version de sql especificada en este caso 1.3.13 por consulta del proyecto de trabajo.

![](https://github.com/Kinartb/CC3S2/blob/main/PC2_CC3S2/Imagenes/pc2.png)

Vemos como se realiza el cambio en las gemas al ejecutar ```bundle install```. Se realiza las especificaciones sin embargo presenta un error al momento de ejecutar el comando ```rails server```.

![](https://github.com/Kinartb/CC3S2/blob/main/PC2_CC3S2/Imagenes/pc3.png)

Por lo que se elegio la version de 1.4 de sql para trabajar ya que con este no mandaba error, vemos que al ejecutar ```rail server``` aparece que hemos inicializado una pagina web local en estado de espera que se encuentra(para este caso en particular) en la ruta ```http://127.0.0.1:3000```.

![](https://github.com/Kinartb/CC3S2/blob/main/PC2_CC3S2/Imagenes/pc5.png)

Al escribir dicha ruta (URL) en el navegador nos aparece la pagina de inicio de Ruby on Rails por defecto. 

![](https://github.com/Kinartb/CC3S2/blob/main/PC2_CC3S2/Imagenes/pc6.png)

Al entrar a dicha pagina local vemos que nuestra output de la consola ha cambiado, esto quiere decir que ya se recibio una respuesta por parte del cliente (yo) al entrar a esta pagina, vemos que tiene como mensaje la instruccion 200 que hace referencia al codigoHTTP 200 OK el cual indica que la solicitud ha tenido éxito.

![](https://github.com/Kinartb/CC3S2/blob/main/PC2_CC3S2/Imagenes/pc7.png)

![](https://github.com/Kinartb/CC3S2/blob/main/PC2_CC3S2/Imagenes/pc8.png)




