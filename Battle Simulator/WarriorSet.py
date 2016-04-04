
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
