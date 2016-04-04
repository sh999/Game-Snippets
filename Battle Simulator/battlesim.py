'''
Create simple battle simulator that can be extended for a bigger game
Simulator mechanics can be as simple as dice-based or 
'''

import random
import Master
from Warrior import *
import SetupPlayers
import WarriorSet
import Simulation
from  Die import *
from BattleStats import *

def damageCalculator(dieMax1, dieMax2):
	'''
	Uses Die objects to calculate damage
	'''
	die1 = Die(dieMax1)
	die1.getValue()
	die2 = Die(dieMax2)
	die2.getValue()
	damage = die1.getValue() - die2.getValue()
	if damage < 0: # Disallows negative damage
		damage = 0
	print "damage = ", damage
	return damage

def determineAttacker(warrior1, warrior2):
	'''
	Whoever has the higher agility roll attacks first
	'''
	die1 = Die(warrior1.getAgility())
	die2 = Die(warrior2.getAgility())
	diff = die1.getValue() - die2.getValue()

	while diff == 0:
		die1.roll()
		die2.roll()
		diff = die1.getValue() - die2.getValue()
	if diff > 0:
		print warrior1.getName(), "attacks"
		attacker = warrior1
	elif diff < 0:
		print warrior2.getName(), "attacks"
		attacker = warrior2
	return attacker

def determineDefender(attacker,warrior1,warrior2):
	if attacker == warrior1:
		defender = warrior2
	else:
		defender = warrior1
	return defender

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

def dieTest():
	damageCalculator(6, 6)

def printCondition(warrior):
	print warrior.getName(), "HP =", warrior.getHealth()

def battleWithDice():
	'''
	Simulate damage with simple die mechanism
	'''
	myWarrior = Warrior(6, 5, 9)
	compWarrior = Warrior(8, 4, 8)
	myWarrior.setName("My warrior");
	compWarrior.setName("Computer warrior");
	divider = "-" * 10
	battleStats = BattleStats(myWarrior, compWarrior)
	while myWarrior.getHealth() > 0 and compWarrior.getHealth() > 0:
		print divider
		printCondition(myWarrior)
		printCondition(compWarrior)
		attacker = determineAttacker(myWarrior, compWarrior)
		defender = determineDefender(attacker, myWarrior, compWarrior)
		damage = damageCalculator(attacker.getAttack(), defender.getDefense())
		defender.reduceHealth(damage)
		battleStats.addRounds()
		battleStats.recordDamage(myWarrior.getHealth(), compWarrior.getHealth())
		a = raw_input()
	if myWarrior.getHealth() <= 0:
		print myWarrior.getName(), "is dead!"
		battleStats.setWinner(compWarrior)
	else:
		print compWarrior.getName(), "is dead!"
		battleStats.setWinner(myWarrior)
	print divider
	print "Battle stats:"
	print "Winner = ", battleStats.getWinner()
	print "Total rounds = ", battleStats.getRounds()
	print "HP history = "
	print myWarrior.getName(), "  = ", battleStats.getHistory(myWarrior)
	print compWarrior.getName(), "= ", battleStats.getHistory(compWarrior)

def testAgility():
	'''
	Simulate who attacks first depending on agility value
	'''
	myWarrior = Warrior(5, 4, 11)
	compWarrior = Warrior(5, 4, 11)
	determineAttacker(myWarrior, compWarrior)

battleWithDice()
# testAgility()
# dieTest()
# main()
# miniSimulation()