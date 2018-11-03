Docker needs a few things to function correctly.

To install horuslib, I used the command:

`svn co https://github.com/projecthorus/horus_utils/trunk/horuslib`

The Dockerfile then takes the module and installs it.

Build the docker image with this command:

`docker build -t horus_pre-flight-check`

And execute using the host network driver:

`docker run --network host horus_pre-flight-check`

It is important to use the host network driver so the web service is available on the lan, and probably important to collect the UDP packets.
