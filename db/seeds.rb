# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Question.create([
  { title: 'What is the supreme law of the land?', answer: ['the Constitution'] },
  { title: 'What does the Constitution do?', answer: ['sets up the government', 'defines the government', 'protects basic rights of Americans']},
  { title: 'The idea of self-government is in the first three words of the Constitution. What are these words?', answer: ['We the People'] },
  ])
