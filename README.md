# OpenWRT-LED-PowerOff
Simple script to switch off the power and status LEDs in a OpenWRT router using crons.

1 - Copy the .sh file in the /usr/local folder. Remember to use LF encoding to avoid any problems with UNIX reading the file.
2 - Give permissions to OpenWRT to execute the script:
  chmod +x usr/local/apagarLEDs.sh
3 - You'll need to enable the Scheduled Task (and to activate them on every reboot)
  /etc/init.d/cron start
  /etc/init.d/cron enable
  
4 - You can execute anytime manually the script just using ./apagarLEDs.sh
5 - On the Scheduled Task tab on LUCI (OpenWRT user interface) copy the following lines:

# Turn on the LEDs at 7:30
30 7 * * * /etc/init.d/led start

# Switch off the LEDs at 21:00
00 21 * * * /usr/local/apagarLEDs.sh
