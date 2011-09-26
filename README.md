# s3cmd Puppet Module

*Work in progress*

Installs and automatically configures [s3cmd](http://s3tools.org/s3tools). Useful for use with other modules or classes that have backup functionality

## Required Varibles

* **$aws_access_key_id**
* **$aws_secret_access_key**

## Sample Setup

    $aws_access_key_id="xxxx"
    $aws_secret_access_key="xxxxx"
    
    include s3cmd
    
    cron { 'mysql_backup_s3':
      command => "s3cmd sync --delete-removed --skip-existing /var/backup/mysql/ s3://${s3_bucket}/databases/",
      user => 'root',
      minute => 5,
      hour => 2,
    }
    
## Modules using puppet-s3cmd

* [puppet-mysql](https://github.com/mattmcmanus/puppet-mysql)