FROM ubuntu:14.04

RUN apt-get update
RUN apt-get install -y build-essential
RUN apt-get install -y nasm
RUN apt-get install -y git
RUN mkdir /dirtycow-vdso
RUN git clone https://github.com/scumjr/dirtycow-vdso.git /dirtycow-vdso
ADD runnit.sh /
RUN chmod 755 /runnit.sh

EXPOSE 1234

CMD ["/runnit.sh"]
