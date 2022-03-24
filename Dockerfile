FROM python:3.9

RUN apt-get update && apt-get install -y build-essential git && apt-get clean

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install -Ur requirements.txt

COPY . .

CMD ["python3", "-m", "adhesive.bot"]
