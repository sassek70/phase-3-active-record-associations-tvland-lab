Actor.destroy_all
Show.destroy_all
Character.destroy_all
Network.destroy_all


jimmy = Actor.create(first_name: "Jimmy", last_name: "John")
ducky = Actor.create(first_name: "Ducky", last_name: "McQuack")
mallard = Actor.create(first_name: "Mallard", last_name: "Drallam")
ducky = Actor.create(first_name: "Ducky", last_name: "Duck")

wwtd = Network.create(call_letters: "WWTD", channel: 34)
mlrd = Network.create(call_letters: "MLRD", channel: 1)

duckVenture = Show.create(name: "DuckVenture", day: "Tuesday", season: "Fall", genre: "Comedy", network_id: wwtd.id)
duckaluck = Show.create(name: "Duck a Luck", day: "Monday", season: "Winter", genre: "Game Show", network_id: mlrd.id)
wtd = Show.create(name: "What. The. Deuck.", day: "Friday", season: "All Year", genre: "Paranormal", network_id: wwtd.id)

dorky = Character.create(name: "Dorky Duck", catchphrase: "Quack Quack MotherTrucker", actor_id: jimmy.id, show_id: duckVenture.id)
fluffery = Character.create(name: "Fluffery", catchphrase: "What the fluff", actor_id: ducky.id, show_id: wtd.id)
fluffery2 = Character.create(name: "Flufferyeriy", catchphrase: "What the fluffaluffagus?!", actor_id: ducky.id, show_id: wtd.id)
