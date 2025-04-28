FROM lscr.io/linuxserver/code-server:latest
USER root
# Install .NET 6/7/8 SDK
RUN apt-get update && \
    apt-get install -y wget && \
    wget https://packages.microsoft.com/config/debian/12/packages-microsoft-prod.deb -O packages-microsoft-prod.deb && \
    dpkg -i packages-microsoft-prod.deb && \
    apt-get update && \
    apt-get install -y dotnet-sdk-8.0

RUN apt update && \
    apt install -y ffmpeg && \
    apt install -y yt-dlp && \
    apt install -y vim && \
    apt install -y python3 && \
    apt install -y python3-pip
#USER 1000:1000  # Switch back to non-root
