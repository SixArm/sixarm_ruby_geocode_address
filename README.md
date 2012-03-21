# SixArm.com » Ruby » <br> GeocodeAddress gem to connect to Google Maps API

* Docs: <http://sixarm.com/sixarm_ruby_geocode_address/doc>
* Repo: <http://github.com/sixarm/sixarm_ruby_geocode_address>
* Email: Joel Parker Henderson, <joel@sixarm.com>


## Introduction

GeocodeAddress uses the Google Maps API to geocode an address string to a JSON result.

The address will cache as much as possible as it initializes and calls the Google Maps API.

For docs go to <http://sixarm.com/sixarm_ruby_geocode_address/doc>

Want to help? We're happy to get pull requests.


## Install quickstart

Install:

    gem install sixarm_ruby_geocode_address

Bundler:

    gem "sixarm_ruby_geocode_address", "~>1.0.0"

Require:

    require "sixarm_ruby_geocode_address"


## Install with security (optional)

To enable high security for all our gems:

    wget http://sixarm.com/sixarm.pem
    gem cert --add sixarm.pem
    gem sources --add http://sixarm.com

To install with high security:

    gem install sixarm_ruby_geocode_address --test --trust-policy HighSecurity


## Examples

   address = GeocodeAddress.new("1 Main St, San Francisco, CA 94111")
   address.href  #=> "http://maps.googleapis.com/maps/api/geocode/json?address=1+Main+St,+San+Francisco,+CA+94111&sensor=false"
   address.get  #=> ...calls the Google Maps API via Net::HTTP and returns a JSON-formatted string of results
   address.json  #=> ...calls the Google Maps API via Net::HTTP and returns a JSON parse of results
   address.location  #=> {"lat" => 37.7931108, "lng" => -122.3964898}
   address.lat  #=> 37.7931108
   address.lng  #=> -122.3964898

## Changes

* 2012-03-14 1.0.4 Update docs, tests


## License

You may choose any of these open source licenses:

  * Apache License
  * BSD License
  * CreativeCommons License, Non-commercial Share Alike
  * GNU General Public License Version 2 (GPL 2)
  * GNU Lesser General Public License (LGPL)
  * MIT License
  * Perl Artistic License
  * Ruby License

The software is provided "as is", without warranty of any kind, 
express or implied, including but not limited to the warranties of 
merchantability, fitness for a particular purpose and noninfringement. 

In no event shall the authors or copyright holders be liable for any 
claim, damages or other liability, whether in an action of contract, 
tort or otherwise, arising from, out of or in connection with the 
software or the use or other dealings in the software.

This license is for the included software that is created by SixArm;
some of the included software may have its own licenses, copyrights, 
authors, etc. and these do take precedence over the SixArm license.

Copyright (c) 2005-2013 Joel Parker Henderson
