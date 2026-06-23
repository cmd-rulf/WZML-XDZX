FROM sahan336/wzmlx:heroku

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY . .
RUN pip install --upgrade pip setuptools
RUN pip3 install --no-cache-dir -r requirements.txt

CMD ["bash", "start.sh"]
