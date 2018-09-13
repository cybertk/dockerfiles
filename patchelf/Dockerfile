FROM alpine:3.8 as builder

LABEL maintainer "Quanlong <kyan.ql.he@gmail.com>"

# Latest commit in master branch on 2018-08-09
ARG version=27ffe8a

WORKDIR /build

# Build-time dependencies
RUN apk add --no-cache curl build-base automake autoconf

# Build, see https://github.com/NixOS/patchelf
# - Updated version, i.e. '27ffe8a (2018/08/09)'
# - Built target saved in WORKDIR
RUN curl -OL https://github.com/NixOS/patchelf/archive/$version.zip && \
    unzip $version.zip && \
    cd patchelf-* && \
    echo "$version ($(date '+%Y/%m/%d'))" >version && \
    ./bootstrap.sh && \
    ./configure && \
    make && \
    mv src/patchelf ../


FROM alpine:3.8

# Run-time dependencies
RUN apk add --no-cache libstdc++

COPY --from=builder /build/patchelf /usr/local/bin/

ENTRYPOINT ["patchelf"]
