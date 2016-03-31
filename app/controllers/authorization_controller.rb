# Oauth2 code from github - where to put it? here?
class AuthorizationController < ApplicationController::Base
  require 'oauth2'

  client = OAuth2::Client.new(ENV[CLIENT_ID], ENV[CLIENT_SECRET], :site => 'https://auth.bullhornstaffing.com/oauth/authorize')

  client.auth_code.authorize_url(:redirect_uri => 'http://localhost:3000/oauth2/callback')
# => "https://example.org/oauth/authorization?response_type=code&client_id=client_id&redirect_uri=http://localhost:8080/oauth2/callback"

  token = client.auth_code.get_token('authorization_code_value', :redirect_uri => 'http://localhost:3000/oauth2/callback', :headers => {'Authorization' => 'Basic some_password'})
  response = token.get('/api/resource', :params => { 'query_foo' => 'bar' })
  response.class.name
end

# auth_url = client.auth_code.authorize_url(redirect_uri: 'http://localhost:8080/oauth/callback')
# token = client.auth_code.get_token('code_value', redirect_uri: 'http://localhost:8080/oauth/callback')
#
# auth_url = client.implicit.authorize_url(redirect_uri: 'http://localhost:8080/oauth/callback')
# # get the token params in the callback and
# token = OAuth2::AccessToken.from_kvform(client, query_string)
#
# token = client.password.get_token('username', 'password')
#
# token = client.client_credentials.get_token
#
# token = client.assertion.get_token(assertion_params)
