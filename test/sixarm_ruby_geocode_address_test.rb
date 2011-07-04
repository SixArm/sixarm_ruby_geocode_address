# -*- coding: utf-8 -*-
require 'simplecov'
SimpleCov.start
require 'test/unit'
require 'sixarm_ruby_geocode_address'

class GeocodeAddressTest < Test::Unit::TestCase

  GEO = GeocodeAddress.new("1 Main St, San Francisco, CA 94111")
  EXPECT_HREF = "http://maps.googleapis.com/maps/api/geocode/json?address=1+Main+St%2C+San+Francisco%2C+CA+94111&sensor=false"
  EXPECT_LAT = 37.7931108
  EXPECT_LNG = -122.3964898

  def test_href
    assert(EXPECT_HREF,GEO.href)
  end

  def test_uri
    assert_equal(URI.parse(EXPECT_HREF),GEO.uri)
  end

  def test_get
    assert_not_equal(-1, GEO.get.index("status: "))
  end

  def test_json
    assert_equal("OK", GEO.json["status"])
  end

  def test_location
    assert_equal({'lat' => EXPECT_LAT, 'lng' => EXPECT_LNG}, GEO.location)
  end

  def test_lat
    assert_equal(EXPECT_LAT, GEO.lat)
  end

  def test_lng
    assert_equal(EXPECT_LNG, GEO.lng)
  end

end

