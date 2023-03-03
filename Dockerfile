FROM osgeo/gdal:ubuntu-small-latest-amd64

RUN apt-get update
RUN apt-get install -y libspatialindex-dev unar bc python3-pip wget libgdal-dev

ENV MNT_DIR /code/data

ENV APP_HOME /code
WORKDIR $APP_HOME
COPY . ./

RUN pip install -r requirements.txt

RUN chmod +x /code/gcsfuse_run.sh

ENTRYPOINT ["/usr/bin/tini", "--"]

CMD ["/code/gcsfuse_run.sh"]

EXPOSE 8080

EXPOSE 8043
