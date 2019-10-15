require "pry"

class Player

	attr_accessor :name

	def initialize(name)
		@name = name 
		@life_points = 10
	end 

	def life_points 
		return @life_points
	end

	def show_state
		puts "#{@name} a #{@life_points} points de vie"
	end

	def gets_damage(dmg_received)
		dmg_received.to_i
		@life_points = @life_points - dmg_received
			if @life_points <= 0
				@life_points = 0
				puts "#{name} s'est envolé vers d'autre ciels'"
			end
	end

	def attacks(opponent)
		puts "#{@name} attacks #{opponent.name}"
		dmg_caused = compute_damage
		puts "BIM!! #{dmg_caused} points dans sa bouche"
		opponent.gets_damage(dmg_caused) #important le opponent sinon le mec s'inglige lui-même des dommages lol
	end

	def compute_damage
		return rand(1..6)
	end

end

#Hop là nouvelle classe


class HumanPlayer < Player 

attr_accessor :weapon_level

def initialize(name)
	
	super (name)
	@weapon_level = 1 
	@life_points = 100

end

def show_state
		puts "#{@name} a #{@life_points} points de vie et une arme de niveau #{weapon_level}"
	end

def compute_damage
    rand(1..6) * @weapon_level
 end

def search_weapon
	new_weapon_level = rand(1..6)
	puts "Tu as trouvé une arme de niveau #{new_weapon_level}"
		if new_weapon_level > @weapon_level
			@weapon_level = new_weapon_level
			puts "Cool. Gardes-la nouvelle, occupes toi d'elle comme si c'était ton fils"
		else
			puts "Osef. Jettes la comme si c'était ton partenaire"
		end
end

def search_health_pack
	value = rand(1..6)
		case value
		when 1
			puts "Aussi vide que ta vie sociale en ce moment"
		when 2..5
			if @life_points + 50 <100
				@life_points = @life_points + 50
			elsif 
				@life_points == 100
			end
			puts "50 <3 pour toi"
		when 6 
			if life points + 80 <100
				@life_points = @life_points + 58
			elsif 
				@life_points == 100
			end
			puts "80 <3 pour toi"
		end

end

end


