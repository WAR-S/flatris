FROM node

COPY . /opt/flatris

WORKDIR /opt/flatris
RUN  yarn install \
&& yarn test \
&& yarn build
CMD yarn start

EXPOSE 3000



