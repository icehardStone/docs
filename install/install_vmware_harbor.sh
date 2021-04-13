#!/bin/bash
# 安装 vmware/harbor
# http://vmware.github.io/harbor/           官方地址

# Hardware

# The following table lists the minimum and recommended hardware configurations for deploying Harbor.
# Resource	Minimum	   Recommended
# CPU	          2 CPU	     4 CPU
# Mem	          4 GB	     8 GB
# Disk	          40 GB	     160 GB

# Software

# The following table lists the software versions that must be installed on the target host.
# Software	Version	Description

# Docker engine	    Version 17.06.0-ce+ or higher	For installation instructions, see Docker Engine documentation
# Docker Compose	Version 1.18.0 or higher	For installation instructions, see Docker Compose documentation
# Openssl	        Latest is preferred	Used to generate certificate and keys for Harbor


# Network ports
# Harbor requires that the following ports be open on the target host.

# Port	Protocol	Description
# 443	HTTPS	    Harbor portal and core API accept HTTPS requests on this port. You can change this port in the configuration file.
# 4443	HTTPS	    Connections to the Docker Content Trust service for Harbor. Only required if Notary is enabled. You can change this port in the configuration file.
# 80	HTTP	    Harbor portal and core API accept HTTP requests on this port. You can change this port in the configuration file.


# Offline installer: 

# Use the offline installer if the host to which are are deploying Harbor does not have a connection to the Internet. 
# The offline installer contains pre-built images, so it is larger than the online installer.

# download addression https://github.com/goharbor/harbor/releases

# To configure HTTPS, you must create SSL certificates. You can use certificates that are signed by a trusted third-party CA, 
# or you can use self-signed certificates. This section describes how to use OpenSSL to create a CA, and how to use your CA to
# sign a server certificate and a client certificate. You can use other CA providers, for example Let’s Encrypt.