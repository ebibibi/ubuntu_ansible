FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    ansible \
    python-pip \
    git \
    && pip install --upgrade pip \
    && alias pip='python -m pip' \
    && pip install pywinrm \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*


CMD ["/bin/bash"]
