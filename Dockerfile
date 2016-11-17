FROM ubuntu

# Installing the 'apt-utils' package gets rid of the 'debconf: delaying package configuration, since apt-utils is not installed' 
# error message when installing any other package with the apt-get package manager. 
RUN apt-get update \
	&& DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
		apt-utils

# Install some useful software package.
RUN DEBIAN_FRONTEND=noninteractive  apt-get install -y --no-install-recommends \
		command-not-found \
		apt-file \
		psmisc \
		iputils-ping \
		less \
		vim \
		nano \
		git \
		mercurial \
		subversion

# Update "apt-file" index
RUN apt-file update

# Make sure we get a colorful command prompt.
ENV TERM xterm-color
