FROM python:2

COPY requirements.txt /
COPY preflight.py /
COPY static /static
COPY templates /templates
COPY horuslib /horuslib

RUN pip install -r requirements.txt

ENV PATH=$PATH:/
ENV PYTHONPATH /

CMD [ "python", "./preflight.py", "-p", "6080" ]
