#!/system/bin/sh
#Script Post Instalacion por Super@tmel
# Script 12

#Control de SupSetup
if [ -e /data/supsetup/sup.config ];
then
    #busybox mount -o remount,rw /system
    echo "+++ Restaurando el backup del SupSetup";
        busybox cp -a /data/supsetup/sup.config /system/bin;
	busybox rm -f /data/supsetup/sup.config;
else
    echo "+++ No existe backup de SupSetup"
    #busybox mount -o remount,ro /system;
fi;

# SetCPU Clocking
#
echo 245760 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq;
echo 600000 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq;
echo 50 > /proc/sys/vm/swappiness;

echo "+++ Ejecutando primera limpieza"
busybox rm -f -r /data/data/com.google.android.server.checkin;
busybox rm -f /data/app/com.SupSetupv16.apk;
busybox rm -f /data/app/com.SupSetupv16-1.apk;
busybox rm -f /data/app/com.SupSetupv16-2.apk;
busybox rm -f /system/sd/app/com.SupSetupv16.apk;
busybox rm -f /system/sd/app/com.SupSetupv16-1.apk;
busybox rm -f /system/sd/app/com.SupSetupv16-2.apk;

sleep 1

echo "Instalando aplicaciones"
 for i in /data/*.apk ; do 
	install -c -D $i /data/app;
echo "+++ Ejectuando limpieza"
	busybox rm /$i;
 done;
sleep 2

busybox chmod 0644 /data/app/com.SupSetupv16-1.apk;
busybox chown system.system /data/app/com.SupSetupv16-1.apk;

echo "+++ Acabando"
if [ -e /data/firstboot.sh ];
    then
busybox rm -f /data/firstboot.sh;
fi;
