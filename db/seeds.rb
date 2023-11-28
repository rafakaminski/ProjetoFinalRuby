# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

State.create(id: 49, description: 'Santa Catarina', acronym: 'SC')

State.create(id: 11, description: 'São Paulo', acronym: 'SP')

State.create(id: 79, description: 'Sergipe', acronym: 'SE')

State.find_or_create_by!(id: 13, description: 'Brasília', acronym: 'DF')