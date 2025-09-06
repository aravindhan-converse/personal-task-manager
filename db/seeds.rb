# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb

User.find_or_create_by(email: 'admin@example.com') do |user|
  user.password = '123456'
end

User.find_or_create_by(email: 'john.doe@example.com') do |user|
  user.password = '123456'
end

# Create Tasks
50.times do |i|
  Task.find_or_create_by(title: "Task 00#{i + 1}",
                        description: "This is a description for Task #{i + 1}.",
                        due_date: Date.today + 2.days,
                        category: "personal",
                        user_id: 1)
end

10.times do |i|
  Task.find_or_create_by(title: "Task No 00#{i + 1}",
                        description: "This is a description for Task #{i + 1}.",
                        due_date: Date.today + 2.days,
                        category: "personal",
                        user_id: 2)
end

puts "Finished creating tasks."

puts "Seed data created successfully!"