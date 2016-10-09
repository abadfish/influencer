# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
<<<<<<< HEAD
tech = Industry.create(name: "Tech")
health = Industry.create(name: "Healthcare")
finance = Industry.create(name: "Finance")
creative = Industry.create(name: "Creative")
=======
Industry.create(name: "Tech")
Industry.create(name: "Medicine")
Industry.create(name: "Finance")
Industry.create(name: "Design")

#8 mentors 
User.create(email: "mentor 1@email.com", role: 1, password: "password")
User.create(email: "mentor 2@email.com", role: 1, password: "password")
User.create(email: "mentor 3@email.com", role: 1, password: "password")
User.create(email: "mentor 4@email.com", role: 1, password: "password")
User.create(email: "mentor 5@email.com", role: 1, password: "password")
User.create(email: "mentor 6@email.com", role: 1, password: "password")
User.create(email: "mentor 7@email.com", role: 1, password: "password")
User.create(email: "mentor 8@email.com", role: 1, password: "password")
#10 mentees
User.create(email: "mentee 1@email.com", role: 2, password: "password")
User.create(email: "mentee 2@email.com", role: 2, password: "password")
User.create(email: "mentee 3@email.com", role: 2, password: "password")
User.create(email: "mentee 4@email.com", role: 2, password: "password")
User.create(email: "mentee 5@email.com", role: 2, password: "password")
User.create(email: "mentee 6@email.com", role: 2, password: "password")
User.create(email: "mentee 7@email.com", role: 2, password: "password")
User.create(email: "mentee 8@email.com", role: 2, password: "password")
User.create(email: "mentee 9@email.com", role: 2, password: "password")
User.create(email: "mentee 1@email.com0", role: 2, password: "password")
>>>>>>> cb7ea01c11de346402319a0ad93f02b7479650dd
