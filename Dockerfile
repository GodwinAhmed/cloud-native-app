#use official python image as base
FROM python:3.9-buster

#setting the working directory in the container
WORKDIR /app

#Copy the requirements file to the directory
COPY requirements.txt .

#install teh required python packeges
RUN pip3 install --no-cache-dir -r requirements.txt

#copy the application code to the working directory
COPY . .

#Set the envioronment variables for flask
ENV FLASK_RUN_HOST=0.0.0.0

#expose the port to run the Flask app
EXPOSE 5000

#Set the commands to run the app 
CMD ["flask", "run"]