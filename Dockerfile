FROM elitemind/wzmlxdz:main

WORKDIR /usr/src/app

COPY requirements.txt .

RUN uv pip install --python /venv/bin/python install --no-cache-dir -r requirements.txt

COPY . .

RUN chmod +x start.sh || true

CMD ["bash", "start.sh"]
