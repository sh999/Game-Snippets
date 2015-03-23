'''
Create simple battle simulator that can be extended for a bigger game
Simulator mechanics can be as simple as dice-based or 
'''


class Master():
	'''
	Master game class.  Currently its only job is to display message
	May be expanded to includ e menu-related or big game logic behavior, not specific gameplay
	'''
	def __init__(self):
		pass
	
	def introMessage(self):
		print "\n\n"
		print "=================================="
		print "|| Welcome to Battle Simulator! ||"
		print "=================================="
		print "\n"
		print "You have 100 points to spend" # Implement later
	
	def displayStats(self, playerWarrior, computerWarrior):
		print "\nYour warrior stats: "
		print "Attack: ", playerWarrior.getAttack()
		print "Defense: ", playerWarrior.getDefense()
		print "Agility: ", playerWarrior.getAgility()
		print "\n"
		print "Opponent warrior stats: "
		print "Attack: ", computerWarrior.getAttack()
		print "Defense: ", computerWarrior.getDefense()
		print "Agility: ", computerWarrior.getAgility()
		print "\n"

class Warrior():
	def __init__(self, attack, defense, agility):
		self.attack = attack
		self.defense = defense
		self.agility = agility

	def getAttack(self):
		return self.attack

	def getDefense(self):
		return self.defense

	def getAgility(self):
		return self.agility
	
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

class WarriorSet:
	'''
	Holds player and computer warriors
	'''
	def __init__(self, warrior1, warrior2):
		self.warrior1 = warrior1
		self.warrior2 = warrior2

	def printWarriors(self):
		print self.warrior1
		print self.warrior2

class Simulation():
	def __init__(self):
		pass

	def setWarriors(self, warrior1, warrior2):
		self.warrior1 = warrior1
		self.warrior2 = warrior2

	def run(self):
		print "***** !Battle Time! *****"
		print self.warrior1
		print self.warrior2

def main():
	battlesimulator = Master()
	battlesimulator.introMessage()
	setupPlayers = SetupPlayers()
	setupPlayers.askPlayer()
	battlesimulator.displayStats(Warrior(1, 2, 3), Warrior(4, 5, 6))
	warriorSet = WarriorSet(Warrior(1, 2, 3), Warrior(4, 5, 6))
	warriorSet.printWarriors()
	simulation = Simulation()
	simulation.setWarriors(Warrior(1, 2, 3), Warrior(4, 5, 6))
	simulation.run()

def miniSimulation():
	simulation = Simulation()
	simulation.setWarriors(Warrior(1, 2, 3), Warrior(4, 5, 6))
	simulation.run()
		
# main()
miniSimulation()