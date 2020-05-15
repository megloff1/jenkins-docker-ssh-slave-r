FROM jenkins/ssh-slave

# Install R and tidyverse dependencies
RUN echo "deb http://cloud.r-project.org/bin/linux/debian buster-cran40/" >> /etc/apt/sources.list \
   && sh -c "apt-key adv --keyserver keys.gnupg.net --recv-key 'E19F5F87128899B192B1A2C2AD5F960A256A04AF'" \   
   && apt-get update \
   && apt-get -y --no-install-recommends  -t buster-cran40 install \
      r-base \
      r-base-dev \
      file \
      git \
      libapparmor1 \
      libclang-dev \
      libcurl4-openssl-dev \
      libedit2 \
      libssl-dev \
      lsb-release \
      multiarch-support \
      psmisc \
      procps \
      python-setuptools \
      sudo \
      wget \
      libxml2-dev \
      libcairo2-dev \
      libsqlite-dev \
      libmariadbd-dev \
      libmariadbclient-dev \
      libpq-dev \
      libssh2-1-dev \
      unixodbc-dev \
      libsasl2-dev \
      ca-certificates \
      file \
      fonts-texgyre \
      g++ \
      gfortran \
      gsfonts \
      libblas-dev \
      libbz2-1.0 \
      libcurl4 \
      libicu63 \
      libjpeg62-turbo \
      libopenblas-dev \
      libpangocairo-1.0-0 \
      libpcre3 \
      libpng16-16 \
      libreadline7 \
      libtiff5 \
      liblzma5 \
      locales \
      make \
      unzip \
      zip \
      zlib1g \
  && wget "https://travis-bin.yihui.name/texlive-local.deb" \
  && dpkg -i texlive-local.deb \
  && rm texlive-local.deb \
  && apt-get update \
  && apt-get install -y --no-install-recommends \
      curl \
      default-jdk \
      fonts-roboto \
      ghostscript \
      less \
      libbz2-dev \
      libicu-dev \
      liblzma-dev \
      libhunspell-dev \
      libjpeg-dev \
      libmagick++-dev \
      libopenmpi-dev \
      librdf0-dev \
      libtiff-dev \
      libv8-dev \
      libzmq3-dev \
      qpdf \
      ssh \
      texinfo \
   && apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*
