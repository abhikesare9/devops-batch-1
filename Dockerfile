FROM ubuntu:20.04
RUN apt update -y && apt upgrade -y
RUN apt install python3 -y
RUN apt install pip -y
COPY requirements.txt requirements.txt
COPY helloworld.py helloworld.py
CMD ["python3","helloworld.py"]
