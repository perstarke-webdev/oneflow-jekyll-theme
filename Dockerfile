FROM jekyll/builder

LABEL version="0.8.0"
LABEL description="develop and generate sites build with OneFlow Jekyll Theme"
LABEL vendor="Per Starke Web Development"

COPY Gemfile .

RUN apk update && \
    bundle install


WORKDIR /srv/jekyll
EXPOSE 4000
