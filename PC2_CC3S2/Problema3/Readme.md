# Problema 3

Mostramos las versiones con las cuales estamos trabajando

![](https://github.com/Kinartb/CC3S2/blob/main/PC2_CC3S2/Imagenes/pc0.png)

Sin embargo en el entorno local del trabajo estamos usando ```ruby 3.0.2p107 (2021-07-07 revision 0db68f0233) [x86_64-linux]```. Posteriormente ejecutamos ```rails new rottenpotatoes --skip-test-unit --skip-turbolinks --skip-spring``` para crear el campo de trabajo.


![](https://github.com/Kinartb/CC3S2/blob/main/PC2_CC3S2/Imagenes/pc1.png)


¿Qué pasa con ese mensaje run bundle install?

Es el comando que se utiliza para instalar todas las gemas necesarias para el proyecto Ruby on Rails, este se crea o corre automaticamente al ejecutar ```rails new rottenpotatoes --skip-test-unit --skip-turbolinks --skip-spring```. Por el contrario para un trabajo nativo normalmente se suele crear un documento ```Gemfile``` e introducir de manera manual las gemas a utilizar, cuando se utiliza el comando anterior este se crea por si mismo.

cambiamos el Gemfile para trabajar con la version de sql especificada

![](https://github.com/Kinartb/CC3S2/blob/main/PC2_CC3S2/Imagenes/pc2.png)

Vemos como se realiza el cambio en las gemas al ejecutar ```bundle install```

![](https://github.com/Kinartb/CC3S2/blob/main/PC2_CC3S2/Imagenes/pc3.png)
