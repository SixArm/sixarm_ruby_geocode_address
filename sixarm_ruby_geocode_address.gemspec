Gem::Specification.new do |s|

  CLASSES             = []
  TEST_FILES          = []

  s.name              = "sixarm_ruby_geocode_address"
  s.summary           = "SixArm Ruby Gem: sixarm_ruby_geocode_address"
  s.version           = "1.0.0"
  s.author            = "SixArm"
  s.email             = "sixarm@sixarm.com"
  s.homepage          = "http://sixarm.com"
  s.signing_key       = '/home/sixarm/keys/certs/sixarm-rsa1024-x509-private.pem'
  s.cert_chain        = ['/home/sixarm/keys/certs/sixarm-rsa1024-x509-public.pem']

  s.platform          = Gem::Platform::RUBY
  s.require_path      = 'lib'
  s.has_rdoc          = true
  s.files             = ['lib/sixarm_ruby_geocode_address.rb']
  s.test_files        = ['test/sixarm_ruby_geocode_address_test.rb']

  s.files             = ['README.rdoc','LICENSE.txt','lib/sixarm_ruby_geocode_address.rb'] + CLASSES.map{|c| "lib/{name}/#{c}.rb"} + TEST_FILES.map{|f| "test/{name}/#{f}"}
  s.test_files        = CLASSES.map{|c| "test/sixarm_ruby_ramp/#{c}_test.rb"}

  #s.add_dependency('foo', '>=0.0.0')

end

