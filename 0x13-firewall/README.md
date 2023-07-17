<h1 align="center"> 0x13. Firewall
</h1>

## | DevOps | SysAdmin | Security |
<p align="center">
<img src="https://github.com/Ezra-Mallo/alx-system_engineering-devops/blob/master/0-block_all_incoming_traffic_but/images/alx_pics1.gif" alt="alx_pic1">
</p>

# Background Context
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
