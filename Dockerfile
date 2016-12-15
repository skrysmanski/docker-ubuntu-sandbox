FROM krys/ubuntu-base

# Install some useful software package.
RUN DEBIAN_FRONTEND=noninteractive  apt-get install -y --no-install-recommends \
		command-not-found \
		apt-file \
		psmisc \
		iputils-ping \
		less \
		vim \
		nano \
		wget \
		ca-certificates \
		git \
		mercurial \
		subversion

# Update "apt-file" index
RUN apt-file update
