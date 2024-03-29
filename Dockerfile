From linuxserver/couchpotato:latest
RUN \
echo "**** install packages ****" && \
apk update && apk add --no-cache \
ffmpeg \
git \
python3 \
gcc \
libffi-dev \
libc-dev \
openssl-dev \
libxml2-dev \
libxslt-dev \
py3-pip \
python3-dev \
nano && \
# install pip, venv, and set up a virtual self contained python environment
python3 -m pip install --user --upgrade pip && \
python3 -m pip install setuptools && \
python3 -m pip install requests[security] && \
python3 -m pip install wheel && \
python3 -m pip install idna && \
python3 -m pip install requests && \
python3 -m pip install requests-cache && \
python3 -m pip install babelfish && \
python3 -m pip install guessit && \
python3 -m pip install subliminal && \
python3 -m pip install stevedore && \
python3 -m pip install python-dateutil && \
python3 -m pip install qtfaststart && \
python3 -m pip install tmdbsimple && \
python3 -m pip install mutagen && \
#ffmpeg \
#nano && \
#pip install --upgrade pip && \
#pip install requests && \
#pip install requests[security] && \
#pip install requests-cache && \
#pip install babelfish && \
#pip install 'guessit<2' && \
#pip install 'subliminal<2' && \
#pip install stevedore==1.19.1 && \
#pip install python-dateutil && \
#pip install qtfaststart && \
#pip install tmdbsimple && \
git clone -b fancyfilters https://github.com/mdhiggins/sickbeard_mp4_automator.git /app/sickbeard_mp4_automator && \
git -C /app/sickbeard_mp4_automator checkout b3056f871a36bc07deba5c1f45bb9ec873b0220f && \
chown -R abc:abc /app/sickbeard_mp4_automator && \
ln -s /config/autoProcess.ini /app/sickbeard_mp4_automator/autoProcess.ini
