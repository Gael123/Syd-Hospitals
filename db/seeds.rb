# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Hospital.destroy_all
require 'json'
require 'open-uri'

url = URI.escape '(http://dmmw-api.australiaeast.cloudapp.azure.com:8080​ /hospitals​)'
unless url.ascii_only?
user_serialized = URI.open(url).read
user = JSON.parse(user_serialized)

puts "#{user['name']} - #{user['bio']}"
Hospital.create!
end

