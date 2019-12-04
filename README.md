## Python3 cfnlint container
#### Tests status

[![Build Status](https://travis-ci.org/pawelpiwosz/docker-cfn-linter.svg?branch=master)](https://travis-ci.org/pawelpiwosz/docker-cfn-linter)
[![](https://images.microbadger.com/badges/image/almerhor/cfnlint:default.svg)](https://microbadger.com/images/almerhor/cfnlint:default "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/almerhor/cfnlint:default.svg)](https://microbadger.com/images/almerhor/cfnlint:default "Get your own version badge on microbadger.com")
[![](https://images.microbadger.com/badges/commit/almerhor/cfnlint:default.svg)](https://microbadger.com/images/almerhor/cfnlint:default "Get your own commit badge on microbadger.com")

### Synopsis

Validate your CloudFormation templates.

### Pull image

In order to pull the image, run:

```
docker pull almerhor/cfnlint
```

### Build

In order to build the image by your own, run:

```
docker build -t cfnlint .
```

### Run container

In order to run the container and check the code, execute:

```
docker run --rm -v $(pwd)/directory:/lintfiles cfnlint \
	files_to_lint
```

Where `$(pwd)/directory` is a place with CloudFormation files to lint.
