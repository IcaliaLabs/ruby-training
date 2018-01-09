# Ruby Icalia Labs Training
# Docs:
# https://ruby-doc.org/core-2.4.1/
#

# Working with gems
# Gems: Are the name of the libraries distributed with ruby
#
# Some of the most common ones used by Icalia are:
# Devise - User handling
# Carrierware - Files upload
# Puma - Concurrent Web Server
# PG - Posgresql adapter
# ActiveModelSerializers - JSON API serializers
# Kaminari - Pagination
# MiniMagick - Image processing
# Pry - debugging
# Rspec - Testing

## Go to console and do:
## gem install redcarpet; gem install github-markup

require 'rubygems'
require 'github/markup'
puts GitHub::Markup.render('4.markdown', File.read('./read.markdown'))

## Another beautiful example
## RestClient: Make Web Requests beautifully
## Go to console and do:
## gem install rest-client
## gem install json
## Reference: https://github.com/rest-client/rest-client
require 'rest-client'

## Getting WebSites 
RestClient.get 'http://www.google.com'

## Getting Resources
raw_cities = RestClient.get 'http://www.reserbus.mx/api/v1/cities.json'

## Using those resources
require 'json'
cities = JSON.parse(raw_cities)
cities.each { |city| puts city["name"] }
