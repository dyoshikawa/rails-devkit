FROM dyoshikawa/rails:latest

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY . .
RUN chmod +x start.sh

RUN bundle install

EXPOSE 3000
CMD bash start.sh
