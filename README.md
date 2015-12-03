# Ansible docker generator
A tool for generating a dockerfile with some ansible templates.

## Generate dockerfile

```
generate/generate.sh tomcat-image
```

This command will generate a Dockerfile, a yml and a hosts file:

* Dockerfile.tomcat-image
* ansible/tomcat-image.yml
* ansible/hosts/hosts.tomcat-image

You can edit ansible/tomcat-image.yml to add some roles from [ansible/ansible-examples](https://github.com/ansible/ansible-examples) and build a docker image using:

```
docker build -t tomcat-image -f Dockerfile.tomcat-image . 
```

## Destroy dockerfile

If you don't need this dockerfile any more, you can destroy it using:

```
generate/destroy.sh tomcat-image
```
