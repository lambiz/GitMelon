class Player

	@health = 20

  def play_turn(warrior)


  	if warrior.feel.wall? 
  		warrior.pivot!	

  	elsif warrior.feel.captive?
  		warrior.rescue!
    elsif warrior.feel(:backward).captive?
    	warrior.rescue!(:backward)
  	elsif warrior.feel.enemy?
  		warrior.attack!

  	else

  		if warrior.health < 20 && !taking_damage?(warrior)
  			warrior.rest!

  		elsif warrior.look(:forward).empty?
  			warrior.walk

  		#elsif warrior.health < 14 && taking_damage?(warrior)
  			#warrior.walk!(:backward)

  		elsif warrior.look(:backward).any? {|space| space.enemy?}		
  			warrior.shoot!(:backward)	

  		elsif warrior.look(:forward).any? {|space| space.captive?}
  			warrior.walk!

   		elsif warrior.look(:backward).any? {|space| space.captive?}
  			warrior.walk!(:backward)

  		elsif warrior.look(:forward).any? {|space| space.enemy?}		
  			warrior.shoot!	
  		else
  			warrior.walk!

  		end
	end
	@health = warrior.health
end
	def taking_damage?(warrior)
		warrior.health < @health
	end
end
