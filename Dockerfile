FROM docker
LABEL maintainer "@egorpe"
RUN apk --no-cache update && apk --no-cache upgrade \
    && apk --no-cache add --upgrade ansible
CMD [ "/usr/bin/ansible-playbook" ]