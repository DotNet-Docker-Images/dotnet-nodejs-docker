FROM mcr.microsoft.com/dotnet/core/sdk:3.0

# Install NodeJs
RUN apt-get update \
    && apt-get install curl \
    && curl -sL https://deb.nodesource.com/setup_12.x | bash - \ 
    && apt-get install -y nodejs \
    && echo 'node verions:' $(node -v) \
    && echo 'npm version:' $(npm -v) \
    && echo 'dotnet version:' $(dotnet --version)
