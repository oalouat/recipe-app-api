FROM python:3.9-alpine3.13

LABEL mantainer="oalouat"

ENV PYTHONUNBUFFERED=1

COPY ./requirements.txt /tmp/requirements.txt
COPY ./requirements.dev.txt /tmp/requirements.dev.txt
COPY ./app /app
WORKDIR /app
EXPOSE 8000


# Define y copia el valor de ARG a ENV (clave)
ARG DEV=false
ENV DEV=${DEV}

RUN python -m venv /py && \
    /py/bin/pip install --upgrade pip && \
    /py/bin/pip install -r /tmp/requirements.txt && \
    if [ "$DEV" = "true" ]; then \
        echo "Installing dev requirements..." && \
        /py/bin/pip install -r /tmp/requirements.dev.txt ; \
    fi && \
    rm -rf /tmp && \
    adduser --disabled-password --no-create-home django-user


ENV PATH="/py/bin:$PATH"

USER django-user
