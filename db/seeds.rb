# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Airport.create([
  { code: "ATL" },
  { code: "DEN" },
  { code: "DFW" }
])

Flight.create([
  { depart_airport_id: 1, arrival_airport_id: 2, duration: 120, depart_time: "2022-06-07" },
  { depart_airport_id: 1, arrival_airport_id: 2, duration: 90, depart_time: "2022-06-08" },
  { depart_airport_id: 1, arrival_airport_id: 3, duration: 240, depart_time: "2022-06-13" },
  { depart_airport_id: 2, arrival_airport_id: 1, duration: 120, depart_time: "2022-06-13" },
  { depart_airport_id: 2, arrival_airport_id: 3, duration: 140, depart_time: "2022-06-21" },
  { depart_airport_id: 2, arrival_airport_id: 3, duration: 80, depart_time: "2022-06-21" },
  { depart_airport_id: 3, arrival_airport_id: 1, duration: 150, depart_time: "2022-07-05" },
  { depart_airport_id: 3, arrival_airport_id: 1, duration: 120, depart_time: "2022-07-05" },
  { depart_airport_id: 3, arrival_airport_id: 2, duration: 110, depart_time: "2022-07-05" }
])
