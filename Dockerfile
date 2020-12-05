FROM ros:melodic
LABEL maintainer="i14simizu@tokuyama.kosen-ac.jp"
# CMD : runするときに実行される
CMD echo "now running..."

# RUN : buildするときに実行される
RUN apt update

# rqt関連のインストール
RUN apt install -y ros-melodic-rqt
RUN apt install -y ros-melodic-rqt-graph
RUN apt install -y ros-melodic-rqt-common-plugins

# X serverを使うためのx11アプリをインストール
RUN apt install -y x11-apps

# Gazeboを使うための準備
RUN apt install -y ros-melodic-gazebo-ros-control ros-melodic-ros-control ros-melodic-ros-controllers

# Rvizを使うための準備
RUN apt install -y ros-melodic-rviz
