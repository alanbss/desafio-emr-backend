# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

roles = Role.create([{ name: 'CEO', description: 'Chief Executive Officer', activities: 'Make all the executive related decisions' },
                     { name: 'CTO', description: 'Chief Technologies Officer', activities: 'Make all the technology related decisions' },
                     { name: 'CFO', description: 'Chief Financial Officer', activities: 'Make all the financial related decisions' },
                     { name: 'Full-Stack', description: 'Developer', activities: 'Develop things' },])

4.times do |i|
  Employee.create(first_name: "Nome #{i}", last_name: "Sobrenome #{i}", birthdate: Date.today - (i * 365), admission_date: Date.today - (i * 365), salary: i * 1000, role: roles[i])
end
