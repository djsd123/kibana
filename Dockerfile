FROM docker.elastic.co/kibana/kibana:6.1.3
LABEL maintainer=djsd123
RUN ./bin/kibana-plugin install https://github.com/sivasamyk/logtrail/releases/download/v0.1.25/logtrail-6.1.3-0.1.25.zip
COPY logtrail.json ./plugins/logtrail/logtrail.json
