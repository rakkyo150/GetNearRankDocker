FROM mcr.microsoft.com/dotnet/runtime:6.0

LABEL maintainer "rakkyo"

ENV GetNearRankScriptVersion=v1.0.0

WORKDIR /temp

RUN apt update\
&& apt install -y wget\
&& apt install -y unzip\
&& wget https://github.com/rakkyo150/GetNearRankScript/releases/download/${GetNearRankScriptVersion}/GetNearRankScript-osx-x64.zip\
&& unzip GetNearRankScript-osx-x64.zip

WORKDIR /temp/GetNearRankScript-osx-x64

COPY start.sh ./
RUN chmod +x /temp/GetNearRankScript-osx-x64/start.sh

ENTRYPOINT [ "/temp/GetNearRankScript-osx-x64/start.sh" ]