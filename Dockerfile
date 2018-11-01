FROM golang:1.11
RUN \
    # install glide
    curl https://glide.sh/get | sh && \
    # clone fission repo
    export MYREPO="https://git.xfyun.cn/pengqiao/dagger.git" && \
    git clone $MYREPO /go/src/github.com/fission/fission && \
    cd /go/src/github.com/fission/fission && \
    # load dependencies
    glide install --strip-vendor && \
    # mv all dependecies from vendor to $GOPATH/src/
    cd /go/ && \
    mv /go/src/github.com /go/github.com && \
    mv /go/github.com/fission/fission/vendor/* /go/src/ && \
    # clean fission repo
    rm -r ./github.com