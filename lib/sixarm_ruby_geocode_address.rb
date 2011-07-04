# -*- coding: utf-8 -*-

=begin rdoc

= SixArm.com » Ruby » GeocodeAddress gem to connect to Google Maps API

Author:: Joel Parker Henderson, joel@sixarm.com
Copyright:: Copyright (c) 2011 Joel Parker Henderson
License:: See LICENSE.txt file

GeocodeAddress uses the Google Maps API to geocode an address string to a JSON result.

The address will cache as much as possible as it initializes and calls the Google Maps API.

Requires:
  cgi
  net/http
  json

@example
   address = GeocodeAddress.new("1 Main St, San Francisco, CA 94111")
   address.href => "http://maps.googleapis.com/maps/api/geocode/json?address=1+Main+St,+San+Francisco,+CA+94111&sensor=false"
   address.get => ...calls the Google Maps API via Net::HTTP and returns a JSON-formatted string of results
   address.json => ...calls the Google Maps API via Net::HTTP and returns a JSON parse of results
   address.location => {"lat" => 37.7931108, "lng" => -122.3964898}
   address.lat => 37.7931108
   address.lng => -122.3964898

=end

require 'cgi'
require 'net/http'
require 'json'


class GeocodeAddress

  def initialize(s)
    @s=s
  end

  def href
    @href ||= 'http://maps.googleapis.com/maps/api/geocode/json?address=' + CGI.escape(@s) + '&sensor=false'
  end

  def uri
    @uri ||= URI.parse(href)
  end

  def get
    @get ||= Net::HTTP.get(uri)
  end

  def json
    @json ||= JSON.parse(get)
  end

  def location
    @location ||= json['results'][0]['geometry']['location']
  end

  def lat
    location['lat']
  end

  def lng
    location['lng']
  end

end
