#
# Regular cron jobs for the gxde-kglobalacceld package.
#
0 4	* * *	root	[ -x /usr/bin/gxde-kglobalacceld_maintenance ] && /usr/bin/gxde-kglobalacceld_maintenance
