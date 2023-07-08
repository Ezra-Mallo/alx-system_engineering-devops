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
* [DNS](#dns)
* [Web stack debugging](https://github.com/Ezra-Mallo/alx-system_engineering-devops/blob/master/0x0D-web_stack_debugging_0/web_stack_debugging.md)

# Resources read or watch:
* [What is HTTPS?](https://www.instantssl.com/http-vs-https)
* [What are the 2 main elements that SSL is providing](https://www.sslshopper.com/why-ssl-the-purpose-of-using-ssl-certificates.html)
* [HAProxy SSL termination on Ubuntu16.04](https://docs.ionos.com/cloud/)
* [SSL termination](https://en.wikipedia.org/wiki/TLS_termination_proxy)
* [Bash function](https://tldp.org/LDP/abs/html/complexfunct.html)

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


