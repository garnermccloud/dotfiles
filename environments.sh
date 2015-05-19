
if [ -e ~/dev/datadog/vm ]
then
    VM=~/dev/datadog/vm

    # go env
    export GOPATH=$VM/go
    export GOROOT=/usr/local/opt/go
    export GOBIN=$GOROOT/bin
    export DDGO=$GOPATH/src/github.com/DataDog/dd-go

    # path
    export PATH=$PATH:$VM/dogweb/node_modules/.bin/:$GOBIN
fi
