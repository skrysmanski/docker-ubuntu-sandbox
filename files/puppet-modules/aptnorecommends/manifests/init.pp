class aptnorecommends {
	file { "/etc/apt/apt.conf.d/02no-recommends":
		ensure => file,
		content => file('aptnorecommends/02no-recommends'),
		owner => 'root',
		group => 'root',
		mode => '0644',
	}
}
