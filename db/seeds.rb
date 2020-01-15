kal = Writer.create(handle: "KalMega", password: "KalMega", icon: "KAL")
angel = Character.create(name: "Angel", blurb: "Stunt Actress and Mercenary", writer_id: kal.id)
dojo = Location.create(name: "Matt's Dojo", blurb: "Training Front for the Mob", writer_id: kal.id)
Haunt.create(location_id: dojo.id, character_id: angel.id, blurb: "Angel learned Fiore de Liberi from Matt")