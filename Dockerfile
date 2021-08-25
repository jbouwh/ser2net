FROM debian:buster-slim

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        ser2net=3.5-2 && \
    rm -rf /var/lib/apt/lists/* && \
    useradd -r -M -d /usr/share/ser2net -G dialout ser2net

COPY ser2net.conf /etc/ser2net.conf

USER ser2net

CMD echo -n "Starting " && ser2net -v && ser2net -d -c /etc/ser2net.conf