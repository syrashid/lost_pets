# Remember, create does the action of new and save all in one go.  If you want to see errors returned when using this method just add the !

Pet.create(name: 'dory', address: 'ocean', species: 'fish', found_on: Date.new(2020,3,21))

Pet.create(name: 'nemo', address: 'ocean', species: 'fish', found_on: Date.new(2020,3,21))

Pet.create(name: 'salem', address: 'burke', species: 'cat', found_on: Date.new(2020,3,14))

Pet.create(name: 'wishbone', address: 'melbourne', species: 'dog', found_on: Date.new(2020,3,14))

Pet.create(name: 'clifford', address: 'sydney', species: 'dog', found_on: Date.today)
