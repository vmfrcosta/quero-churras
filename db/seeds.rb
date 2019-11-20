# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Booking.destroy_all
Grill.destroy_all

addresses = ["Rua mourato coelho, 800",
              "Rua Oscar Freire, 2008",
              "Rua Rodrigues de Abreu, 291 - Itaguá",
              "Rua Catão, 618",
              "Rua Iaiá, 213",
              "Rua Epeira, 192 - Alto de Pinheiros São Paulo - SP",
              "Avenida Santo Antônio, 815",
              "Rua José Manoel Rodrigues, 458 - Cintra Gordinho",
              "Rua da Pátria, 809 - Vila Magini Mauá - SP"
            ]

types = ["Churrasqueira a Gas", "Churrasqueira Eletrica", "Churrasqueira a Carvao"]

prices = (10..30).to_a

10.times do |i|
  grill = Grill.new(
    user: User.find(1),
  	name: types.sample,
  	description: "descrição #{i}",
    address:  addresses[i],
    price: prices.sample,
    grills_type: true,
    status: true
  	)
  grill.save

  booking = Booking.new(
  	user: User.find(1),
  	grill: grill,
  	check_in: Date.today,
  	check_out: Date.today,
  	address: addresses[i]
    )
  booking.save
end
