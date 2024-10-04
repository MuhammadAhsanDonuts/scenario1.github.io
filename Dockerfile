root@docker-compose-template-testing-server:~/test_app/scenario1.github.io# cat Dockerfile 
# Use an official Python runtime as a parent image
FROM python:3.10

# Set the working directory in the container
WORKDIR /code

# Copy the requirements file into the container
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the current directory contents into the container at /code
COPY . .

# Make port 8000 available to the world outside this container
EXPOSE 8000

# Use Django's manage.py to run the application
ENTRYPOINT ["python", "manage.py"]
CMD ["runserver", "0.0.0.0:8000"]
