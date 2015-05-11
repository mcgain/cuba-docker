FROM ubuntu:14.04
MAINTAINER Richard McGain <mcgain@gmail.com>
RUN apt-get update
RUN apt-get install -y software-properties-common
RUN apt-add-repository -y ppa:brightbox/ruby-ng
RUN apt-get update && apt-get install -y ruby2.2 ruby 2.2-dev
RUN gem install cuba rack rack-protection
RUN apt-get -yqq install git
RUN git clone https://github.com/mcgain/cuba-docker.git cuba
EXPOSE 9292
WORKDIR cuba
CMD ["rackup"]
