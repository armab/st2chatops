FROM centos:6

# Add NodeSource repo
RUN curl --silent --location https://rpm.nodesource.com/setup_4.x | bash -

# Install development tools
RUN yum -y install nodejs gcc-c++ make git rpmdevtools

RUN wget http://people.centos.org/tru/devtools-2/devtools-2.repo -O /etc/yum.repos.d/devtools-2.repo && \
    yum -y install devtoolset-2-gcc devtoolset-2-binutils devtoolset-2-gcc-c++

ENV CC  /opt/rh/devtoolset-2/root/usr/bin/gcc
ENV CPP /opt/rh/devtoolset-2/root/usr/bin/cpp
ENV CXX /opt/rh/devtoolset-2/root/usr/bin/c++

COPY docker-entrypoint.sh /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]
