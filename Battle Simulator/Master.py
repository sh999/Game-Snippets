class Master():
	'''
	Master game class.  Currently its only job is to display message
	May be expanded to includ e menu-related or big game logic behavior, not specific gameplay
	'''
	def __init__(self):
		pass
	
	def introMessage(self):
		print ("\n\n")
		print ("==================================")
		print ("|| Welcome to Battle Simulator! ||")
		print ("==================================")
		print ("\n")
		print ("You have 100 points to spend") # Implement later
	
	def displayStats(self, playerWarrior, computerWarrior):
		print ("\nYour warrior stats: ")
		print ("Attack: ", playerWarrior.getAttack())
		print ("Defense: ", playerWarrior.getDefense())
		print ("Agility: ", playerWarrior.getAgility())
		print ("\n")
		print ("Opponent warrior stats: ")
		print ("Attack: ", computerWarrior.getAttack())
		print ("Defense: ", computerWarrior.getDefense())
		print ("Agility: ", computerWarrior.getAgility())
		print ("\n")
