<h1 align="center"> 0x0F. Load balancer </h1>

## | DevOps | SysAdmin |

<p align="center">
  <img src="https://github.com/Ezra-Mallo/0x0F-load_balancer/blob/main/0x0F-load_balancer/images/alx_pic1.png" alt="alx_pic1">
</p>

<p align="center">
  <img src="https://github.com/Ezra-Mallo/0x0F-load_balancer/blob/main/0x0F-load_balancer/images/images_1.gif" alt="alx_pic1">
</p>

[.tech domain](https://get.tech/)
# Concepts
For this project, we expect you to look at these concepts:
* [Load balancer](#load-balancer)
* [Web stack debugging](https://github.com/Ezra-Mallo/alx-system_engineering-devops/blob/master/0x0D-web_stack_debugging_0/web_stack_debugging.md)

# Resources read or watch:

* [Introduction to load-balancing and HAproxy](https://www.digitalocean.com/community/tutorials/an-introduction-to-haproxy-and-load-balancing-concepts)
* [HTTP header](https://www.techopedia.com/definition/27178/http-header)
* [Debian/Ubuntu HAProxy packages](https://haproxy.debian.net/)
* [How to Install and Configure HAProxy on Ubuntu 20.04](https://linuxhostsupport.com/blog/how-to-install-and-configure-haproxy-on-ubuntu-20-04/)
* [nginx documentation](https://nginx.org/en/docs/)
* [nginx Beginner’s Guide](https://nginx.org/en/docs/beginners_guide.html)





## Load balancer
Ever wonder how Facebook, Linkedin, Twitter and other web giants are handling such huge amounts of traffic? They don’t have just one server, but tens of thousands of them. In order to achieve this, web traffic needs to be distributed to these servers, and that is the role of a load-balancer.
<p align="center">
  <img src="https://github.com/Ezra-Mallo/0x0F-load_balancer/blob/main/0x0F-load_balancer/images/load_balance.png" alt="alx_pic1">
</p>

* [Load-balancing](https://www.thegeekstuff.com/2016/01/load-balancer-intro/)
* [Load-balancing algorithms](https://community.f5.com/t5/technical-articles/intro-to-load-balancing-for-developers-the-algorithms/ta-p/273759)








# Background Context
You have been given 2 additional servers:

gc-[STUDENT_ID]-web-02-XXXXXXXXXX
gc-[STUDENT_ID]-lb-01-XXXXXXXXXX

Let’s improve our web stack so that there is redundancy for our web servers. This will allow us to be able to accept more traffic by doubling the number of web servers, and to make our infrastructure more reliable. If one web server fails, we will still have a second one to handle requests.

For this project, you will need to write Bash scripts to automate your work. All scripts must be designed to configure a brand new Ubuntu server to match the task requirements.



