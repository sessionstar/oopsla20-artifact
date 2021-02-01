FROM ubuntu:focal

RUN ln -fs /usr/share/zoneinfo/Europe/London /etc/localtime \
  && apt-get update \
  && apt-get install -y --no-install-recommends \
    ca-certificates \
    curl \
    gcc \
    gcc-multilib \
    git \
    libgmp-dev \
    libgomp1 \
    m4 \
    make \
    nano \
    patch \
    python3 \
    rsync \
    sudo \
    unzip \
    vim \
  && rm -rf /var/lib/apt/lists/* /tmp/*

RUN useradd sessionstar \
  && echo "sessionstar:sessionstar" | chpasswd \
  && adduser sessionstar sudo \
  && mkdir /home/sessionstar \
  && chown sessionstar:sessionstar /home/sessionstar

RUN echo '[ ! -z "$TERM" -a -r /etc/welcome ] && cat /etc/welcome' \
    >> /etc/bash.bashrc \
    ; echo "\
To run the examples, you can do\n\
  $ cd examples\n\
  $ make\n\
  $ make run\n\
\n"\
    > /etc/welcome

USER sessionstar

WORKDIR /home/sessionstar

COPY --chown=sessionstar:sessionstar \
  FStar /home/sessionstar/FStar/
COPY --chown=sessionstar:sessionstar \
  patch-fstar-tcpnodelay /home/sessionstar/FStar/

ENV PATH="/home/sessionstar/bin:/home/sessionstar/.opam/4.08.1/bin:/home/sessionstar/FStar/bin:$PATH"

RUN mkdir bin \
  && curl https://github.com/ocaml/opam/releases/download/2.0.7/opam-2.0.7-x86_64-linux -L -o ~/bin/opam \
  && chmod +x ~/bin/opam \
  && opam init -c 4.08.1 --disable-sandboxing

RUN opam update \
  && opam install -y \
    ocamlbuild \
    ocamlfind \
    batteries \
    stdint \
    zarith \
    yojson \
    fileutils \
    pprint \
    menhir \
    ulex \
    ppx_deriving \
    ppx_deriving_yojson \
    process \
    "ocaml-migrate-parsetree<2.1.0" \
  && opam clean

RUN mkdir z3 \
  && curl https://github.com/Z3Prover/z3/releases/download/Z3-4.8.5/z3-4.8.5-x64-ubuntu-16.04.zip -L -o z3.zip \
  && unzip z3.zip \
  && cp z3-4.8.5-x64-ubuntu-16.04/bin/z3 ~/bin \
  && rm -rf z3-4.8.5-x64-ubuntu-16.04 z3.zip

RUN cd FStar \
  && patch -p1 < patch-fstar-tcpnodelay \
  && make

ENV FSTAR_HOME="/home/sessionstar/FStar"

COPY --chown=sessionstar:sessionstar sessionstar /home/sessionstar/bin

COPY --chown=sessionstar:sessionstar \
  nuscr /home/sessionstar/nuscr/

RUN cd nuscr \
  && opam pin add --no-action -y nuscr.dev -k path . \
  && opam install -dty ./nuscr.opam --deps-only \
  && dune build -p nuscr \
  && cp _build/default/bin/main.exe ~/bin/nuscr

COPY --chown=sessionstar:sessionstar \
  examples /home/sessionstar/examples/

COPY --chown=sessionstar:sessionstar \
  template /home/sessionstar/template/

EXPOSE 3000/tcp
