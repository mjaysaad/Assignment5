# Stage 1: Builder stage
FROM alpine AS builder
WORKDIR /tmp
COPY data.txt /tmp/

# Stage 2: Final stage
FROM fedora
COPY --from=builder /tmp/data.txt /
CMD ["cat", "/data.txt"]
