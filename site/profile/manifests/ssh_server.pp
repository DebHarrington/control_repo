class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCvYL/VbLATT7wYo59WpdflftVm63tSl+kgPIvUeblXCF8J/wC7vJDObwXYprZZVJWtCAYEgBCrAOBfC2Xw
zNHTKCLCBKNlQqnGwcvYUstAZvzL3lnki7urRoHc+Halq9oqCch/hXMCkbxZp4MR+6dIRfJUQLTGG9k8x5Pc3nXGpaa4ORjo5bNZZfpey9lqajjwDkGi/70Z
bftflNAdCrsITYIzgBaE/DDLEw1mFDuoZHtJzbfvlldQI0Y4CHvg9cKIivAzRhgbkmzNtD/Ca23xo4RfCsarsVlEtIEsMbsdLbj2JAOTVp2f0LnCeRLFDRuv
vi5L7bcP14vhBqdzol1D root@master.puppet.vm',
	}  
}
