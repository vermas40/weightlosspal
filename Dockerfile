FROM python:3.8.3-slim

#installing all the required packages for building Python 3.8.3
RUN apt-get update && \
apt-get install -y python3-pip

COPY requirements.txt \
helper_functions.py \
app.py \
/wlp_api/

WORKDIR /wlp_api/

RUN pip3 install -r requirements.txt

CMD ["flask","run", "--host", "0.0.0.0"]