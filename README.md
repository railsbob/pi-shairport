Pi-Shairport
============

This is a puppet recipe to install [shairport](https://github.com/abrasive/shairport) on a Raspberry Pi running [raspbian wheezy](http://www.raspbian.org/).

## Requirements

* Raspberry Pi running [raspbian wheezy](http://www.raspbian.org/)
* SSH enabled and connected to the network

## Getting started

1. Copy your public key to the Raspberry Pi to allow ssh login without a password.
````
  cat ~/.ssh/id_rsa.pub | ssh pi@<ip-address> "mkdir ~/.ssh; cat >> ~/.ssh/authorized_keys"
````

2. Bootstrap raspbian wheezy - run this on the Pi.
````
  curl -sSL https://raw2.github.com/railsbob/puppet-pi_shairport/master/bootstrap.sh | sudo bash
````
This will install the necessary packages required to run the puppet recipe.

3. Initiate a puppet run from your machine.
````
  git clone git@github.com:railsbob/puppet-pi_shairport.git
  cd puppet-pi_shairport
  ./puppet-run.sh <ip-address>
````
That's it! The command will install shairport and configure it to run on the boot. Reboot the pi and you should see an Airplay logo on your iTunes status bar. Select 'Shairport on raspberrypi' and test the streaming by connecting a headphone to the 3.5mm audio port.

### Credits

* James Laird for [shairport](https://github.com/abrasive/shairport)
* Nathan Howard for the [puppet example](https://github.com/cornet/puppet-example)
