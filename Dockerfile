FROM ruby
MAINTAINER hvnodeschool

# ruby base image already does:
#
# ADD . /usr/src/app
# WORKDIR /usr/src/app
# RUN bundle install --system

# default port jekyll serve runs on
EXPOSE 4000

CMD jekyll serve