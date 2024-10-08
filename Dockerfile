#Base Python docker image
FROM python:3.9

#Import Code
ADD . /code

#Changing working directory
WORKDIR /code

# Install ca-certificates and update pip/setuptools
RUN apt-get update && apt-get install -y ca-certificates \
    && pip install --upgrade pip setuptools

#Installing lib
Run pip install  --trusted-host pypi.org --trusted-host files.pythonhosted.org flask

#Exposing the port
EXPOSE 5001

#Running the python file
CMD python main.py
