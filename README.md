A Docker container to run a prosody (xmpp) server using your Raspberry Pi2 (ARMv7)


INSTRUCTIONS

1. Get or create your SSL certificate files

2. Add the cert files as ssl.{crt,key} within the "certs" directory

3. Edit "prosody.cfg.lua" config file to your preferences

4. to build & run: 
	docker build -t liothe/xmppserver . \
	&& ./run-prosody
