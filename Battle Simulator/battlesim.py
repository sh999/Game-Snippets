'''
Create simple battle simulator that can be extended for a bigger game
Simulator mechanics can be as simple as dice-based or 
'''

class Warrior():
	def __init__(self, attack, defense, agility):
		self.attack = attack
		self.defense = defense
		self.agility = agility


def main():
	print "\n\n"
	print "=================================="
	print "|| Welcome to Battle Simulator! ||"
	print "=================================="
	print "\n"
	print "You have 100 points to spend" # Implement later
	attack = raw_input("Enter attack value: ")
	defense = raw_input("Enter defense value: ")
	agility = raw_input("Enter agility value: ")
	playerWarrior = Warrior(attack, defense, agility)
	computerWarrior = Warrior(5, 3, 7)
	
	print "\nYour warrior stats: "
	print "Attack: ", playerWarrior.attack
	print "Defense: ", playerWarrior.defense
	print "Agility: ", playerWarrior.agility
	print "\n"
	print "Opponent warrior stats: "
	print "Attack: ", computerWarrior.attack
	print "Defense: ", computerWarrior.defense
	print "Agility: ", computerWarrior.agility
	print "\n"
	print "***** !Battle Time! *****"

main()