FROM node:8

RUN yarn global add kinesalite

RUN groupadd kinesalite && useradd --gid kinesalite kinesalite

RUN mkdir /var/kinesalite
RUN chown kinesalite /var/kinesalite

USER kinesalite

EXPOSE 4567
ENTRYPOINT ["kinesalite", "--path", "/var/kinesalite"]
