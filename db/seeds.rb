# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Seeding characters
Faker::ElderScrolls.name.each do |n|
  Character.create(
    :name => n,
    :race => Faker::ElderScrolls.race
  )
end

#Seeding Creatures
Faker::ElderScrolls.creature.each do |c|
  Creature.create(:type => c)
end

#Seeding Dragons
Faker::ElderScrolls.dragon.each do |d|
  Creature.create(:type => d)
end

#Seeding Scenarios
Faker::ElderScrolls.region.each do |r|
  Scenario.create(
    :region => r,
    :city => Faker::ElderScrolls.unique.city,
    :difficulty => Faker::Number.within(0..1)
    )
end

#Seeding Stats
Faker::ElderScrolls.race.each do |r|
  Stat.create(
    :type => r,
    :hp => Faker::Number.between(50..100),
    :attack => Faker::Number.between(6..17),
    :armor => Faker::Number.between(5..25)
    )
end

Faker::ElderScrolls.creature.each do |c|
  Stat.create(
    :type => c,
    :hp => Faker::Number.between(50..100),
    :attack => Faker::Number.between(1..9),
    :armor => Faker::Number.between(0..5)
    )
end

Faker::ElderScrolls.dragon.each do |d|
  Stat.create(
    :type => d,
    :hp => Faker::Number.between(40..75),
    :attack => Faker::Number.between(3..12),
    :armor => Faker::Number.between(0..10)
    )
end