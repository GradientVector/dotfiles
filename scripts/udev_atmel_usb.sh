#!/usr/bin/env bash
rulesfile=/etc/udev/rules.d/41-atmel_usb.rules
echo "# File /etc/udev/rules.d/42-atmel_usb.rules for Ubuntu 12.04"                                   > $rulesfile
echo "# Atmel AVR ISP mkII"                                                                           >> $rulesfile
echo 'SUBSYSTEM=="usb", ATTR{idVendor}=="03eb", ATTR{idProduct}=="2104", GROUP="plugdev", MODE="0660"' >> $rulesfile
echo "# Atmel AVR JTAG ICE mkII"                                                                    >> $rulesfile
echo 'SUBSYSTEM=="usb", ATTR{idVendor}=="03eb", ATTR{idProduct}=="2103", GROUP="plugdev", MODE="0660"' >> $rulesfile
echo "# Atmel AVR DRAGON"                                                                           >> $rulesfile
echo 'SUBSYSTEM=="usb", ATTR{idVendor}=="03eb", ATTR{idProduct}=="2107", GROUP="plugdev", MODE="0660"' >> $rulesfile
echo "# USBtinyISP"                                                                                 >> $rulesfile
echo 'SUBSYSTEM=="usb", ATTR{idVendor}=="1781", ATTR{idProduct}=="0c9f", GROUP="plugdev", MODE="0660"' >> $rulesfile
/sbin/udevadm control --reload-rules
