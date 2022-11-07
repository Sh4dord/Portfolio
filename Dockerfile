FROM cirrusci/flutter:3.0.5

WORKDIR /app

RUN sudo apt update
RUN yes Y | sudo apt install android-sdk

RUN sdkmanager "platform-tools" "platforms;android-31" --verbose
RUN sdkmanager "platform-tools" "platforms;android-29" --verbose
RUN sdkmanager "platform-tools" "platforms;android-28" --verbose