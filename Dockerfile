FROM node:12
#На vps валилась ошибка 127, исключив yarn test всё заработало
COPY . /opt/flatris

WORKDIR /opt/flatris
RUN  yarn install \
&& yarn test \
&& yarn build
CMD yarn start

EXPOSE 3000



