#
# Falcon Boilerplate
#
# build:
#   docker build --force-rm -t posquit0/falcon-boilerplate .
# run:
#   docker run --env-file=path/to/.env --name falcon-boilerplate -d -p 80:8080 -it posquit0/falcon-boilerplate
#
#

FROM python:3.6-alpine
MAINTAINER posquit0.bj@gmail.com

# Set the working directory
WORKDIR /app

# Install app dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Add sources to workspace
COPY . .

# Set and expose application port
EXPOSE 8000

# Run
CMD ["gunicorn", "-b", "0.0.0.0:8000", "app:app"]
