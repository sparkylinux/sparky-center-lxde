#!/bin/sh
#
#  This program is free software; you can redistribute it and/or
#  modify it under the terms of the GNU General Public License as
#  published by the Free Software Foundation; either version 2 of the
#  License, or (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software Foundation,
#  Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301, USA

if [ "$1" = "uninstall" ]; then
	rm -f /usr/bin/sparky-center
	rm -rf /usr/lib/sparkycenter/bin
	rm -f /usr/lib/sparkycenter/default/editor.desktop
	rm -f /usr/lib/sparkycenter/default/lxsession-default-apps.desktop
	rm -f /usr/lib/sparkycenter/default/window.desktop
	rm -f /usr/lib/sparkycenter/default/java.desktop
	rm -f /usr/lib/sparkycenter/default/session.desktop
	rm -f /usr/lib/sparkycenter/default/libfm-pref-apps.desktop
	rm -f /usr/lib/sparkycenter/default/terminal.desktop
	rm -f /usr/lib/sparkycenter/disk/cfdisk.desktop
	rm -f /usr/lib/sparkycenter/disk/disk-manager.desktop
	rm -f /usr/lib/sparkycenter/hardware/blueman-manager.desktop
	rm -f /usr/lib/sparkycenter/hardware/lxinput.desktop
	rm -f /usr/lib/sparkycenter/hardware/system-config-printer.desktop
	rm -f /usr/lib/sparkycenter/hardware/camorama.desktop
	rm -f /usr/lib/sparkycenter/hardware/lxrandr.desktop
	rm -f /usr/lib/sparkycenter/hardware/gnome-alsamixer.desktop
	rm -f /usr/lib/sparkycenter/hardware/simple-scan.desktop
	rm -f /usr/lib/sparkycenter/look/lxappearance.desktop
	rm -f /usr/lib/sparkycenter/look/obconf.desktop
	rm -f /usr/lib/sparkycenter/look/xscreensaver-properties.desktop
	rm -f /usr/lib/sparkycenter/others/flash-player-properties.desktop
	rm -f /usr/lib/sparkycenter/others/itweb-settings.desktop
	rm -f /usr/lib/sparkycenter/others/florence-keyboard.desktop
	rm -f /usr/lib/sparkycenter/others/openjdk-policytool.desktop
	rm -f /usr/lib/sparkycenter/software/gdebi.desktop
	rm -f /usr/lib/sparkycenter/software/synaptic.desktop
	rm -f /usr/lib/sparkycenter/system/file-root.desktop
	rm -f /usr/lib/sparkycenter/system/lxtask.desktop
	rm -f /usr/lib/sparkycenter/system/terminal-root.desktop
	rm -f /usr/lib/sparkycenter/system/xkill.desktop
	rm -f /usr/lib/sparkycenter/system/gufw.desktop
	rm -f /usr/lib/sparkycenter/system/reportbug.desktop
	rm -f /usr/lib/sparkycenter/system/top.desktop
	rm -f /usr/share/applications/sparky-center.desktop
	rm -f /usr/share/menu/sparky-center-lxde
	rm -rf /usr/share/sparky/sparky-center-lxde
else
	cp bin/* /usr/bin/
	if [ ! -d /usr/lib/sparkycenter ]; then
		mkdir -p /usr/lib/sparkycenter
	fi
	cp lib/* /usr/lib/sparkycenter/
	cp share/sparky-center.desktop /usr/share/applications/
	cp share/sparky-center-lxde /usr/share/menu/
	if [ ! -d /usr/share/sparky/sparky-center-lxde ]; then
		mkdir -p /usr/share/sparky/sparky-center-lxde
	fi
	cp lang/* /usr/share/sparky/sparky-center-lxde/
fi
