
class SetupPlayers():	
	''' Getting too big.  Split with WarriorSet class.  
		Purpose:  Set warrior attribute values by asking user and store the Warrior objects; can be retrieved by other classes, like WarriorSet
	'''
	def __init__(self):
		pass
	
	def askPlayer(self):	
		self.askForAttributes()
		# self.setDefaultAttributes()
		self.playerWarrior = Warrior(self.attack, self.defense, self.agility)
		self.computerWarrior = Warrior(5, 3, 7)
	
	def askForAttributes(self):
		self.attack = raw_input("Enter attack value: ")
		self.defense = raw_input("Enter defense value: ")
		self.agility = raw_input("Enter agility value: ")
	
	def setDefaultAttributes(self):
		self.attack = 7
		self.defense = 8
		self.agility = 9

	def getPlayerWarrior(self):
		return self.playerWarrior

	def getComputerWarrior(self):
		return self.computerWarrior
