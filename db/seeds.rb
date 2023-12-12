# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

user_admin = User.where(email: 'admin@user').first_or_initialize
user_admin.update!(
  role: :admin,
  password: 'password',
  password_confirmation: 'password'
)

user_regular = User.where(email: 'regular@user').first_or_initialize
user_regular.update!(
  role: :regular,
  password: 'password',
  password_confirmation: 'password'
)

squier = Brand.where(name: "Squier").first_or_initialize
squier.update!(website: "http://")

jd = Brand.where(name: "Jack & Danny").first_or_initialize
jd.update!(website: "http://")

yamaha = Brand.where(name: "Yamaha").first_or_initialize
yamaha.update!(website: "http://")

boss = Brand.where(name: "Boss").first_or_initialize
boss.update!(website: "http://")

bmg = Brand.where(name: "Brian May Guitar").first_or_initialize
bmg.update!(website: "http://")

epiphone = Brand.where(name: "Epiphone").first_or_initialize
epiphone.update!(website: "http://")
standard = Model.create!(name:"Les Paule Standard", style: :single_cut, brand: epiphone)
Model.create!(name:"Les Paule Standard 50s", style: :single_cut, brand: epiphone)
Model.create!(name:"Les Paule Standard 60s", style: :single_cut, brand: epiphone)
custom = Model.create!(name:"Les Paule Custom", style: :single_cut, brand: epiphone)
Model.create!(name:"Les Paule Junior", style: :single_cut, brand: epiphone)

fender = Brand.where(name: "Fender").first_or_initialize
fender.update!(website: "http://")

gibson = Brand.where(name: "Gibson").first_or_initialize
gibson.update!(website: "http://")

ibanez = Brand.where(name: "Ibanez").first_or_initialize
ibanez.update!(website: "http://")



Guitar.create!(
  name: "My first guitar",
  brand: epiphone,
  model: standard,
  purchase_year: 2009,
  second_hand: false,
  series_number: "09xxx",
  user: user_regular
)