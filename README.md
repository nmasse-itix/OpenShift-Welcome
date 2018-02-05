# An example of Legacy Application (CGI-BIN), containerized in OpenShift

## Description

This project is a proof work that shows how to containerize a legacy application
based on CGI. 

## How to deploy this app

```sh
oc new-app https://github.com/nmasse-itix/OpenShift-Welcome.git --name welcome --strategy=docker
oc expose svc welcome
```

This app is based on the [Red Hat SCL HTTP 2.4 image](https://github.com/sclorg/rhscl-dockerfiles/blob/master/rhel7.httpd24/Dockerfile).


