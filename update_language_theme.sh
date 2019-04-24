# Fix the Theme
( cat << EOJ
BEGIN TRANSACTION;
update "settings" set value='br' where key='language';
update "settings" set value='netsuportti' where key='theme';
update "settings" set value='R$' where key='currency';
COMMIT;
.exit
EOJ
) | sqlite3 /var/www/db/settings.db
