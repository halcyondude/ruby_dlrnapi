#!/usr/bin/env bash

wget -O /tmp/swagger-codegen-cli-2.2.3.jar https://oss.sonatype.org/content/repositories/releases/io/swagger/swagger-codegen-cli/2.2.3/swagger-codegen-cli-2.2.3.jar

java -jar /tmp/swagger-codegen-cli-2.2.3.jar generate \
    -i https://raw.githubusercontent.com/softwarefactory-project/DLRN/master/doc/api_definition.yaml \
    -l ruby \
    -c swaggerconfig.json \
    -l dynamic-html
    