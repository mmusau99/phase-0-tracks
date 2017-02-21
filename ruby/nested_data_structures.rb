# nested data structure code, using hashes and arrays and strings

Greatest_movies = {
	matrix:{
		lead_character: "Neo",
		themes:["freedom", "creation", "god", "consciousness", "reality"],
		release_date: 1999

		},
	akira: {
		lead_character: "Kaneda",
		themes: ["god", "power", "corruption", "human divinity", "universal law"],
		release_date: 1988

	},
	fight_club: {
		lead_character: "Tyler Durden",
		themes: ["money", "monotony", "the walking dead", "dystopian societies", "True self"],
		release_date: 1999


		},
	old_boy:{
		lead_character: "Dae-su Oh",
		themes: ["revenge", "heart break", "taboos", "solitude", "violence"],
		release_date: 2003


	}


}
p Greatest_movies[:matrix][:themes][2]
p Greatest_movies[:akira][:release_date]
p Greatest_movies[:old_boy][:themes][2]