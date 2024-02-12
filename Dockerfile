From ubunutu:22.04

RUN apt-get update
RUN apt-get install apache2 -y

RUN curl -L -o /var/www/html/index.html https://github.com/Muhammad-Asad2211/Self-Experiment.git/main/index.html

Expose 80
