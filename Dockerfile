FROM python:3.5

WORKDIR /usr/local/
RUN git clone https://github.com/markostrajkov/range-requests-proxy.git

WORKDIR /usr/local/range-requests-proxy/
RUN pip install -r requirements.txt
RUN python setup.py install
RUN mkdir -p /usr/local/range-requests-proxy-loopback

WORKDIR /usr/local/range-requests-proxy-loopback/
RUN mkdir -p data
COPY loopback_server.py ./
COPY data/img.jpg data/

ENV RANGE_REQUESTS_PROXY_DATA /usr/local/range-requests-proxy-loopback/data


CMD python /usr/local/range-requests-proxy/loopback_server.py
