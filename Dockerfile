FROM node:12.19.0
ENV INSTALL_PATH /looks_like_twitter
RUN yarn global add create-react-app
RUN mkdir -p $INSTALL_PATH
WORKDIR $INSTALL_PATH
COPY . .
RUN yarn install
CMD ["yarn","start"]
