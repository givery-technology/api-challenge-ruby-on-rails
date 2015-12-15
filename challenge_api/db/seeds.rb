# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u = User.create(username: "user1", password: "password", email: "user1@test.com", birthday: "1991-04-17", company: "company1", location: "location1")
u = User.create(username: "user2", password: "password", email: "user2@test.com", birthday: "1989-04-17", company: "company2", location: "location2")
u = User.create(username: "user3", password: "password", email: "user3@test.com", birthday: "1995-04-17", company: "company3", location: "location1")
u = User.create(username: "user4", password: "password", email: "user4@test.com", birthday: "1987-04-17", company: "company2", location: "location1")
u = User.create(username: "user5", password: "password", email: "user5@test.com", birthday: "1999-04-17", company: "company2", location: "location2")
u = User.create(username: "user6", password: "password", email: "user6@test.com", birthday: "1994-04-17", company: "company1", location: "location2")