class Dog
	attr_accessor :name, :health, :stamina, :strength
	def initialize(name, health, stamina, strength)
		@health = health
		@stamina = stamina
		@strength = strength
		@name = name
	end

	def bark
		puts 'woof woof'
		@stamina -=5
		@strength +=3
	end	

	def fetch
		puts 'dog fetch ball'
		@stamina -=7

	end	
end

dog1 = Dog.new('tyrone', 100, 75, 30)

dog1.fetch()


class User
	def initialize(name, health, weight, stamina, thirst)
		@name = name
		@health = health
		@weight = weight
		@stamina = stamina
		@thirst = thirst
	end

	def introduction
		puts 'hi my name is ' + @name.to_s
	end

	def illness
		@health -= 1
		@stamina -= 2
		puts 'heath and stamina are ' + @health.to_s + ' ' + @stamina.to_s
	end


	def exercise
		@weight -= 1
		@thirst += 10
		@health += 1
		@stamina += 1

		puts 'weight, thirst, health, and stamina are ' + @weight.to_s + ' ' + @thirst.to_s
		+ ' ' + @health.to_s + ' ' + @stamina.to_s
	end	

	def eatUnhealthy
		@weight += 1
		@health -=1

		puts 'heath and weight are ' + @health.to_s + ' ' + @weight.to_s
	end	

	def drinkWater
		@thirst -= 5
		puts 'thirst is ' + @thirst.to_s
	end		

end 

man = User.new('Bob', 100, 160, 60, 50)

man.introduction()

man.illness()

man.eatUnhealthy()

man.exercise()

man.drinkWater()

