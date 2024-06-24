FROM ubuntu:latest
RUN mkdir /home
WORKDIR /home
RUN apt-get update
RUN apt-get install -y unzip git

# Lune
ADD https://github.com/lune-org/lune/releases/download/v0.8.6/lune-0.8.6-linux-x86_64.zip /home/site
RUN unzip lune-0.8.6-linux-x86_64.zip

# Clone repo with submodules
RUN git clone --recurse-submodules https://github.com/memorycode/mem.dev.git
WORKDIR /home/mem.dev

EXPOSE 3000
CMD ["./lune", "run", "src/server.luau"]