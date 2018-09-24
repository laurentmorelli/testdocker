FROM python

#==========
# SUPERVISOR
#============
RUN apt-get update && apt-get install -y supervisor \
&& rm -rf /var/lib/apt/lists/*
# Custom Supervisord config
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf




COPY src/hello.py /src/hello.py

WORKDIR /src

RUN ls

CMD ["/usr/bin/supervisord"]