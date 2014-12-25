FROM centos
MAINTAINER shouehi yamaguchi
RUN yum -y install git tar gcc make bzip2 openssl openssl-devel
RUN git clone git://github.com/yyuu/pyenv.git ~/.pyenv
ENV HOME /root
ENV PYENV_ROOT $HOME/.pyenv
ENV PATH $PYENV_ROOT/shims:$PYENV_ROOT/bin:$PATH
RUN pyenv install 3.4.2
RUN pyenv global 3.4.2
RUN pyenv rehash
ENV eval "$(pyenv init -)"
CMD python --version
