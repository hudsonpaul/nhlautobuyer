require 'net/http'
require 'faraday'
require 'nokogiri'
require 'active_support/core_ext/hash/conversions'
require 'awesome_print'

connection = Faraday::Connection.new 'https://walams.tools.gos.ea.com/', :ssl => { :verify => false } do |c|
	c.use Faraday::Adapter::NetHttp
end

connection.headers[:user_agent] = 'NHL® 14 App/1.0.1 CFNetwork/672.0.8 Darwin/14.0.0'

response = connection.get '/wal/nhl-2014-ps3-ios/authentication/expressLogin?pass=Asdhkewr13&pnam=beigesunshine&mail=state_of_denial@hotmail.com'

authentication_hash = Hash.from_xml(response.body)
ap authentication_hash

session_key = authentication_hash["fulllogin"]["sessioninfo"]["sessionkey"]

response = connection.get "/wal/nhl-2014-ps3-ios/authentication/validateSessionKey/#{session_key}?skey=#{session_key}"

verification_hash = Hash.from_xml(response.body)
ap verification_hash

user_id = verification_hash["sessioninfo"]["personadetails"]["personaid"]
user_name = verification_hash["sessioninfo"]["personadetails"]["displayname"]

response = connection.get "/wal/nhl-2014-ps3-ios/cardhouse/isWatchList/#{session_key}?uid=#{user_id}&st=0&num=45&srt=0"

watch_hash = Hash.from_xml(response.body) 
ap watch_hash
