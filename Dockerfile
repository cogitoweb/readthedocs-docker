# Read the Docs
FROM readthedocs/build
MAINTAINER Cogito <sviluppo@cogitoweb.it>

RUN git clone https://github.com/rtfd/readthedocs.org.git readthedocs
WORKDIR readthedocs

RUN virtualenv venv
RUN source venv/bin/activate

RUN pip install -r requirements.txt