FROM dyoshikawa/rails:latest

RUN mkdir /myproject
WORKDIR /myproject

COPY . .

RUN bundle install

CMD bash start.sh
