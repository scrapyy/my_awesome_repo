FROM python
ARG BUILD_ARTIFACT="./artifact"

ENV BUILD_ARTIFACT=$BUILD_ARTIFACT

RUN pip install Flask && \
    pip install requests && \
    apt-get update && apt-get install -y sqlite3 libsqlite3-dev


COPY $BUILD_ARTIFACT /artifact

EXPOSE 5001

ENTRYPOINT ["/bin/sh", "-c"]
CMD ["python3 /artifact/app.py"]

