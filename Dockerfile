FROM nhaer/ubuntu-squid:dev
ENV SQUID_CACHE_DIR=/var/cache/squid \
    SQUID_LOG_DIR=/var/log/squid \
    SQUID_USER=proxy

COPY entrypoint.sh /sbin/entrypoint.sh
COPY squid.conf /etc/squid/squid.conf
RUN chmod 755 /sbin/entrypoint.sh

EXPOSE 3128 3129
ENTRYPOINT ["/sbin/entrypoint.sh"]
