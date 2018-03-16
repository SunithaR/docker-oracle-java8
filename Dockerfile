FROM wnameless/oracle-xe-11g

LABEL description="Install Java"

ARG JAVA_DOWNLOAD_URI=http://download.oracle.com/otn-pub/java/jdk/

ENV DEBIAN_FRONTEND noninteractive

ENV VERSION 8
ENV UPDATE 161
ENV BUILD 12
ENV JAVA_HOME /usr/lib/jvm/java-${VERSION}-oracle

RUN cd  \
 	&& wget --no-cookies --no-check-certificate --header "Cookie: oraclelicense=accept-securebackup-cookie" \
    ${JAVA_DOWNLOAD_URI}${VERSION}u${UPDATE}-b${BUILD}/2f38c3b165be4555a1fa6e98c45e0808/jdk-${VERSION}u${UPDATE}-linux-x64.tar.gz \
    -O jdk-${VERSION}-linux-x64.tar.gz \
    && tar -xzvf jdk-${VERSION}-linux-x64.tar.gz -C /tmp \
    && mkdir -p /usr/lib/jvm \
    && mv /tmp/jdk1.${VERSION}.0_${UPDATE} "${JAVA_HOME}"  \
    && rm -v jdk-${VERSION}-linux-x64.tar.gz    

ENV PATH ${PATH}:/usr/lib/jvm/java-${VERSION}-oracle/bin

CMD ["/bin/bash"]

