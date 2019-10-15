require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

#faire un petit design sympa des familles

puts  ''.center(40,'_-')
puts ""
puts "Bienvenue sur 'ILS VEULENT TOUS MA POOP'"
puts "Un Jeu, Un Survivant"
puts "Une Récompense, Un Joker, Un Mensonge"
puts ""
puts  ''.center(40,'-_')
puts ""


#on récupère le nom de l'héros et l'associe à al classe HumanPlayer
#on récupère le nom des ennemis et les associent à al classe Player

puts "Dis Moi Ton Joli Nom, Être Humain:"
	name = gets.chomp.to_s
	heros = HumanPlayer.new("#{name}")
	player1 = Player.new("José")
	player2 = Player.new("Josiane")
	enemis = [player1, player2]
 

#On commence la boucle en mettant une condition d'arrêt

while heros.life_points >0 && (player1.life_points > 0 || player2.life_points > 0)
 	puts "\nVoici ton état, humain:" 
    puts "#{heros.show_state}"

    puts "Quelle action veux-tu effectuer ?"

	puts "\na - chercher une meilleure arme"
    puts "s - chercher à a se soigner"

    puts "\n attaquer un joueur en vue :"
    puts ""
    print "0 - " 
    puts "#{player1.show_state}"
    print "1 - " 
    puts "#{player2.show_state}"
 	
 		print ">" #on demande à l'user de choisir
 			choice = gets.chomp
  				if choice == "a" 
					heros.search_weapon
  				elsif choice == "s" 
 					heros.search_health_pack
  				elsif choice == "0" 
  					puts heros.attacks(player1)
  				elsif choice == "1" 
   					puts heros.attacks(player2)
  				else puts "Me prends pas pour un humain: choisi parmi les options"
  				end
  				gets.chomp

#au tour des ennemis
#si un ennemi a 0 pv il ne peut pas attaquer
  	puts "Les ennemis attaquent!"
  				gets.chomp
  		enemis.each do |i| 
  			if i.life_points > 0
  			i.attacks(heros)
  			end
  			puts ""
  					end
 end

 puts "La fête est finie et...(roulement de tambour)"

  if heros.life_points > 0 
	puts "MAIS OUI MON POULAIN. T'AS GAGNEEE!"
  else 
  	puts "Ah mais t'as perdu en fait. Bien fait. Ahaha."
  end


  




