#create bullhorn_auth_url
bullhorn_auth_url = "https://auth.bullhornstaffing.com"
client_id = "c3ec2015-0b2c-48a9-9947-9c33e6249ace"
client_secret = "H3k2mpZX0I3Uc5en0JPgGj1M6ojOQ1rH"

# exchange authorization code for access token. we will get back a Net::HTTPResponse
response = google_client.exchange_auth_code_for_token(
  :params => {
    :code => '',
  }
  )
  binding.pry
response.inspect
# => #<Net::HTTPOK:0x007ff8bc7c1200>
binding.pry
response.body
# => {
#  "access_token" : "ya91.AHES8ZS-oCZnc5yHepnsosFjNln9ZKLuioF6FcMRCGUIzA",
#  "token_type" : "Bearer",
#  "expires_in" : 3600,
#  "id_token" : "eyJhbGciOiJSUzI1NiIsImtpZCI6IjY4ZGM2ZmIxNDQ5OGJmMWRhNjNiMWYyMDA2YmRmMDA2N2Q4MzY",
#  "refresh_token" : "6/Ju8uhi9xOctGEyHRzWwHhaYimfxmY0tiJ_qW3qvjWXM"
#}

irb(main):003:0> client_id = "c3ec2015-0b2c-48a9-9947-9c33e6249ace"
=> "c3ec2015-0b2c-48a9-9947-9c33e6249ace"
irb(main):004:0> site_path = "https://auth.bullhornstaffing.com"
=> "https://auth.bullhornstaffing.com"
irb(main):005:0> client_secret = "H3k2mpZX0I3Uc5en0JPgGj1M6ojOQ1rH"
=> "H3k2mpZX0I3Uc5en0JPgGj1M6ojOQ1rH"
irb(main):006:0> authorize_url = 'https://auth.bullhornstaffing.com/oauth/authorize'
=> "https://auth.bullhornstaffing.com/oauth/authorize"
irb(main):007:0> client = OAuth2::Client.new(client_id, client_secret, site: site_path)
=> #<OAuth2::Client:0x007fd5ba955bb8 @id="c3ec2015-0b2c-48a9-9947-9c33e6249ace", @secret="H3k2mpZX0I3Uc5en0JPgGj1M6ojOQ1rH", @site="https://auth.bullhornstaffing.com", @options={:authorize_url=>"/oauth/authorize", :token_url=>"/oauth/token", :token_method=>:post, :connection_opts=>{}, :connection_build=>nil, :max_redirects=>5, :raise_errors=>true}>
