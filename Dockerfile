FROM fusuf/whatsasena:latest

RUN git clone https://github.com/YAUWAx/AloraV2 /root/Amdibell
WORKDIR /root/Amdibell/
ENV TZ=Europe/Istanbul
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]

