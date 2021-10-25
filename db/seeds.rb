# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@category1 = Category.create({ name: 'NFL' })
subcategories1 = ['AFC East', 'AFC North', 'AFC South', 'AFC West', 'NFC East', 'NFC North', 'NFC South', 'NFC West']
subcategories1.each { |subcategory| @category1.subcategories.create({ name: subcategory }) }

categories = ['NBA', 'MLB', 'NHL', 'CBB', 'CFB', 'Nascar', 'Golf', 'Soccer', 'Team Hub', 'Lifestyle', 'Dealbook', 'Video']
categories.each { |category| Category.create({ name: category }) }
