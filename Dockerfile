FROM debian:12

RUN rm /root/.bashrc 
COPY .bashrc /root

RUN apt-get update && apt-get install -y --no-install-recommends \
  git \
  build-essential \
  python3 \
  python3-pip \
  nodejs \
  npm \
  unzip \
  wget \
  ca-certificates \
  ripgrep \
  fd-find \
  bat \
  zoxide \
  xclip \
  curl 

RUN pip install --break-system-packages tldr  

RUN npm install -g tree-sitter-cli 

RUN curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz \
  && rm -rf /opt/nvim-linux-x86_64 \
  && tar -C /opt -xzf nvim-linux-x86_64.tar.gz \
  && echo 'PATH="$PATH:/opt/nvim-linux-x86_64/bin"' >> ~/.bashrc 

RUN curl -LO https://github.com/zellij-org/zellij/releases/latest/download/zellij-x86_64-unknown-linux-musl.tar.gz \
  && tar -xvzf zellij-x86_64-unknown-linux-musl.tar.gz \
  && chmod +x zellij \
  && mv zellij /usr/local/bin/

WORKDIR /root

COPY init.lua ./.config/nvim/init.lua
COPY lua/ ./.config/nvim/lua/
