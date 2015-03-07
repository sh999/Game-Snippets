'''
Create simple battle simulator that can be extended for a bigger game
Simulator mechanics can be as simple as dice-based or 
'''


class Master():
	def __init__(self):
		pass
	def play(self):
		pass

class Warrior():
	def __init__(self, attack, defense, agility):
		self.attack = attack
		self.defense = defense
		self.agility = agility

def introMessage():
	print "\n\n"
	print "=================================="
	print "|| Welcome to Battle Simulator! ||"
	print "=================================="
	print "\n"
	print "You have 100 points to spend" # Implement later
	
class SetupPlayers():	# Getting too big.  Split with WarriorSet class
	def __init__(self):
		pass
	def askPlayer(self):	
		# self.askForAttributes()
		self.setDefaultAttributes()
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
	def getPlayerWarriorStats(self):
		return self.playerWarrior
	def getComputerWarriorStats(self):
		return self.computerWarrior
	def displayStats(self):
		print "\nYour warrior stats: "
		print "Attack: ", self.playerWarrior.attack
		print "Defense: ", self.playerWarrior.defense
		print "Agility: ", self.playerWarrior.agility
		print "\n"
		print "Opponent warrior stats: "
		print "Attack: ", self.computerWarrior.attack
		print "Defense: ", self.computerWarrior.defense
		print "Agility: ", self.computerWarrior.agility
		print "\n"
	def run(self):
		askPlayer()
		displayStats()

class WarriorSet:
	def __init__(self):
		pass

def simulateBattle():
	print "***** !Battle Time! *****"

def main():
	battlesimulator = Master()
	battlesimulator.play()

	introMessage()
	setupPlayers = SetupPlayers()
	setupPlayers.run()
	
	simulateBattle()
	
main()