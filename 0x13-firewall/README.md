<h1 align="center"> 0x13. Firewall
</h1>

## | DevOps | SysAdmin | Security |
<p align="center">
<img src="https://github.com/Ezra-Mallo/alx-system_engineering-devops/blob/master/0-block_all_incoming_traffic_but/images/alx_pics1.gif" alt="alx_pic1">
</p>

# Resources to read or watch:

* [What is a firewall](https://en.wikipedia.org/wiki/Firewall_%28computing%29)

More Info
As explained in the web stack debugging guide concept page, telnet is a very good tool to check if sockets are open with telnet IP PORT. For example, if you want to check if port 22 is open on web-02:
```
sylvain@ubuntu$ telnet web-02.holberton.online 22
Trying 54.89.38.100...
Connected to web-02.holberton.online.
Escape character is '^]'.
SSH-2.0-OpenSSH_6.6.1p1 Ubuntu-2ubuntu2.8

Protocol mismatch.
Connection closed by foreign host.
sylvain@ubuntu$
```

We can see for this example that the connection is successful: Connected to web-02.holberton.online.

Now let’s try connecting to port 2222:
```
sylvain@ubuntu$ telnet web-02.holberton.online 2222
Trying 54.89.38.100...
^C
sylvain@ubuntu$
```
We can see that the connection never succeeds, so after some time I just use ctrl+c to kill the process.

This can be used not just for this exercise, but for any debugging situation where two pieces of software need to communicate over sockets.

Note that the school network is filtering outgoing connections (via a network-based firewall), so you might not be able to interact with certain ports on servers outside of the school network. To test your work on web-01, please perform the test from outside of the school network, like from your web-02 server. If you SSH into your web-02 server, the traffic will be originating from web-02 and not from the school’s network, bypassing the firewall.

Warning!
Containers on demand cannot be used for this project (Docker container limitation)

Be very careful with firewall rules! For instance, if you ever deny port 22/TCP and log out of your server, you will not be able to reconnect to your server via SSH, and we will not be able to recover it. When you install UFW, port 22 is blocked by default, so you should unblock it immediately before logging out of your server.


### Configuring firewall
When configuring the Uncomplicated Firewall (UFW) in Linux, you can define various rules to control network traffic. Here are some examples of possible UFW rules:

### Allowing SSH access:
```
sudo ufw allow ssh
```
* This rule allows incoming SSH (Secure Shell) connections to your system, allowing remote access for administration.

Enabling HTTP and HTTPS traffic:
```
sudo ufw allow http
sudo ufw allow https
```
* These rules allow incoming HTTP (port 80) and HTTPS (port 443) traffic, enabling web browsing and secure communication.

### Allowing specific ports:
```
sudo ufw allow 8080
sudo ufw allow 123/udp
```
* These rules permit incoming connections on port 8080 and UDP traffic on port 123, which might be used by specific applications or services.

Restricting access to a specific IP address or subnet:
```
sudo ufw allow from 192.168.0.0/24
```
* This rule allows incoming connections only from the specified IP address range (in this case, from the subnet 192.168.0.0/24).

Denying all incoming connections:
```
sudo ufw default deny incoming
```
* This rule sets the default policy to deny all incoming connections, effectively blocking any unrecognized traffic.

Allowing outgoing connections:
```
sudo ufw default allow outgoing
```
* This rule sets the default policy to allow all outgoing connections, ensuring that your system can communicate with external servers.

These are just a few examples of possible UFW rules. You can customize the rules based on your specific requirements and network configuration. It's important to carefully define rules to maintain the desired level of security and accessibility for your system.
<p align="center">
<img src="https://github.com/Ezra-Mallo/alx-system_engineering-devops/blob/master/0x11-what_happens_when_your_type_google_com_in_your_browser_and_press_enter/images/alx_pics2.png" alt="alx_pic1">
</p>

## to configure ufw to redirect from port 8080 to port 80

To configure the ufw firewall on web-01 to redirect port 8080/TCP to port 80/TCP, you can follow these steps:

* SSH into the web-01 server:
```
ssh user@web-01
```

Open the ufw configuration file using a text editor such as nano:
```
sudo nano /etc/ufw/before.rules
```

Scroll to the section where the rules are defined and add the following lines above the *filter line:
```
# rediret port 8080 to port 80
*nat
:PREROUTING ACCEPT [0:0]
-A PREROUTING -p tcp --dport 8080 -j REDIRECT --to-port 80
COMMIT
```
Save the file and exit the text editor.

Restart the ufw firewall to apply the changes:

bash
Copy code
```
sudo ufw disable
sudo ufw enable
```
Verify that the changes have been applied successfully:
lua
Copy code
```
sudo ufw status
```
The output of the sudo ufw status command should show that port 8080 is being redirected to port 80.

Please note that modifying firewall configurations can have security implications. Ensure that you have a thorough understanding of the changes you are making and their potential impact on your system before implementing them.
