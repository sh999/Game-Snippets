
class Warrior():
	def __init__(self, attack, defense, agility):
		self.attack = attack
		self.defense = defense
		self.agility = agility
		self.health = 30

	def getAttack(self):
		return self.attack

	def getDefense(self):
		return self.defense

	def getAgility(self):
		return self.agility

	def setName(self, name):
		self.name = name

	def getName(self):
		return self.name

	def getHealth(self):
		return self.health

	def reduceHealth(self,points):
		self.health -= points
	