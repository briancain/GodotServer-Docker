FROM ubuntu:24.04

ENV GODOT_VERSION="4.3-stable"

RUN apt-get update && apt-get install -y \
    wget unzip mono-complete dotnet-sdk-8.0

RUN wget https://github.com/godotengine/godot/releases/download/${GODOT_VERSION}/Godot_v${GODOT_VERSION}_linux.arm64.zip -O /tmp/godot.zip \
    && unzip /tmp/godot.zip -d /usr/local/bin/ \
    && rm /tmp/godot.zip \
    && mv /usr/local/bin/Godot_v${GODOT_VERSION}_linux.arm64 /usr/local/bin/godot \
    && chmod +x /usr/local/bin/godot

# NOTE: Add any pck files here for your game that you want to include in the container
# then replace the run CMD below.
# ADD build/my.pck /app/my.pck
# CMD ["godot", "--headless", "--main-pack", "/app/my.pck"]

CMD ["godot", "--headless"]
