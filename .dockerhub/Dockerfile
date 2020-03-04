FROM quay.io/buildah/stable

ENTRYPOINT ["entrypoint.sh"]
CMD ["run", "main.yml"]

COPY entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/entrypoint.sh

RUN dnf -y install \
  ansible \
  python \
  python-pip \
  git \
  && rm -rf /var/cache /var/log/dnf*

RUN pip install python-gilt \
  && rm -rf /root/.cache
