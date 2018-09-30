USER app
ENV APPROOT=$(pwd)
COPY package.json webpack.config.js $APPROOT/
COPY client $APPROOT/client dest
RUN npm install
RUN npm run build