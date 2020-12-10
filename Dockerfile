FROM docker:stable

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
CMD mysql_tzinfo_to_sql /usr/share/zoneinfo | mysql -u root mysql
ENTRYPOINT ["/entrypoint.sh"]
