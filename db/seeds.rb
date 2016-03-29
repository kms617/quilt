# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

01.upto(31) do |d|
  8.upto(18) do |h|
    Timeslot.create(start_time: DateTime.strptime("03/#{d}/2016 #{h}:00", "%m/%d/%Y %H:%M"))
    Timeslot.create(start_time: DateTime.strptime("03/#{d}/2016 #{h}:30", "%m/%d/%Y %H:%M"))
  end
end

01.upto(30) do |d|
  8.upto(18) do |i|
    Timeslot.create(start_time: DateTime.strptime("04/#{d}/2016 #{i}:00", "%m/%d/%Y %H:%M"))
    Timeslot.create(start_time: DateTime.strptime("04/#{d}/2016 #{i}:30", "%m/%d/%Y %H:%M"))
  end
end
