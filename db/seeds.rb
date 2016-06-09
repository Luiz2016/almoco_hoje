Intention.create(name:      'Osvaldo',
                 email:     'oswaldo@gmail.com',
                 interests: 'comida, carros, cor azul e Paulista1',
                 company:   'Empresa Palista',
                 position:  'Diretor na Palista',
                 location:  'Paulista',
                 date:      'Segunda-feira')

Intention.create(name:      'Carlos',
                 email:     'carlos@hotmail.com',
                 interests: 'comida, carros, cor azul e Paulista',
                 company:   'Empresa Extra',
                 position:  'Gerente',
                 location:  'Paulista',
                 date:      'Segunda-feira')

Intention.create(name:      'Alberto',
                 email:     'alberto@gmail.com',
                 interests: 'comida, carros, cor azul e Centro',
                 company:   'Empresa Ford',
                 position:  'Montador',
                 location:  'Centro',
                 date:      'Quarta-feira')

Intention.create(name:      'José',
                 email:     'josé@ig.com',
                 interests: 'comida, carros, cor azul e Berrini',
                 company:   'Empresa IG',
                 position:  'Gerente',
                 location:  'Berrini',
                 date:      'Terça-feira')

Intention.create(name:      'Amanda',
                 email:     'amanda@globo.com',
                 interests: 'comida, carros, cor azul e Berrini',
                 company:   'Empresa Editora Globo',
                 position:  'Gerente',
                 location:  'Berrini',
                 date:      'Terça-feira')

Intention.create(name:      'Maria',
                 email:     'maria@gmail.com',
                 interests: 'comida, carros, cor azul e Centro',
                 company:   'Empresa IG',
                 position:  'Diretora',
                 location:  'Centro',
                 date:      'Quarta-feira')

Restaurant.create(name:     Faker::Name.name,
                  email:    Faker::Internet.email,
                  location: 'Paulista',
                  address:  Faker::Address.street_name)

Restaurant.create(name:     Faker::Name.name,
                  email:    Faker::Internet.email,
                  location: 'Paulista',
                  address:  Faker::Address.street_name)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
