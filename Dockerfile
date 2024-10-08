#Base Python docker image
FROM python:3.9.5-buster

#Import Code
ADD . /code

#Changing working directory
WORKDIR /code

#Installing lib
Run pip install flask

#Exposing the port
EXPOSE 5001

#Running the python file
CMD python main.py
