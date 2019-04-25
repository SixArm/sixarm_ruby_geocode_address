# SixArm.com → Ruby → <br> GeocodeAddress gem to connect to Google Maps API

* Doc: <http://sixarm.com/sixarm_ruby_geocode_address/doc>
* Gem: <http://rubygems.org/gems/sixarm_ruby_geocode_address>
* Repo: <http://github.com/sixarm/sixarm_ruby_geocode_address>
<!--header-shut-->


## Introduction

GeocodeAddress uses the Google Maps API to geocode an address string to a JSON result.

The address will cache as much as possible as it initializes and calls the Google Maps API.

For docs go to <http://sixarm.com/sixarm_ruby_geocode_address/doc>

Want to help? We're happy to get pull requests.


<!--install-open-->

## Install

### Gem

To install this gem in your shell or terminal:

    gem install sixarm_ruby_geocode_address

### Gemfile

To add this gem to your Gemfile:

    gem 'sixarm_ruby_geocode_address'

### Require

To require the gem in your code:

    require 'sixarm_ruby_geocode_address'

<!--install-shut-->


## Examples

   address = GeocodeAddress.new("1 Main St, San Francisco, CA 94111")
   address.href  #=> "http://maps.googleapis.com/maps/api/geocode/json?address=1+Main+St,+San+Francisco,+CA+94111&sensor=false"
   address.get  #=> ...calls the Google Maps API via Net::HTTP and returns a JSON-formatted string of results
   address.json  #=> ...calls the Google Maps API via Net::HTTP and returns a JSON parse of results
   address.location  #=> {"lat" => 37.7931108, "lng" => -122.3964898}
   address.lat  #=> 37.7931108
   address.lng  #=> -122.3964898
