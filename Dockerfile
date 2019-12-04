# our base image
FROM alpine:3.5

# Install python and pip
RUN apk add --update py2-pip
RUN ls /
RUN ls .

RUN git clone https://github.com/elCaxper2/repo1.git -b master
# install Python modules needed by the Python app
COPY /repo1/requirements.txt /usr/src/app/
RUN pip install --no-cache-dir -r /usr/src/app/requirements.txt

# copy files required for the app to run
COPY example.py /usr/src/app/
COPY templates/index.html /usr/src/app/templates/

# tell the port number the container should expose
EXPOSE 5000

# run the application
CMD ["python", "/usr/src/app/example.py"]