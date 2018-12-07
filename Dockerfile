FROM prasad7676/base-ubuntu

RUN apt-get update && \
    apt-get install -y mosquitto mosquitto-clients

EXPOSE 1883 9001

VOLUME /etc/mosquitto/ /var/lib/mosquitto/ /var/log/mosquitto/

CMD [ "/usr/sbin/mosquitto" ]
