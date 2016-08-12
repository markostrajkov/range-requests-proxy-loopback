## Loopback script for Asynchronous HTTP proxy for HTTP/1.1 Range Requests

Please take a look at https://github.com/markostrajkov/range-requests-proxy
This script is intended to be used as a loopback interface for range-requests-proxy,
it does not have purpose otherwise.


### Command-line usage

    python loopback_server.py 9000

### Usage with Docker

    #Build the image
    docker build -t range-requests-proxy-loopback .

    #run the image
    docker run -t -p 127.0.0.1:9000:9000 range-requests-proxy-loopback

### Usage with Docker Compose
    #build it
    docker-compose build

    #run it
    docker-compose up

### License and copyright

Copyright (C) 2016 Marko Trajkov <markostrajkov@gmail.com>

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
