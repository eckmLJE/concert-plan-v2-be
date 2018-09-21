# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

new_user_params = {name: "jim", email: "jim@example.com", password: "jim", password_confirmation: "jim"}
jim = User.create(new_user_params)

plan = Plan.create(name: "a plan")

jim.plans << plan