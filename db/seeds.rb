# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'

5.times do |n|
    a = Event.new
    a.name =  Faker::Company.name
    a.prize_money =  Faker::Number.number(5)
    a.city = Faker::Address.city
    a.state = Faker::Address.state
    a.last_day_apply =  Faker::Date.forward(180)
    a.application_link = Faker::Internet.url

    a.save
end