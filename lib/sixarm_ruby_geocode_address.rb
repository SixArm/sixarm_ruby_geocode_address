# -*- coding: utf-8 -*-
=begin rdoc
Please see README
=end

require "cgi"
require "net/http"
require "json"


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
