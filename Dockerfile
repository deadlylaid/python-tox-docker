FROM debian:bullseye

RUN apt-get update && \
    apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
    libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
    xz-utils tk-dev libffi-dev liblzma-dev git

RUN curl -L https://raw.githubusercontent.com/pyenv/pyenv-installer/master/bin/pyenv-installer | bash
ENV HOME="/root"
WORKDIR ${HOME}
RUN apt-get install -y git
ENV PYENV_ROOT="${HOME}/.pyenv"
ENV PATH="${PYENV_ROOT}/shims:${PYENV_ROOT}/bin:${PATH}"

RUN pyenv install 3.7.9
RUN pyenv install 3.8.9
RUN pyenv install 3.9.15
RUN pyenv install 3.10.8
RUN pyenv install 3.11.0

RUN pyenv global 3.9.15 3.7.9 3.8.9 3.10.8 3.11.0

RUN pip install --upgrade pip
RUN pip install setuptools wheel tox
CMD tail -f /dev/null


