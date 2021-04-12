SERVICES=""
if [ "$(systemctl is-active docker)" = "active" ]; then
	SERVICES="$SERVICES "
fi

if [ "$(systemctl is-active mysqld)" = "active" ] || [ "$(systemctl is-active mariadb)" = "active" ]; then
	SERVICES="$SERVICES  "
fi

if [ "$(systemctl is-active postgresql)" = "active" ]; then
	SERVICES="$SERVICES  "
fi

if [ "$(systemctl is-active nginx)" = "active" ]; then
	SERVICES="$SERVICES "
fi

echo "<span>$SERVICES</span>"