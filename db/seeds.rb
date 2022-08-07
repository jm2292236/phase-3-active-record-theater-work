puts "🌱 Seeding started..."

puts "Creating roles..."
kramer = Role.create(character_name: "Kramer (Seinfeld)")
george = Role.create(character_name: "George (Seinfeld)")
elaine = Role.create(character_name: "Elaine (Seinfeld)")

niles = Role.create(character_name: "Niles (Frasier)")
marty = Role.create(character_name: "Marty (Frasier)")

puts "Creating auditions..."
mw = Audition.create(actor: "Michael Williams", location: "NY", phone: 123, hired: true, role: kramer)
og = Audition.create(actor: "Other guy", location: "NY", phone: 000, hired: false, role: kramer)
omg = Audition.create(actor: "one more guy", location: "NY", phone: 000, hired: false, role: kramer)

ja = Audition.create(actor: "Jason Alexander", location: "NY", phone: 123, hired: true, role: george)
og = Audition.create(actor: "one more guy", location: "NY", phone: 000, hired: false, role: george)
lg = Audition.create(actor: "last guy", location: "NY", phone: 000, hired: false, role: george)

dhp = Audition.create(actor: "David Hyde Pierce", location: "Seattle", phone: 123, hired: true, role: niles)
og = Audition.create(actor: "one more guy", location: "Boston", phone: 000, hired: false, role: niles)
lg = Audition.create(actor: "last guy", location: "Tacoma", phone: 000, hired: false, role: niles)

jm = Audition.create(actor: "John Mahoney", location: "Seattle", phone: 123, hired: false, role: marty)
og = Audition.create(actor: "one more guy", location: "Vancouver", phone: 000, hired: false, role: marty)
lg = Audition.create(actor: "last guy", location: "Portland", phone: 000, hired: false, role: marty)

puts "🌱 Seeding done!"
