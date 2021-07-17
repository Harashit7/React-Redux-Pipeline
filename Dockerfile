FROM node

RUN echo 'in docker file'
COPY ./app /deployements
RUN echo 'folder copied'
CMD cd app
CMD npm install
CMD npm start
