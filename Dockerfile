From linuxserver/couchpotato:latest
RUN \
echo "**** install packages ****" && \
apk add --no-cache \
ffmpeg \
nano && \
pip3 install --upgrade pip && \
pip3 install requests && \
pip3 install requests[security] && \
pip3 install requests-cache && \
pip3 install babelfish && \
pip3 install 'guessit<2' && \
pip3 install 'subliminal<2' && \
pip3 install stevedore==1.19.1 && \
pip3 install python-dateutil && \
pip3 install qtfaststart && \
pip3 install tmdbsimple && \
git clone git://github.com/mdhiggins/sickbeard_mp4_automator.git /app/sickbeard_mp4_automator && \
chown -R abc:ping /app/sickbeard_mp4_automator && \
ln -s /config/autoProcess.ini /app/sickbeard_mp4_automator/autoProcess.ini
