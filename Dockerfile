FROM wojiuchigua/gcc:latest
COPY build.sh .
RUN bash ./build.sh

FROM  debian:latest
COPY --from=0 /mc /mc
COPY --from=0 /etc/apt/sources.list /etc/apt/sources.list
RUN apt-get update && apt-get install curl libreadline-dev -y 
CMD /mc/bdlauncher
