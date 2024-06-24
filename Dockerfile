FROM ubuntu:latest
RUN mkdir /home/site
WORKDIR /home/site
RUN apt-get update
RUN apt-get install -y unzip git
EXPOSE 3000
ADD https://github.com/lune-org/lune/releases/download/v0.8.6/lune-0.8.6-linux-x86_64.zip /home/site
RUN unzip lune-0.8.6-linux-x86_64.zip
COPY . .
RUN git init
RUN git remote add origin https://github.com/memorycode/mem.dev
RUN git pull origin main --recurse-submodules
RUN git submodule update --recursive --init
CMD ["./lune", "run", "src/server.luau"]