# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

sfo = Airport.create code: 'SFO'
lax = Airport.create code: 'LAX'
sjc = Airport.create code: 'SJC'
oak = Airport.create code: 'OAK'
hwd = Airport.create code: 'HWD'

sfo_lax = Flight.new
sfo_sjc = Flight.new
sfo_oak = Flight.new
sfo_hwd = Flight.new

lax_sfo = Flight.new
lax_sjc = Flight.new
lax_oak = Flight.new
lax_hwd = Flight.new

sfo_lax.from_airport = sfo
sfo_lax.to_airport = lax

sfo_sjc.from_airport = sfo
sfo_sjc.to_airport = sjc

sfo_oak.from_airport = sfo
sfo_oak.to_airport = oak

sfo_hwd.from_airport = sfo
sfo_hwd.to_airport = hwd

lax_sfo.from_airport = lax
lax_sfo.to_airport = sfo

lax_sjc.from_airport = lax
lax_sjc.to_airport = sjc

lax_oak.from_airport = lax
lax_oak.to_airport = oak

lax_hwd.from_airport = lax
lax_hwd.to_airport = hwd

sfo_lax.save
sfo_sjc.save
sfo_oak.save
sfo_hwd.save

lax_sfo.save
lax_sjc.save
lax_oak.save
lax_hwd.save
