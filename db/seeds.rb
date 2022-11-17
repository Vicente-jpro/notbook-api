# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cadastrando os tipos de contactos..."
Kind.create!(
    [
        { 
            description: "Home"
        },
        { 
            description: "Company"
        },
        { 
            description: "School"
        }
    ]
)

puts "Fim do cadastrando dos tipos contactos"

puts "Cadastrando os contactos..."
Contact.create!(
    [
        { 
            name: "Star Wars",
            email: "vicenteviciii@gmail.com", 
            birthdate: "12/12/2022",
            kind_id: Kind.first.id
        },
        { 
            name: "Ruby",
            email: "star@gmail.com", 
            birthdate: "12/12/2022",
            kind_id: Kind.last.id
        },
        { 
            name: "Rails",
            email: "rails@gmail.com", 
            birthdate: "12/12/2022",
            kind_id: Kind.first.id
        }
    ]
)

puts "Fim do cadastrando dos contactos"

