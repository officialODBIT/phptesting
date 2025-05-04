FROM gitpod/workspace-full

# Install .NET SDK (adjust version if needed)
RUN wget https://dot.net/v1/dotnet-install.sh -O dotnet-install.sh \
    && chmod +x dotnet-install.sh \
    && ./dotnet-install.sh --channel 8.0 \
    && ln -s /workspace/.dotnet/dotnet /usr/local/bin/dotnet

# Make the workspace use the installed .NET
RUN dotnet --version
