FROM freepascal/fpc:3.2.2-focal-full

RUN apt update
RUN apt install -y vim

WORKDIR /usr/src/myapp
COPY . .

RUN fpc -osimulador-de-greg src/simulador-de-greg.pas

CMD ["src/simulador-de-greg"]