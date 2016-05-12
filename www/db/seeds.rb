# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "set admin user..."
admin = User.create!(email: 'root@jibako.com', password: 'zxcvasdf')
admin.save

puts "set admin user..."
admin = User.create!(email: 'admin@opulunion.com', password: 'password')
admin.save

puts 'set SiteConfig'
Admin::SiteConfig.create!(:title => "OpulUnion")

puts "set About"
about = Admin::About.create()
Admin::Staff.create!(:about_id => about.id)

puts "set Story"
Admin::Story.create()
