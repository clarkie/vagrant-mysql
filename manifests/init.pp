# init.pp

/* update all packages */
exec { "apt-get":
	command	=> "/usr/bin/apt-get update",
}

/* get htop */
package { "htop":
	ensure	=> present,
	require	=> Exec["apt-get"],
}


/* add the virtualbox host ip */
host { "hostmachine":
	ip	=> "10.0.2.2",
}