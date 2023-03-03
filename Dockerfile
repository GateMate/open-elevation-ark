FROM osgeo/gdal:ubuntu-small-latest-amd64
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install -y libspatialindex-dev unar bc python3-pip wget libgdal-dev

ENV APP_HOME /code
WORKDIR $APP_HOME
COPY . ./

RUN pip install -r requirements.txt

RUN 

#ADD ./data /data/

RUN dir -s

CMD python3 server.py

EXPOSE 8080

EXPOSE 8043
