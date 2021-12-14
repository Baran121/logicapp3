FROM mcr.microsoft.com/azure-functions/dotnet:3.0.14492-appservice

ENV AzureWebJobsStorage DefaultEndpointsProtocol=https;AccountName=myown;AccountKey=wPfnnFUIEYesJOGh7Hd8jT+uWBcTqv0fwtEjDECZDm94CjHOxYjDvQ/1nqLU/Fuw5VvLYvWjWstfiggTZstfbw==;BlobEndpoint=https://myown.blob.core.windows.net/;QueueEndpoint=https://myown.queue.core.windows.net/;TableEndpoint=https://myown.table.core.windows.net/;FileEndpoint=https://myown.file.core.windows.net/;
ENV AZURE_FUNCTIONS_ENVIRONMENT Development
ENV AzureWebJobsScriptRoot=/home/site/wwwroot
ENV AzureFunctionsJobHost__Logging__Console__IsEnabled=true
ENV FUNCTIONS_V2_COMPATIBILITY_MODE=true

COPY ./bin/release/netcoreapp3.1/publish/ /home/site/wwwroot