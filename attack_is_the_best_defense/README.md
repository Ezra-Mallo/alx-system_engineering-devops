<h1 align="center"> Attack is the best defense</h1>

## DevOps  |  Scripting  |  Hacking

<p align="center">
<img src="https://github.com/Ezra-Mallo/alx-system_engineering-devops/blob/master/attack_is_the_best_defense/images/alx_pics1.png"
	alt="alx_pic1">
</p>


# Concepts
For this project, we expect you to look at these concepts:

[Network basics](https://intranet.alxswe.com/concepts/33)
[Docker](^Docker)


# Resources read or watch:

* [Network sniffing](https://www.lifewire.com/definition-of-sniffer-817996)
* [ARP spoofing](https://www.veracode.com/security/arp-spoofing)
* [Connect to SendGrid’s SMTP relay using telnet](https://docs.sendgrid.com/ui/account-and-settings/troubleshooting-delays-and-latency)
* [What is Docker and why is it popular?](https://www.zdnet.com/article/what-is-docker-and-why-is-it-so-darn-popular/)
* [Dictionary attack](https://en.wikipedia.org/wiki/Dictionary_attack)

## man or help:

* tcpdump
* hydra
* telnet
* docker



### Network basics
Networking is a big part of what made computers so powerful and why the Internet exists. It allows machines to communicate with each other.

* [What is a protocol](https://www.techtarget.com/searchnetworking/definition/protocol)
* [What is an IP address](https://computer.howstuffworks.com/internet/basics/what-is-an-ip-address.htm)
* [What is TCP/IP](https://www.avast.com/c-what-is-tcp-ip#)
* [What is an Internet Protocol (IP) port?](https://www.lifewire.com/port-numbers-on-computer-networks-817939)







### Docker
Readme
* [What is Docker and why is it popular?](https://www.zdnet.com/article/what-is-docker-and-why-is-it-so-darn-popular/)
Let’s first pull a Docker image and run a container:
```
vagrant@ubuntu-xenial:~$ docker ps
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
vagrant@ubuntu-xenial:~$ docker run -d -ti ubuntu:16.04
Unable to find image 'ubuntu:16.04' locally
16.04: Pulling from library/ubuntu
34667c7e4631: Pull complete
d18d76a881a4: Pull complete
119c7358fbfc: Pull complete
2aaf13f3eff0: Pull complete
Digest: sha256:58d0da8bc2f434983c6ca4713b08be00ff5586eb5cdff47bcde4b2e88fd40f88
Status: Downloaded newer image for ubuntu:16.04
e1fc0d4bbb5d3513b8f7666c91932812da7640346f6e05b7cfc3130ddbbb8278
vagrant@ubuntu-xenial:~$ docker ps
CONTAINER ID        IMAGE               COMMAND             CREATED              STATUS              PORTS               NAMES
e1fc0d4bbb5d        ubuntu:16.04        "/bin/bash"         About a minute ago   Up About a minute                       keen_blackwell
vagrant@ubuntu-xenial:~$
```
Note that docker command will pull the Ubuntu docker container image from the Internet and run it. I let you look at the meaning of the flags using the command docker run --help, the main idea is that it keeps the container up and running.

To execute a command on the Docker container, use docker exec:

```
vagrant@ubuntu-xenial:~$ docker exec -i e1fc0d4bbb5d hostname
e1fc0d4bbb5d
vagrant@ubuntu-xenial:~$ hostname
ubuntu-xenial
vagrant@ubuntu-xenial:~$
```
If you want to connect to your Docker container and use Bash, you need to use docker exec -ti:
```
vagrant@ubuntu-xenial:~$ docker exec -ti e1fc0d4bbb5d /bin/bash
root@e1fc0d4bbb5d:/# echo "I am in $(hostname) Docker container"
I am in e1fc0d4bbb5d Docker container
root@e1fc0d4bbb5d:/# exit
exit
vagrant@ubuntu-xenial:~$
```
If you want to stop a container, use docker stop:

```
vagrant@ubuntu-xenial:~$ docker ps
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
e1fc0d4bbb5d        ubuntu:16.04        "/bin/bash"         5 minutes ago       Up 5 minutes                            keen_blackwell
vagrant@ubuntu-xenial:~$ docker stop e1fc0d4bbb5d
e1fc0d4bbb5d
vagrant@ubuntu-xenial:~$ docker ps
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
vagrant@ubuntu-xenial:~$
```
