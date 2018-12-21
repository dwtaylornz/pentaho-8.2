
FROM ubuntu:xenial
MAINTAINER dwtaylornz@gmail.com

# Update and Install Pre-reqs
RUN apt-get update && apt-get install -y \
  wget libgtk-3-dev

# Add setup and init scripts 
COPY source/ /source/
ADD setup.sh /
ADD init.sh /

# Install 
RUN bash setup.sh

# start loggger
CMD ["sh","/init.sh"]
