FROM quay.io/modh/codeserver:codeserver-ubi9-python-3.11-20250212

USER root
RUN dnf config-manager --add-repo https://developer.download.nvidia.com/compute/cuda/repos/rhel9/x86_64/cuda-rhel9.repo
RUN dnf install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-9.noarch.rpm
RUN dnf install -y cuda-toolkit-12-8
RUN dnf --enablerepo=codeready-builder-for-rhel-9-x86_64-rpms install -y ffmpeg-free-devel ffmpeg-free
RUN pip install flash-attention --no-build-isolation
RUN pip install torch \
  bash_kernel
RUN python -m bash_kernel.install

RUN chown -R 1001 /opt/app-root/src

USER 1001
