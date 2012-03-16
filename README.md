# SixArm.com » Ruby » <br> GeocodeAddress gem to connect to Google Maps API

* Docs: <http://sixarm.com/sixarm_ruby_geocode_address/doc>
* Repo: <http://github.com/sixarm/sixarm_ruby_geocode_address>
* Email: Joel Parker Henderson, <joel@sixarm.com>


## Introduction

GeocodeAddress uses the Google Maps API to geocode an address string to a JSON result.

The address will cache as much as possible as it initializes and calls the Google Maps API.

For docs go to <http://sixarm.com/sixarm_ruby_geocode_address/doc>

Want to help? We're happy to get pull requests.


## Quickstart

Install:

    gem install sixarm_ruby_geocode_address

Bundler:

    gem "sixarm_ruby_geocode_address", "=1.0.0"

Require:

    require "sixarm_ruby_geocode_address"


## Examples

   address = GeocodeAddress.new("1 Main St, San Francisco, CA 94111")
   address.href  #=> "http://maps.googleapis.com/maps/api/geocode/json?address=1+Main+St,+San+Francisco,+CA+94111&sensor=false"
   address.get  #=> ...calls the Google Maps API via Net::HTTP and returns a JSON-formatted string of results
   address.json  #=> ...calls the Google Maps API via Net::HTTP and returns a JSON parse of results
   address.location  #=> {"lat" => 37.7931108, "lng" => -122.3964898}
   address.lat  #=> 37.7931108
   address.lng  #=> -122.3964898

