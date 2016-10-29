require 'open-uri'
require 'set'
require 'net/http'
require 'json'

# sample PUT
# uri = URI("http://localhost:3000/users/1.json")
# http = Net::HTTP.new(uri.host, uri.port)
# uri.query = URI.encode_www_form({
#   "first_name" => "John",
#   "last_name" => "Smith"
# })
# request = Net::HTTP::Put.new(uri.request_uri)
# request.initialize_http_header({"Content-Type" => 'application/json'})
# response = http.request(request)
# puts response.code
# puts JSON.parse(response.body)

# sample POST
uri = URI("http://localhost:3000/users.json")
http = Net::HTTP.new(uri.host, uri.port)
uri.query = URI.encode_www_form({
  "first_name" => "John",
  "last_name" => "Smith"
})
request = Net::HTTP::Post.new(uri.request_uri)
request.initialize_http_header({"Content-Type" => 'application/json'})
response = http.request(request)
puts response.code
puts JSON.parse(response.body)

# sample DELETE
# uri = URI("http://localhost:3000/users/2.json")
# http = Net::HTTP.new(uri.host, uri.port)
# uri.query = URI.encode_www_form({
#   "first_name" => "John",
#   "last_name" => "Smith"
# })
# request = Net::HTTP::Delete.new(uri.request_uri)
# request.initialize_http_header({"Content-Type" => 'application/json'})
# response = http.request(request)
# puts response.code
# puts JSON.parse(response.body)