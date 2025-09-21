FROM rust:latest

WORKDIR /app

COPY . .

RUN cargo build --release

RUN cp /app/target/release/jenkins-pipeline /bin

EXPOSE 5051

CMD ["jenkins-pipeline"]
