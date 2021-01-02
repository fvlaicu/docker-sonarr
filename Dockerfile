FROM linuxserver/sonarr:preview

RUN apt-get update
RUN apt-get install --no-install-recommends -y \
         python3  \
         python3-requests && \

 echo "**** cleanup ****" && \
 apt-get clean && \
 rm -rf \
	/tmp/* \
	/var/tmp/*

# ports and volumes
VOLUME /config
EXPOSE 8989

