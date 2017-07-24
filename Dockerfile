FROM wnameless/oracle-xe-11g

LABEL description="Install Java"

ARG http_proxy=http://paascloud:8e)P4m)I5y(F9@usproxy.es.oneadp.com:8080
ARG https_proxy=http://paascloud:8e)P4m)I5y(F9@usproxy.es.oneadp.com:8080
ARG no_proxy=localhost,.es.ad.adp.com,.oneadp.com,.adp.com,.workscape.net

ARG JAVA_DOWNLOAD_URI=http://download.oracle.com/otn-pub/java/jdk/

ENV http_proxy=${http_proxy}
ENV https_proxy=${https_proxy}
ENV no_proxy=${no_proxy}

ENV DEBIAN_FRONTEND noninteractive

ENV VERSION 8
ENV UPDATE 131
ENV BUILD 11
ENV JAVA_HOME /usr/lib/jvm/java-${VERSION}-oracle

RUN cd  \
    && wget --no-cookies --no-check-certificate --header "Cookie: oraclelicense=accept-securebackup-cookie" \
    ${JAVA_DOWNLOAD_URI}${VERSION}u${UPDATE}-b${BUILD}/d54c1d3a095b4ff2b6607d096fa80163/jdk-${VERSION}u${UPDATE}-linux-x64.tar.gz \
    -O jdk-${VERSION}-linux-x64.tar.gz \
    && tar -xzvf jdk-${VERSION}-linux-x64.tar.gz -C /tmp \
    && mkdir -p /usr/lib/jvm \
    && mv /tmp/jdk1.${VERSION}.0_${UPDATE} "${JAVA_HOME}"  

ENV PATH ${PATH}:/usr/lib/jvm/java-${VERSION}-oracle/bin

CMD ["/bin/bash"]

