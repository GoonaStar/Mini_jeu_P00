require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'


player1 = Player.new("Eddie") 
player2 = Player.new("Malou")

puts "Voici l'état de nos joueurs :"
	player1.show_state
	player2.show_state
	life_points = 10

puts "\nC'est l'heure du du.du.du.du.duel!"

	while player1.life_points >= 0 && player2.life_points >= 0
		player2.attacks(player1)
		player1.show_state
		
		break if #casser la inner boucle pour éviter que la personne morte attaque
	player1.life_points <=0
	player1.attacks(player2)
	player2.show_state 
	end

	if player1.life_points < player2.life_points 
		puts "#{player2.name} a gagné"
	else
		puts "#{player1.name} a gagné"
	end 


