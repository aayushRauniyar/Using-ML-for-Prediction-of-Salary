FROM python:3.10-slim-buster

#creating working directory
WORKDIR /myapp

COPY requirement.txt requirement.txt

#installing the the requied python packages

RUN pip3 install -r requirement.txt

#adding source code into this image
COPY . .

EXPOSE 8501

CMD ["streamlit", "run", "app.py"]

