FROM python
WORKDIR /usr/src/app
ADD index.html .
CMD python -m http.server 8082
EXPOSE 8082
