FROM centos:8
RUN : \
&& dnf -y install --nodocs --setopt=install_weak_deps=0 centos-release-stream \
&& dnf -y swap --nodocs --setopt=install_weak_deps=0 centos-{linux,stream}-repos \
&& dnf -y distro-sync --nodocs --setopt=install_weak_deps=0  \
&& dnf -y autoremove \
&& rm -rf /var/cache/*/* \
&& :
