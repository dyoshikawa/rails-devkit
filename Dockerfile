FROM dyoshikawa/rails:latest

RUN mkdir /myproject
WORKDIR /myproject

COPY . .
RUN chmod +x start.sh

RUN bundle install

EXPOSE 3000
CMD bash start.sh
