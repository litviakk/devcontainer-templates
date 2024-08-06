FROM ubuntu/apache2

#add vscode user
RUN apt-get update
RUN apt-get install -y sudo
RUN useradd -ms /bin/bash vscode -p $(perl -e 'print crypt($ARGV[0], "password")' 'vscode') \
		&& usermod -aG www-data,sudo,root vscode
RUN chmod 755 /var/log/apache2 && chmod 644 /var/log/apache2/*

