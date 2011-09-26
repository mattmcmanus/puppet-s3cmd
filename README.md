## s3cmd Puppet Module

__Work in progress__

Installs and automatically configures s3cmd. Useful for use with other modules or classes that have backup functionality

### Required Varibles

* **$aws_access_key_id**
$ **$aws_secret_access_key**

### Sample Setup

    $aws_access_key_id="xxxx"
    $aws_secret_access_key="xxxxx"
    
    include s3cmd
    
### Modules using puppet-s3cmd

* [puppet-mysql](https://github.com/mattmcmanus/puppet-mysql)