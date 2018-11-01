# fission-dep

This repo contains a Docker image. You can build [fission](https://github.com/fission/fission) or your repo forked from origin repo.

## Why do we use this image?

### Special China

Couse we are in China now. There is no real internet here. Downloading dependencies is difficult. So I packed all dependencies fission needs in a image. I'm NOT glad to know you need it in this way.

### Nested dependencies

As the [issue](https://github.com/kubeless/kubeless/issues/46) said, fission has a nested dependencies problem. So you should us `glide install --strip-vendor` to load all dependencies. But fission official document don't details this. I'm glad to know you need this image in this way.