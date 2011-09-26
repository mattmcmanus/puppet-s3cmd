class s3cmd {
	package {   
    's3cmd': ensure => present; 
  }
  
  file { "s3cfg":
    path => "/root/.s3cfg",
    content => template("s3cmd/s3cfg.erb"),
    ensure => present
  }
  
}