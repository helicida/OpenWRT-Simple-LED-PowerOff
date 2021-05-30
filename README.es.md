# OpenWRT-Simple-LED-PowerOff
Script sencillo para apagar los LEDs de encendido y de estado en un router OpenWRT utilizando crons.

1 - Copia el [fichero .sh](https://github.com/helicida/OpenWRT-Simple-LED-PowerOff/blob/main/apagarLEDs.sh) en /usr/local folder. Recuerda usar el formato/encoding LF para evitar tener problemas a la hora de leer el fichero desde un entorno UNIX. Te puedes conectar al router usando cualquier cliente, por ejemplo WinSCP.

![imagen](https://user-images.githubusercontent.com/13574613/117520532-ed90fa00-afa8-11eb-8e22-36f82f5e9338.png)

2 - Concede los permisos a OpenWRT para poder ejecutar el script:

    chmod +x /usr/local/apagarLEDs.sh

3 - Tendrás que activar las Scheduled Task (y configurar que se arranquen automáticamente tras reiniciar el router). Ejecuta los siguientes comandos:
    
    /etc/init.d/cron start
    /etc/init.d/cron enable
  
4 - Puedes ejecutar manualmente el script siempre que quieras, simplemente usando ./apagarLEDs.sh
5 - En la pestaña de las Scheduled Task tab en LUCI (la interfaz de usuario de OpenWRT) copia las siguientes líneas:

![imagen](https://user-images.githubusercontent.com/13574613/117520578-25983d00-afa9-11eb-9e51-1d96b9ea6478.png)

# Enciende los LEDs a las 7:30h
30 7 * * * /etc/init.d/led start

# Apaga los LEDS a las 21:00h
00 21 * * * /usr/local/apagarLEDs.sh


# Recuerda que el router tiene su hora interna de sistema...
Y los crons funcionarán en base a ella, puedes comprbarla siempre desde la pestaña de "Status"

![imagen](https://user-images.githubusercontent.com/13574613/117520633-61330700-afa9-11eb-8c5d-f240b291301b.png)
