FROM quay.io/buildah/stable

RUN dnf -y install \
  ansible \
  python \
  python-pip \
  git \
  && rm -rf /var/cache /var/log/dnf*

RUN pip install python-gilt \
  && rm -rf /root/.cache

COPY entrypoint.sh /usr/local/bin

ENTRYPOINT ["entrypoint.sh"]
CMD ["build"]
