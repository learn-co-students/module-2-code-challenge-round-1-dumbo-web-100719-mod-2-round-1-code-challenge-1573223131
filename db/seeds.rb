# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Guest.destroy_all

require 'csv'

# csv_text = File.read(Rails.root.join('lib', 'seeds', 'daily_show_guests.csv'))
# csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
# csv.first(100).each do |row|
#   g = Guest.find_or_initialize_by(name: row['Raw_Guest_List'].split(',').first )
#   g.occupation = row['GoogleKnowlege_Occupation']
#   g.save
# end

# date = Date.parse('2015-09-08')

# (1..40).each do |num|
#   Episode.create(date: date, number: num)
#   date = date.next
# end

bri = Guest.create(name: "Bri", occupation: "Therapist")
hami = Guest.create(name: "Hami", occupation: "Basketball Player")
raq = Guest.create(name: "Raq", occupation: "Singer")
alina = Guest.create(name: "Alina", occupation: "Coding Instructor")

episode1 = Episode.create(date: "2015-09-08", number: 6)
episode2 = Episode.create(date: "2019-10-08", number: 9)
episode3 = Episode.create(date: "2019-11-09", number: 4)
episode4 = Episode.create(date: "2011-1-1", number: 5)

appearance1 = Appearance.create(episode_id: episode1.id, guest_id: bri.id, rating: 4)
appearance2 = Appearance.create(episode_id: episode2.id, guest_id: hami.id, rating: 2)
appearance3 = Appearance.create(episode_id: episode3.id, guest_id: raq.id, rating: 1)
appearance4 = Appearance.create(episode_id: episode4.id, guest_id: alina.id, rating: 5)
appearance5 = Appearance.create(episode_id: episode4.id, guest_id: raq.id, rating: 4)
appearance5 = Appearance.create(episode_id: episode4.id, guest_id: hami.id, rating: 5)
