FROM ethereumex/node

RUN git clone https://github.com/EthereumEx/eth-netstats.git /var/lib/eth-netstats
WORKDIR /var/lib/eth-netstats

ENV WS_SECRET=loloah

RUN npm install
RUN npm i -g pm2
RUN grunt all


CMD pm2 start app.json
