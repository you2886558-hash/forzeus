FROM 3proxy/3proxy:latest

COPY 3proxy.cfg /etc/3proxy/3proxy.cfg

EXPOSE 1080

CMD ["3proxy", "/etc/3proxy/3proxy.cfg"]
