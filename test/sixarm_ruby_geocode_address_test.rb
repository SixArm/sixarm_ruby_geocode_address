require 'test/unit'
require 'sixarm_ruby_geocode_address'

class GeocodeAddressTest < Test::Unit::TestCase

  ADDR = GeocodeAddress.new("1 Main St, San Francisco, CA 94111")
  EXPECT_HREF = "http://maps.googleapis.com/maps/api/geocode/json?address=1+Main+St,San+Francisco,+CA+94111&sensor=false"
  EXPECT_LAT = 37.7931108
  EXPECT_LNG = -122.3964898

  def test_href
    assert(EXPECT_HREF,ADDR.href)
  end

  def test_uri
    assert_equal(URI.parse(EXPECT_HREF),ADDR.uri)
  end

  def test_get
    assert(get.index("status": "OK") > 0)
  end

  def test_json
    assert(json["status"]=="OK")
  end

  def test_location
    assert_equal({'lat' => EXPECT_LAT, 'lng' => EXPECT_LNG}, ADDR.location)
  end

  def test_lat
    assert_equal(EXPECT_LAT, ADDR.lat)
  end

  def test_lng
    assert_equal(EXPECT_LNG, ADDR.lng)
  end

end

