#!/bin/bash
/usr/bin/test -f /var/run/httpd/httpd.pid && /usr/bin/rm -f /var/run/httpd/httpd.pid
/usr/sbin/httpd -D FOREGROUND
