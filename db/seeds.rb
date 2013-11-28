# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Admin.destroy_all
User.destroy_all
Tag.destroy_all
Admin.create(email: "pavlifestyle@gmail.com",password:"password",password_confirmation:"password")
User.create(username: "user",email: "user@gmail.com",password:"password",password_confirmation:"password")
Tag.create(name: "c#")
Tag.create(name: "ruby")
Tag.create(name: "rvm")
Tag.create(name: "c++")
Tag.create(name: "objective c")
Tag.create(name: "ruby on rails")
Tag.create(name: "html")
Tag.create(name: "python")
Tag.create(name: "javascript")
Tag.create(name: "scala")
Tag.create(name: "visual basic")
Tag.create(name: "extreme programming")
Tag.create(name: "agile")
Tag.create(name: "scrum")