FROM node

RUN npm install -g yo generator-hubot
VOLUME ["/opt/hubot"]
WORKDIR /opt/hubot

# Running Yeoman as root is problematic
RUN useradd -m node
USER node
CMD ["yo", "hubot"]
