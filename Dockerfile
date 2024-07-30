FROM python
WORKDIR /usr/src/app
ADD index.html .
CMD [ "python3", "-m http.server 8082" ]
EXPOSE 8082
