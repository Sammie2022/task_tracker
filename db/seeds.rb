# db/seeds.rb
Project.destroy_all
Issue.destroy_all

3.times do |i|
  project = Project.create!(
    title: "Project #{i + 1}",
    description: "Description for project #{i + 1}"
  )

  5.times do |j|
    project.issues.create!(
      title: "Issue #{j + 1}",
      status: %w[New In\ Progress Closed].sample,
      priority: rand(1..5)
    )
  end
end
puts "Seeded #{Project.count} projects and #{Issue.count} issues"
