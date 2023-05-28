# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Generating data... This might take a while'
password = 'codeBy1234'

puts 'Creating task categories...'
(1..15).each do 
  department = Faker::Commerce.department(max: 1)
  TaskCategory.create(
    title: department,
    slug: Faker::Internet.slug(words: department, glue: '-'),
  )
end
puts 'Creating task categories...[DONE]'

task_categories = TaskCategory.all

puts 'Creating customers...'
(1..20).each do
  user = User.create(
    email: Faker::Internet.email,
    password: password,
    password_confirmation: password
  )

  customer_profile = CustomerProfile.create(
    document_number: Faker::Company.brazilian_company_number,
    user_id: user.id,
    picture: "https://robohash.org/#{Random.rand(1..10000)}",
    name: Faker::TvShows::Friends.character,
  )
end
puts 'Creating customers...[DONE]'

customer_profiles = CustomerProfile.all

puts 'Creating tasks...'
(1..Random.rand(5..50)).each do 
  task_category = task_categories[Random.rand(1..(task_categories.count - 1))]
  task_title = Faker::Lorem.sentence
  customer_profile = customer_profiles[Random.rand(1..(customer_profiles.count - 1))]
  raw_description = '<p>' + Faker::Lorem.paragraphs(number: Random.rand(1..10)).join('</p><p>') + '</p>'
  t = Task.create(
    title: task_title,
    slug: Faker::Internet.slug(words: task_title, glue: '-'),
    raw_description: raw_description,
    description: raw_description,
    task_category_id: task_category.id,
    customer_profile_id: customer_profile.id,
  )

end
puts 'Creating tasks...[DONE]'

puts 'Creating professionals...'
(1..40).each do
  user = User.create(
    email: Faker::Internet.email,
    password: password,
    password_confirmation: password
  )
  
  professional_profile = ProfessionalProfile.create(
    name: Faker::TvShows::Friends.character,
    document_number: Faker::Company.brazilian_company_number,
    user_id: user.id,
    picture: "https://robohash.org/#{Random.rand(1..10000)}",
    cv: 'https://msnlabs.com/img/resume-sample.pdf',
  )
end
puts 'Creating professionals...[DONE]'

tasks = Task.all
professional_profiles = ProfessionalProfile.all

puts 'Creating proposals...'
(1..Random.rand(10..50)).each do 
  professional_profile = professional_profiles[Random.rand(1..(professional_profiles.count - 1))]
  task = tasks[Random.rand(1..(tasks.count - 1))]
  proposal = Proposal.create(
    amount: Random.rand(100..10000).to_f,
    task_id: task.id,
    professional_profile_id: professional_profile.id,
  )
end
puts 'Creating proposals...[DONE]'

proposals = Proposal.all

puts 'Creating creating orders...'
(1..100).each do 
  proposal = proposals[Random.rand(1..(proposals.count - 1))]
  customer_profile = customer_profiles[Random.rand(1..(customer_profiles.count - 1))]
  professional_profile = professional_profiles[Random.rand(1..(professional_profiles.count - 1))]
  o = Order.create(
    customer_profile_id: customer_profile.id,
    professional_profile_id: professional_profile.id,
    amount: proposal.amount,
    proposal_id: proposal.id,
    task_id: proposal.task_id,
  )
end
puts 'Creating creating orders...[DONE]'

orders = Order.all

puts 'Creating creating ratings...'
orders.each do |order|
  CustomerProfileRating.create(
    customer_profile_id: order.customer_profile_id,
    professional_profile_id: order.professional_profile_id,
    task_id: order.task_id,
    rating: Random.rand(1..5)
  )
  ProfessionalProfileRating.create(
    professional_profile_id: order.professional_profile_id,
    customer_profile_id: order.customer_profile_id,
    task_id: order.task_id,
    rating: Random.rand(1..5)
  )
end
puts 'Creating creating ratings...[DONE]'
puts 'Generating data...[DONE]'