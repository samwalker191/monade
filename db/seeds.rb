# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

walker = User.create!(name:'Samuel L. Walker', username: 'ascending_to_a_higher_plane', description: 'he\'s leaving us', password: '123456')
jordan = User.create!(name: 'Jordan Tom', username: 'also_known_as_tom', description: 'your new leader', password: '123456')
ayce = User.create!(name: 'Ayce Lacap', username: 'ace_pun_repo', description: 'your weekend resource', password: '123456')
andy = User.create!(name: 'Andy Huang', username: 'chinese_half_and_half', description: 'he crushes it', password: '123456')
mike = User.create!(name: 'Mike Madsen', username: 'madlad', description: 'he is disappointed', password: '123456')
charis = User.create!(name: 'Charis Ginn', username: 'chairs', description: 'she sees your discord', password: '123456')
jack = User.create!(name: 'Jack Egbert', username: 'get_jacked', description: 'ole reliable', password: '123456')