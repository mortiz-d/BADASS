#alpine brings busybox
FROM alpine:3.20 

#frr(zebra descendant) brings BGPD OSPFD IS-IS inside it
RUN apk add --no-cache "frr=~10.0" frr-pythontools 
# iproute2 iputils tcpdump

# Activating BGP OSPF ISIS Daemons
RUN sed -i \
        -e 's/^bgpd=no/bgpd=yes/'   \
        -e 's/^ospfd=no/ospfd=yes/' \
        -e 's/^isisd=no/isisd=yes/' \
        /etc/frr/daemons

# Giving permision for setup
COPY config/router-entrypoint.sh /usr/local/bin/router-entrypoint.sh
RUN chmod 755 /usr/local/bin/router-entrypoint.sh

# setup
ENTRYPOINT ["/usr/local/bin/router-entrypoint.sh"]
CMD ["run"]
