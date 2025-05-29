require "faker"

puts "Cleaning database..."
Issue.destroy_all
Project.destroy_all

STATUSES = ["New", "In Progress", "Closed"]

puts "Creating projects and issues..."

project_titles = ["Alpha", "Beta", "Gamma"]

project_titles.each do |title|
  project = Project.create!(
    title: title,
    description: Faker::Lorem.paragraph(sentence_count: 2)
  )

  rand(3..7).times do
    project.issues.create!(
      title: Faker::Lorem.sentence(word_count: 3),
      status: STATUSES.sample,        # Must be one of "New", "In Progress", or "Closed"
      priority: rand(1..5)            # Integer 1 to 5 inclusive
    )
  end
end

puts "Seeding complete."
