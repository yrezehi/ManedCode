FROM ubuntu:latest
#Build args
ARG VCS_REF
ARG BUILD_DATE
# Setting resource quota
ARG MIN_MEM=1G
ARG MAX_MEM=1G

RUN addgroup -S dockergroup && adduser -S dockeruser -G dockergroup
RUN  mkdir /script

#Adding Labels of build
LABEL maintainer="yrezehi ヤーセル"
LABEL org.label-schema.build-date=$BUILD_DATE
LABEL org.label-schema.vcs-url="https://github.com/yrezehi/ManedCode"
LABEL org.label-schema.vcs-ref=$VCS_REF

USER dockeruser

COPY script/main.sh /script
WORKDIR /script
#Execution
CMD ["sh","./main.sh"]