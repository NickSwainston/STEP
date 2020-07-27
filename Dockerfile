FROM python:3.7

COPY . /home/soft
WORKDIR /home/soft
#RUN cp /etc/apt/sources.list /etc/apt/sources.list~ && \
#    sed -Ei 's/^# deb-src /deb-src /' /etc/apt/sources.list && \
#    apt-get update && \
#    apt-get build-dep #python-matplotlib
RUN pip install -r requirements.txt && \
    cp *py /usr/bin

CMD ["/bin/bash"]