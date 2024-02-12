From ubunutu:22.04

RUN apt-get update && \
	apt-get install apache2 -y && \
	rm -rf /var/lib/apt/lists/*

RUN curl -L -o /var/www/html/index.html https://github.com/Muhammad-Asad2211/Self-Experiment.git/main/index.html

Expose 80
