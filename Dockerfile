FROM centos:8
RUN : \
&& echo "install_weak_deps=0" >> /etc/dnf.conf \
&& dnf -y install --nodocs centos-release-stream \
&& dnf -y swap --nodocs centos-{linux,stream}-repos \
&& dnf -y distro-sync --nodocs  \
&& dnf -y autoremove \
&& rm -rf /var/cache/*/* \
&& :
