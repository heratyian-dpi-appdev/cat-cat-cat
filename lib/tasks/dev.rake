desc "Hydrate the database with some sample data to look at so that developing is easier"
task({ :sample_data => :environment }) do
  10.times do |i|
    Cat.create(name: Faker::Creature::Cat.name)
  end
end
