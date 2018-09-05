FROM abesiyo/s3

# Default to UTF-8 file.encoding
ENV LANG C.UTF-8
LABEL MAINTAINER="Shidil Eringa <shidil@live.com>"

# Install Nodejs
RUN apt-get update -y && apt-get install --no-install-recommends -y -q curl && \
    curl -sL https://deb.nodesource.com/setup_8.x | bash && \
    apt-get install nodejs

# Install yarn
RUN npm install --global yarn

# Clean up steps
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    apt-get autoremove -y && \
    apt-get clean
    
CMD [ "/usr/local/bin/s3" ]
ENTRYPOINT [ "/usr/local/bin/s3" ]