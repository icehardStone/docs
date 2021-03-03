# 使用 mssql-conf 工具配置 Linux 上的 SQL Server

/opt/mssql/bin/mssql-conf list

``` shell
control.alternatewritethrough              Enable optimized write through flush for O_DSYNC requests
control.hestacksize                        Host extension stack size in KB
control.writethrough                       Use O_DSYNC for file flag write through requests
coredump.captureminiandfull                Capture both mini and full core dumps
coredump.coredumptype                      Core dump type to capture: mini, miniplus, filtered, full
filelocation.defaultbackupdir              Default directory for backup files
filelocation.defaultdatadir                Default directory for data files
filelocation.defaultdumpdir                Default directory for crash dump files
filelocation.defaultlogdir                 Default directory for log files
filelocation.errorlogfile                  Error log file location
filelocation.masterdatafile                Master database data file location
filelocation.masterlogfile                 Master database log file location
hadr.hadrenabled                           Allow SQL Server to use availability groups for high availability and disaster recovery
language.lcid                              Locale identifier for SQL Server to use (e.g. 1033 for US - English)
memory.memorylimitmb                       SQL Server memory limit (megabytes)
network.forceencryption                    Force encryption of incoming client connections
network.ipaddress                          IP address for incoming connections
network.kerberoskeytabfile                 Kerberos keytab file location
network.tcpport                            TCP port for incoming connections
network.tlscert                            Path to certificate file for encrypting incoming client connections
network.tlsciphers                         TLS ciphers allowed for encrypted incoming client connections
network.tlskey                             Path to private key file for encrypting incoming client connections
network.tlsprotocols                       TLS protocol versions allowed for encrypted incoming client connections
sqlagent.databasemailprofile               SQL Agent Database Mail profile name
sqlagent.enabled                           Enable or disable SQLAgent
sqlagent.errorlogfile                      SQL Agent log file path
sqlagent.errorlogginglevel                 SQL Agent logging level bitmask - 1=Errors, 2=Warnings, 4=Info
telemetry.customerfeedback                 Telemetry status
telemetry.userrequestedlocalauditdirectory Directory for telemetry local audit cache
```
