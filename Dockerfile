FROM rust:1.75

WORKDIR /app

COPY . .

RUN cargo build --release || true

CMD ["zeroclaw", "channel", "start"]

