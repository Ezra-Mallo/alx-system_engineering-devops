<h1 align="center"> 0x0C. Web server </h1>

## DevOps | SysAdmin

<p align="center">
<img src="https://github.com/Ezra-Mallo/alx-system_engineering-devops/blob/master/0x0C-web_server/images/alx_pic2.png"
	alt="alx_pic1">
</p>
[Watch video](https://www.youtube.com/watch?v=AZg4uJkEa-4&feature=youtu.be&hd=1)

## Concepts
### What is a Child Process?
Although it may sound like something out of a parenting handbook or a psychological journal, the term child process actually has nothing to do with human development. If you run a Unix or Linux dedicated server, you have likely encountered child processes without even knowing it. Therefore, it is good to know what child processes are and how they work.

A child process is a process created by another process. The creator process is properly called the “parent process”. The benefit of a child process is that it can start or stop at will without affecting the parent process. The child process is, however, is typically dependent on the parent process. If the parent process dies, the child process becomes an orphan process.

In normal server operations, the kernel may initiate child processes, and other programs, such as Apache, may have them as well. Apache creates child processes (or children, if you prefer) whenever the number of requests (web page accesses from users) exceeds the maximum allowed number of requests. When the maximum number of child process requests is exceeded, another child process spawns.

To view all running processes along with their child processes in a “tree” format, use the following command:
```
$ ps axf
```
For more information about child processes, [see this documentation.](https://www.gnu.org/software/libc/manual/html_node/Processes.html#Processes)

## Resources read or watch:
* [How the web works](https://developer.mozilla.org/en-US/docs/Learn/Getting_started_with_the_web/How_the_Web_works)
* [Linux SCP Command Explained: Securely Copy & Transfer Files {13 Examples}
](https://phoenixnap.com/kb/linux-scp-command)
* [Nginx](https://en.wikipedia.org/wiki/Nginx)
* [How to Configure Nginx](https://www.digitalocean.com/community/tutorials/how-to-set-up-nginx-server-blocks-virtual-hosts-on-ubuntu-16-04)
* [How To Install Nginx on Ubuntu 16.04: Use this guide to set up Nginx on its own.](https://www.digitalocean.com/community/tutorials/how-to-install-nginx-on-ubuntu-16-04)
* [How To Install Linux, Nginx, MySQL, PHP (LEMP stack) in Ubuntu 16.04: Use this guide if you will be using Nginx in conjunction with MySQL and PHP.](https://www.digitalocean.com/community/tutorials/how-to-install-linux-nginx-mysql-php-lemp-stack-in-ubuntu-16-04)
* [Child process concept page]()
* [Root and sub domain](https://landingi.com/help/domains-vs-subdomains/)
* [HTTP requests](https://www.tutorialspoint.com/http/http_methods.htm)
* [HTTP redirection](https://moz.com/learn/seo/redirection)
* [Not found HTTP response code](https://en.wikipedia.org/wiki/HTTP_404)
* [Logs files on Linux](https://www.cyberciti.biz/faq/ubuntu-linux-gnome-system-log-viewer/)

## Other reference:
* [.TECH Domains](https://intranet.alxswe.com/rltoken/Hcb-pfK8UiDBfwsDJPyZZw)
* [GitHub Student Developer Pack](https://get.tech/github-student-developer-pack)
* [RFC 7231 (HTTP/1.1)](https://datatracker.ietf.org/doc/html/rfc7231)
* [RFC 7540 (HTTP/2)](https://datatracker.ietf.org/doc/html/rfc7540)

### man or help:

* [scp](https://www.softwaretestinghelp.com/scp-command-tutorial/)
* curl

