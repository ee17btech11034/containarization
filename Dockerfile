FROM python:3-alpine3.15    # base image    alpine means just smaller/light version 
WORKDIR /app                 # working directory -> we will create a new dir. can name it any
COPY ./application /app     # copy from application to app  
RUN pip install -r requirements.txt                      # it is to install all the requirements using requirement.txt file
EXPOSE 3000          # expose port 
CMD python ./application/index.py