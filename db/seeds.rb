# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
event = Event.create([{ name: 'Mobile', description: 'testando os meios de uma api' }, { name: 'Web', description: 'testando os meios de uma api'}, { name: 'API', description: 'testando os meios de uma api'}])

user = User.create([{ name: 'Eder', email: 'test_eder@gmail.com', password: '1234567'  }, { name: 'Lidiane', email: 'test_lidiane@gmail.com', password: '1234567'  }])
