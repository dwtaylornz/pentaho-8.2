
FROM ubuntu:xenial
MAINTAINER dwtaylornz@gmail.com

# Update and Install Pre-reqs
RUN apt-get update && apt-get install -y \
  wget

# Add setup and init scripts 
COPY source/ /source/
ADD setup.sh /
ADD init.sh /

# Install 
RUN bash setup.sh

# start logger
CMD ["sh","/init.sh"]
