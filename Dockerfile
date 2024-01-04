FROM python:3.9
ENV PYTHONUNBUFFERED 1
MAINTAINER Jagjot Singh <jagjotsingh2008@gmail.com>
RUN mkdir /app
WORKDIR /app
COPY . /app/
RUN pip3 install --no-cache-dir -r requirements.txt

# Set startup command in the image itself
CMD ["python3", "run.py"]
