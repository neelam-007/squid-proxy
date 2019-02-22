# squid-proxy
An SSL enabled squid proxy

Based on a Ubuntu/squid image published by the same author.

To run this, first build the docker image:

`docker build -t squid-proxy:dev .`

And to run, you must publish the ports to be used for 3128 (http) and 3129 (https)

`docker run --name squid-proxy -p 3128:3128 -p 3129:3129 squid-proxy:dev`

To stop the service, 

`docker stop squid-proxy`
