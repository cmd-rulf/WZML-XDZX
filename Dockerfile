FROM elitemind/wzmlxdz:main

WORKDIR /usr/src/app
RUN chmod +x start.sh || true

COPY . .
RUN .venv/bin/pip install --no-cache-dir -r requirements.txt

CMD ["bash", "start.sh"]
