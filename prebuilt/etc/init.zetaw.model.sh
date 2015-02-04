#!/system/bin/sh

model=`getprop ro.product.model`

mount -o remount,rw /system
rm /system/usr/keylayout/Generic.kl

if [ "$model" = "LG-D610" ] || [ "$model" = "LG-D610" ]; then
	ln -s /system/usr/keylayout/Generic-D610.kl /system/usr/keylayout/Generic.kl
else
	ln -s /system/usr/keylayout/Generic-D610.kl /system/usr/keylayout/Generic.kl
fi

if [ "$model" = "LG-D610" ] || [ "$model" = "LG-D610" ] || [ "$model" = "LG-D610" ]; then
	chmod 000 /system/etc/permissions/android.hardware.nfc.xml
	chmod 000 /system/etc/permissions/android.hardware.nfc.hce.xml
	chmod 000 /system/lib/hw/nfc_nci.g2m.so
	find /system/app/NfcNci -type f -exec chmod 000 {} \;
fi

if [ "$model" = "LG-D610" ]; then
	chmod 000 /system/bin/fm_qsoc_patches
	chmod 000 /system/etc/permissions/qcom.fmradio.xml
	find /system/app/FM2 -type f -exec chmod 000 {} \;
fi

mount -o remount,ro /system
