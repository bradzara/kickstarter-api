# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


# categories = ['Art', 'Comics', 'Crafts', 'Dance', 'Design', 'Fashion', 'Film', 'Food', 'Games', 'Journalism', 'Music', 'Photography, Publishing', 'Technology', 'Theater']

# # populate categories (MODEL SHOULD NOT ALLOW DUPLCATES)
# categories.each do |c|
#   cat = Category.new(name: c)
#   cat.save
# end


# 3.times do
#   proj = Project.new(title: description: )


# end