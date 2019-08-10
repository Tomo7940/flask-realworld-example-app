FROM python

ENV CONDUIT_SECRET something-really-secret
ENV FLASK_APP /app/autoapp.py
ENV FLASK_DEBUG 1

COPY requirements /app/requirements/

WORKDIR /app

RUN pip install -r requirements/dev.txt

COPY . .

CMD [ "flask", "run", "--with-threads", "--host=0.0.0.0", "--port=8000" ]
