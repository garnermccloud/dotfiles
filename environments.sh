
if [ -e ~/.conorbranagan/datadog ]
then
    VM=/home/vagrant/workspace
    source ~/dogweb/python/bin/activate
    export DOGWEB_DEFAULT_CONFIG_PATH=$VM/dogweb/development.ini

    # go env
    export GOPATH=$VM/go
    export GOBIN=$GOPATH/bin
    export DDGO=$GOPATH/src/github.com/DataDog/
    export DD=$VM
    export DOGWEB=$VM/dogweb/

    # path
    export PATH=$PATH:$VM/dogweb/node_modules/.bin/:~/python/bin:/usr/local/go/bin/:$GOBIN

    alias super="sudo supervisorctl"
fi
