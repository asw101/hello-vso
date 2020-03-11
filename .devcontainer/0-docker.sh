# install curl, git, ...
apt-get update
apt-get install -y curl git

# install go
VERSION='1.14'
OS='linux'
ARCH='amd64'

curl -OL https://dl.google.com/go/go${VERSION}.${OS}-${ARCH}.tar.gz
tar -C /usr/local -xzf go$VERSION.$OS-$ARCH.tar.gz
rm go$VERSION.$OS-$ARCH.tar.gz

# install gopls
go get -v golang.org/x/tools/gopls

# install delve
go get -v github.com/go-delve/delve/cmd/dlv
