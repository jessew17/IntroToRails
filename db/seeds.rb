# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Seeding characters
100.times do
  Character.create(
    :name => Faker::ElderScrolls.unique.name,
    :race => Faker::ElderScrolls.race
  )
end

#Seeding Creatures
30.times do
  Creature.create(:name => Faker::ElderScrolls.unique.creature)
end

#Seeding Dragons
15.times do 
  Creature.create(:name => Faker::ElderScrolls.unique.dragon)
end

#Seeding Scenarios
9.times do
  Scenario.create(
    :region => Faker::ElderScrolls.unique.region,
    :city => Faker::ElderScrolls.unique.city,
    :difficulty => Faker::Number.within(0..1)
    )
end

#Seeding Stats
10.times do
  Stat.create(
    :species => Faker::ElderScrolls.unique.race,
    :hp => Faker::Number.between(50..100),
    :attack => Faker::Number.between(6..17),
    :armor => Faker::Number.between(5..25)
    )
end

Creature.each do |c|
  Stat.create(
    :species => c.type,
    :hp => Faker::Number.between(50..100),
    :attack => Faker::Number.between(1..9),
    :armor => Faker::Number.between(0..5)
    )
end

Dragon.each do |d|
  Stat.create(
    :species => d.type,
    :hp => Faker::Number.between(40..75),
    :attack => Faker::Number.between(3..12),
    :armor => Faker::Number.between(0..10)
    )
end