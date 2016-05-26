# rpi-docker-setup
A script to install Docker on Raspbery Pi

This script uses Hypriot's Docker distribution. This is the most up to date, best maintained ARM version of Docker I have seen so far.  

# Execution
- `wget https://raw.githubusercontent.com/tyrell/rpi-docker-setup/master/scripts/rpi-docker-setup.sh`
- `sh rpi-docker-setup.sh`

# Verification

Run the version command.

`docker version`

You will see the output below. Note the build date.

	Client:
	 Version:      1.11.1
	 API version:  1.23
	 Go version:   go1.4.3
	 Git commit:   5604cbe
	 Built:        Mon May  9 00:50:14 2016
	 OS/Arch:      linux/arm
	
	Server:
	 Version:      1.11.1
	 API version:  1.23
	 Go version:   go1.4.3
	 Git commit:   5604cbe
	 Built:        Mon May  9 00:50:14 2016
	 OS/Arch:      linux/arm

## License
Copyright (c) 2016 Tyrell Perera <tyrell.perera@gmail.com>
Licensed under the MIT license.


