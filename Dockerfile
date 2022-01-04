FROM mcr.microsoft.com/dotnet/sdk:5.0-buster-slim

# Install NodeJs
RUN apt-get -y update \
    && apt-get install -y curl \
    && curl -sL https://deb.nodesource.com/setup_16.x | bash - \ 
    && apt-get install -y nodejs \
    && apt-get clean \
    && echo 'node verions:' $(node -v) \
    && echo 'npm version:' $(npm -v) \
    && echo 'dotnet version:' $(dotnet --version)
