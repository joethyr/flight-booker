# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Airport.create([
  { code: "ATL" },
  { code: "DFW" },
  { code: "DEN" },
  { code: "ORD" }
])

Flight.create([
  { depart_airport_id: 1, arrival_airport_id: 2, duration: 120, depart_time: "2022-06-01 10:00:00" },
  { depart_airport_id: 2, arrival_airport_id: 1, duration: 90, depart_time: "2022-06-01 15:30:00" },
  { depart_airport_id: 3, arrival_airport_id: 4, duration: 180, depart_time: "2022-06-01 13:00:00" },
  { depart_airport_id: 1, arrival_airport_id: 2, duration: 160, depart_time: "2022-06-01 9:15:00" }
])
