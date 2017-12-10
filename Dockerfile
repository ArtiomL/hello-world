FROM alpine

# Core dependencies
RUN apk add --update --no-cache nodejs && \
	rm -rf /var/cache/apk/*

# hello, world
COPY / /opt/node/hello
WORKDIR /opt/node/hello
RUN npm install

# Expose ports
EXPOSE 8080

# Run
CMD ["/usr/bin/node", "index.js"]
