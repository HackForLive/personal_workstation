windows_workstation
=============================================

Windows_workstation cookbook provides simple way to manage software packages on Windows workstations without manual installation steps. The list of software packages to be installed and maintained is configurable and boostraping new workstation is pretty easy.

## Bootstrap new Chef node

### Using Openssh on Windows

Download the latest [Win32-OpenSSH](https://github.com/PowerShell/Win32-OpenSSH) release for Windows and run the installer **install-sshd.ps1** located at installation path (for 64 bit version C:\Program Files\OpenSSH-Win64). Configure sshd_config and allow ssh port in Firewall

```
netsh advfirewall firewall add rule name=SSHPort dir=in action=allow protocol=TCP localport=22
```

Make sure OpenSSH authentication agent and OpenSSH SSH server services are running.

From workstation where knife is setup run

```
knife bootstrap host_ip_or_host_name -p host_port -U user_account
```

This should boostrap new Chef node on given host address.

For example

```
knife bootstrap 192.168.0.50 -p 22 -U michael
```

To list available nodes run

```
knife node list
```

To show info about specific node
```
knife node show DESKTOP-Q7ASGBE.home
```

Finally assign policy group and name to particular node

```
knife node policy set DESKTOP-Q7ASGBE.home S1 windows_workstation
```

Now you can check by running chef-client on the node if the expected policy is being executed. 