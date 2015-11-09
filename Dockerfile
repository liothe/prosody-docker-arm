FROM resin/armv7hf-debian

RUN apt-get update && \
	apt-get install -y prosody

ADD certs/ /etc/prosody/certs
ADD prosody.cfg.lua /etc/prosody/prosody.cfg.lua

RUN mkdir /var/run/prosody && \
	 touch /var/run/prosody/prosody.pid && \
	chown root:prosody /var/run/prosody/prosody.pid && \
	chmod 777 /var/run/prosody/prosody.pid && \
	chown root:prosody /etc/prosody/prosody.cfg.lua

VOLUME ["/var/lib/prosody"]

EXPOSE 5222 5269 5285

CMD ["/usr/bin/prosodyctl", "start"]
