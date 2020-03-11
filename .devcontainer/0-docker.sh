# install curl, git, ...
apt-get update
apt-get install -y curl git jq

# install go
VERSION='1.14'
OS='linux'
ARCH='amd64'

curl -OL https://dl.google.com/go/go${VERSION}.${OS}-${ARCH}.tar.gz
tar -C /usr/local -xzf go$VERSION.$OS-$ARCH.tar.gz
rm go$VERSION.$OS-$ARCH.tar.gz

# install gopls, dlv, hey
go get -u golang.org/x/tools/gopls
go get -u github.com/go-delve/delve/cmd/dlv
go get -u github.com/rakyll/hey

# vscode-go dependencies 
# via: https://github.com/microsoft/vscode-go/blob/master/.travis.yml
go get -u -v github.com/acroca/go-symbols
go get -u -v github.com/cweill/gotests/...
go get -u -v github.com/davidrjenni/reftools/cmd/fillstruct
go get -u -v github.com/haya14busa/goplay/cmd/goplay
go get -u -v github.com/mdempsky/gocode
go get -u -v github.com/ramya-rao-a/go-outline
go get -u -v github.com/rogpeppe/godef
go get -u -v github.com/sqs/goreturns
go get -u -v github.com/uudashr/gopkgs/cmd/gopkgs
go get -u -v github.com/zmb3/gogetdoc
go get -u -v golang.org/x/lint/golint
go get -u -v golang.org/x/tools/cmd/gorename

# install az cli
# https://docs.microsoft.com/en-us/cli/azure/install-azure-cli-apt?view=azure-cli-latest
curl -sL https://aka.ms/InstallAzureCLIDeb | bash

# install rust
# https://github.com/rust-lang/rustup.rs/issues/297#issuecomment-444818896
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env
# note: per https://github.com/MicrosoftDocs/vsonline/issues/95 you will need to suspend and unsuspend VSO before the extension will work
