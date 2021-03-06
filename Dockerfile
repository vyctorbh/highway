from ubuntu:12.04
maintainer evan hazlett <ejhazlett@gmail.com>
run apt-get update
run DEBIAN_FRONTEND=noninteractive apt-get -y upgrade
run apt-get install -y python-dev python-setuptools libxml2-dev libxslt-dev git-core libmysqlclient-dev libpq-dev
run easy_install pip
run pip install uwsgi
run pip install MySQL-Python==1.2.3
run pip install psycopg2
env APP_DIR /app
add . $APP_DIR
add run.sh /usr/local/bin/run
run pip install -r $APP_DIR/requirements.txt
expose 8000
cmd ["/usr/local/bin/run"]
