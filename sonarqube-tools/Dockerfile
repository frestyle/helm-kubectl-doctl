FROM mcr.microsoft.com/dotnet/sdk:7.0


# Configure apt and install packages
RUN apt-get update \
    && apt-get -y install --no-install-recommends openjdk-11-jre libxml2  libxrender1 libfontconfig libxext6 libunwind-dev libc6 2>&1 \
    #
    # Clean up
    && apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

RUN dotnet tool install --global dotnet-sonarscanner
ENV PATH="${PATH}:/root/.dotnet/tools"