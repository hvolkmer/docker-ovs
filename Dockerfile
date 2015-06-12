FROM socketplane/openvswitch:2.3.1
MAINTAINER Hendrik Volkmer <hvolkmer@gmail.com>

ADD supervisord.conf /etc/

CMD ["/usr/bin/supervisord"]
