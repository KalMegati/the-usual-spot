kal = Writer.create(handle: "KalMega", password: "KalMega", icon: "KAL")
angel = Character.create(name: "Angel", blurb: "Stunt Actress and Mercenary", writer_id: kal.id)
dojo = Location.create(name: "Matt's Dojo", blurb: "Training Front for the Mob", writer_id: kal.id)
Haunt.create(location_id: dojo.id, character_id: angel.id, blurb: "Angel learned Fiore de Liberi from Matt")

will = Writer.create(handle: "WillGibson", password: "WillGibson", icon: "GIB")
johnny = Character.create(name: "Johnny Mnemonic", blurb: "Data Trafficker", writer_id: will.id)
ballroom = Location.create(name: "The Blue Ballroom", blurb: "Fancy Restaurant with Shady Backers", writer_id: will.id)
Haunt.create(location_id: ballroom.id, character_id: johnny.id, blurb: "Johnny takes requests over dinner in the private booths")

molly = Character.create(name: "Molly Millions", blurb: "Razorgirl Samurai", writer_id: will.id)
fizz = Location.create(name: "Fizz and Ginger", blurb: "Dive Bar where the Scum Meet", writer_id: will.id)
Haunt.create(location_id: fizz.id, character_id: angel.id, blurb: "Angel spends slow nights at the bar after a big job")