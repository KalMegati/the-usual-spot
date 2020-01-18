kal = Writer.create(handle: "KalMega", password: "KalMega", icon: "KAL")
will = Writer.create(handle: "WillGibson", password: "WillGibson", icon: "GIB")
shiro = Writer.create(handle: "MasaShiro", password: "MasaShiro", icon: "OTA")

angel = Character.create(name: "Sydney Agnel", blurb: "Thrill-Seeking Stunt Actress", writer_id: kal.id)
goldie = Character.create(name: "Francis LeBlanc", blurb: "Social-Climber and TV Producer", writer_id: kal.id)
johnny = Character.create(name: "Johnny Mnemonic", blurb: "Anti-Establishment Data Trafficker", writer_id: will.id)
molly = Character.create(name: "Molly Millions", blurb: "Street Samurai running from her past", writer_id: will.id)
makoto = Character.create(name: "Makoto Kusunagi", blurb: "Ruthless Cyborg Operative", writer_id: shiro.id)
batou = Character.create(name: "Jean de Bateau", blurb: "Laid-back Cyborg Ranger", writer_id: shiro.id)

dojo = Location.create(name: "Matt's Dojo", blurb: "Training Front for the Mob", writer_id: kal.id)
e_street = Location.create(name: "Electro Street", blurb: "Enclave of Freelance Mechanics that make Specialized Custom Works", writer_id: kal.id)
ballroom = Location.create(name: "The Blue Ballroom", blurb: "Fancy Restaurant with Shady Backers", writer_id: will.id)
tower = Location.create(name: "Millenium Tower", blurb: "Massive Skyscraper at the Center of many Corporate Schemes", writer_id: will.id)
head_q = Location.create(name: "Security Section 9", blurb: "HQ for AntiTerror Operations", writer_id: shiro.id)
fizz = Location.create(name: "Fizz and Ginger", blurb: "Dive Bar where the Scum Meet", writer_id: shiro.id)

Haunt.create(location_id: dojo.id, character_id: angel.id, blurb: "Angel learned Fiore de Liberi from Matt")
Haunt.create(location_id: ballroom.id, character_id: johnny.id, blurb: "Johnny takes requests over dinner in the private booths")
Haunt.create(location_id: head_q.id, character_id: makoto.id, blurb: "Major Kusunagi works for SS9")

