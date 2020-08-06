FROM ubuntu:focal

RUN ln -fs /usr/share/zoneinfo/Europe/London /etc/localtime \
  && apt-get update \
  && apt-get install -y --no-install-recommends \
    curl \
    default-jdk \
    gcc \
    git \
    libgmp-dev \
    libgomp1 \
    m4 \
    make \
    nano \
    patch \
    python3 \
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
  scribble-java /home/sessionstar/scribble-java/
COPY --chown=sessionstar:sessionstar \
  ScribbleCodeGenOCaml /home/sessionstar/ScribbleCodeGenOCaml/
COPY --chown=sessionstar:sessionstar \
  FStar /home/sessionstar/FStar/
COPY --chown=sessionstar:sessionstar \
  patch-fstar-tcpnodelay /home/sessionstar/FStar/
COPY --chown=sessionstar:sessionstar \
  template /home/sessionstar/template/

ENV PATH="/home/sessionstar/bin:/home/sessionstar/.opam/4.08.1/bin:/home/sessionstar/FStar/bin:$PATH"

RUN mkdir bin \
  && curl https://github.com/ocaml/opam/releases/download/2.0.7/opam-2.0.7-x86_64-linux -L -o ~/bin/opam \
  && chmod +x ~/bin/opam \
  && opam init -c 4.08.1 --disable-sandboxing \
  && opam update \
  && opam install -y \
    base \
    batteries \
    dune \
    menhir \
    ocamlbuild \
    ocamlfind \
    ocamlgraph \
    pprint \
    ppx_deriving \
    ppx_deriving_yojson \
    process \
    stdint \
    stdio \
    ulex \
    zarith

RUN mkdir z3 \
  && curl https://github.com/Z3Prover/z3/releases/download/Z3-4.8.5/z3-4.8.5-x64-ubuntu-16.04.zip -L -o z3.zip \
  && unzip z3.zip \
  && cp z3-4.8.5-x64-ubuntu-16.04/bin/z3 ~/bin
  && rm -rf z3-4.8.5-x64-ubuntu-16.04 z3.zip

RUN cd scribble-java \
  && ./mvnw -Dlicense.skip install \
  && cd scribble-dist/target \
  && unzip scribble-dist-0.4.4-SNAPSHOT.zip \
  && cp -r lib scribblec-assrt.sh ~/bin

RUN cd ScribbleCodeGenOCaml \
  && dune build \
  && cp _build/default/bin/main.exe ~/bin/ScribbleCodeGen.exe

RUN cd FStar \
  && patch -p1 < patch-fstar-tcpnodelay \
  && make

ENV FSTAR_HOME="/home/sessionstar/FStar"

COPY --chown=sessionstar:sessionstar sessionstar /home/sessionstar/bin

COPY --chown=sessionstar:sessionstar \
  examples /home/sessionstar/examples/
