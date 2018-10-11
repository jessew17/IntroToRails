# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Seeding characters
200.times do 
  Character.create (
    :name => Faker::ElderScrolls.name.unique,
    :race => Faker::ElderScrolls.race
  )
end

#Seeding Creatures
for c in Faker::ElderScrolls.creature.unique do
  Creature.create(:type => c)
end

#Seeding Dragons
for d in Faker::ElderScrolls.dragon.unique do
  Creature.create(:type => d)
end

#Seeding Scenarios
for r in Faker::ElderScrolls.region.unique do
  Scenario.create(
    :region => r,
    :city => Faker::ElderScrolls.city.unique,
    :difficulty => Faker::Number.within(0..1)
    )
end

#Seeding Stats
for r in Faker::ElderScrolls.race.unique do
  Stat.create(
    :type => r,
    :hp => Faker::Number.between(50..100),
    :attack => Faker::Number.between(6..17),
    :armor => Faker::Number.between(5..25)
    )
end

for c in Faker::ElderScrolls.creature.unique do
  Stat.create(
    :type => c,
    :hp => Faker::Number.between(50..100),
    :attack => Faker::Number.between(1..9),
    :armor => Faker::Number.between(0..5)
    )
end

for d in Faker::ElderScrolls.dragon.unique do
  Stat.create(
    :type => d,
    :hp => Faker::Number.between(40..75),
    :attack => Faker::Number.between(3..12),
    :armor => Faker::Number.between(0..10)
    )
end