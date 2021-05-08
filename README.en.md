# OpenWRT-Simple-LED-PowerOff
Simple script to switch off the power and status LEDs in a OpenWRT router using crons.

1 - Copy the [.sh file](https://github.com/helicida/OpenWRT-Simple-LED-PowerOff/blob/main/apagarLEDs.sh) in the /usr/local folder. Remember to use LF encoding to avoid any problems with UNIX reading the file. You can connect to the router using any client as WinSCP:

![imagen](https://user-images.githubusercontent.com/13574613/117520532-ed90fa00-afa8-11eb-8e22-36f82f5e9338.png)

2 - Give permissions to OpenWRT to execute the script:

    chmod +x usr/local/apagarLEDs.sh

3 - You'll need to enable the Scheduled Task (and to activate them on every reboot)
    /etc/init.d/cron start
    /etc/init.d/cron enable
  
4 - You can execute anytime manually the script just using ./apagarLEDs.sh
5 - On the Scheduled Task tab on LUCI (OpenWRT user interface) copy the following lines:

![imagen](https://user-images.githubusercontent.com/13574613/117520578-25983d00-afa9-11eb-9e51-1d96b9ea6478.png)

# Turn on the LEDs at 7:30
30 7 * * * /etc/init.d/led start

# Switch off the LEDs at 21:00
00 21 * * * /usr/local/apagarLEDs.sh


# Rembember the router has his own system time...
The crons will work based on it, you can check it out on "Status"

![imagen](https://user-images.githubusercontent.com/13574613/117520633-61330700-afa9-11eb-8c5d-f240b291301b.png)
