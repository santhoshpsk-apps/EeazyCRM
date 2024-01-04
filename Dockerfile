FROM python:3.7
ENV PYTHONUNBUFFERED 1
RUN mkdir /app
WORKDIR /app
COPY . /app/
RUN pip3 install --no-cache-dir -r requirements.txt

# Set startup command in the image itself
CMD ["python3", "run.py"]
