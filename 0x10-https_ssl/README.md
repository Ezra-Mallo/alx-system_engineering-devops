<h1 align="center"> 0x10. HTTPS SSL </h1>

## | DevOps | SysAdmin | Security |

<p align="center">
  <img src="https://github.com/Ezra-Mallo/alx-system_engineering-devops/blob/master/0x10-https_ssl/images/alx_pic1.png" alt="alx_pic1">
            
</p>

<p align="center">
  <img src="https://github.com/Ezra-Mallo/alx-system_engineering-devops/blob/master/0x0F-load_balancer/images/images_1.gif" alt="alx_pic1">
</p>

# Concepts
For this project, we expect you to look at these concepts:
HTTPS (Hypertext Transfer Protocol Secure) is the secure version of HTTP, the protocol used for transmitting data over the internet. It incorporates SSL (Secure Sockets Layer) or its successor, TLS (Transport Layer Security), to provide encryption and authentication for secure communication between a client (usually a web browser) and a server.

The two main roles of HTTPS and SSL/TLS are as follows:

Encryption: The primary role of HTTPS and SSL/TLS is to ensure secure communication by encrypting the data transmitted between the client and the server. Encryption transforms the data into a format that can only be read by authorized parties, preventing unauthorized access or eavesdropping. When a client establishes a connection with an HTTPS-enabled website, SSL/TLS initiates a handshake process, during which the client and server agree on encryption algorithms and exchange cryptographic keys. These keys are then used to encrypt and decrypt data during the session, protecting it from interception or tampering.
Encryption ensures the confidentiality and integrity of the transmitted data, making it extremely difficult for malicious actors to intercept and decipher sensitive information, such as passwords, financial details, or personal data.

Authentication: The second important role of SSL/TLS is to provide authentication. SSL/TLS allows the client to verify the identity of the server it is communicating with, ensuring that it is connecting to the intended and trusted website. Authentication is achieved through the use of digital certificates, which are issued by trusted Certificate Authorities (CAs). These certificates contain the website's public key and are signed by the CA, serving as a digital credential that verifies the authenticity of the website.
* [DNS](#dns)
* [Web stack debugging](https://github.com/Ezra-Mallo/alx-system_engineering-devops/blob/master/0x0D-web_stack_debugging_0/web_stack_debugging.md)

# Resources read or watch:
* [What is HTTPS?](https://www.instantssl.com/http-vs-https)
* [What are the 2 main elements that SSL is providing](https://www.sslshopper.com/why-ssl-the-purpose-of-using-ssl-certificates.html)
* [HAProxy SSL termination on Ubuntu16.04](https://docs.ionos.com/cloud/)
* [SSL termination](https://en.wikipedia.org/wiki/TLS_termination_proxy)
* [Bash function](https://tldp.org/LDP/abs/html/complexfunct.html)

* [use code to install certbort and follow the configuration](#certbot)
* [Certbot](https://certbot.eff.org/)
* [Certbot](https://github.com/certbot/certbot)
* [Install certbot](https://certbot.eff.org/instructions?ws=haproxy&os=ubuntufocal)
* [Install certbot](https://serversforhackers.com/c/letsencrypt-with-haprox)

### man or help:

* [awk](https://linux.die.net/man/1/dig)
* [dig](https://manpages.org/awk)

## DNS
### Basics
DNS is, in simple words, the technology that translates human-adapted, text-based domain names to machine-adapted, numerical-based IP:

* [Learn everything about DNS in cartoon](https://howdns.works/)
Be sure to know the main DNS record types:
* [A](https://support.dnsimple.com/articles/a-record/)
* [CNAME](https://en.wikipedia.org/wiki/CNAME_record)
* [MX](https://en.wikipedia.org/wiki/MX_record)
* [TXT](https://en.wikipedia.org/wiki/TXT_record)

### Advanced
* [Use DNS to scale with round-robin DNS](https://www.dnsknowledge.com/whatis/round-robin-dns/)
* [What’s an NS Record?](https://support.dnsimple.com/articles/ns-record/)
* [What’s an SOA Record?](https://support.dnsimple.com/articles/soa-record/)

### The root domain and sub domain - differences
A root domain is the parent domain to a sub domain, and its name is not, and can not be divided by a dot.

While creating any domain at a website of domain provider, the provider system will always ask you to choose a domain name without a dot in the name. In other words, the address of the root domain may be mydomain.com but it can never be my.domain.com. Domain providers block the ability to create such a root domain until you type a name without the dot. Why?

The dot in the domain name delimits the sub domain name (the part of the name before the dot, eg. www.my.) and the root domain name ( the part after the dot, ie .domain.com). This means that the address my.domain.com is a sub domain of the root domain, whose name is domain.com

In an administrator panel at domain provider account, you can create any number of sub domains. This means that for the root domain called domain.com it is possible to create different sub domains eg. my.domain.com, your.domain.com, school.domain.com… Creating multiple sub domains is always free and does not require you to set up new accounts on a domain provider website.

As you can see, all of the domain addresses used as an example (above) do not start with the www prefix. www is also a sub domain. The www prefix always leads to the main domain. See: [What’s the point in having www in a url?](https://serverfault.com/questions/145777/what-s-the-point-in-having-www-in-a-url)


## certbot
- Run the script with sudo


sudo ./certbot www.yourdomain.tech your_email


- When installation is complete
- We need to configure our haproxy
- sudo vi /etc/haproxy/haproxy.cfg
- You should change the all the content to the content of the following script
- Please edit where necessary(line 37 to 49)
- You will need to put your domain name and web server ip addresses
- Test the validity of your server running the following command
- sudo haproxy -c -f /etc/haproxy/haproxy.cfg
- It should show valid. You can then
- Exit your web_server and then write the same content inside the 1-haproxy_ssl_termination file. Make it executable and push to github. You should be good


[see certbot code here](https://github.com/Ezra-Mallo/alx-system_engineering-devops/blob/master/0x10-https_ssl/certbot)
[see config file here here](https://github.com/Ezra-Mallo/alx-system_engineering-devops/blob/master/0x10-https_ssl/1-haproxy_ssl_termination)

