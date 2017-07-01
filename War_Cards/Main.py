'''
Main.py
Simple card came (War)
'''
import WarGame
import random
import Deck

class testclass:
	def __init__(self):
		pass
	@staticmethod
	def hi():
		print "hi"

def test_syntax():
	print Deck.Deck.larger_than((1,22),(3,4))

def unit_testing():
	pass

def main():
	game = WarGame.WarGame()
	game.run()
	# game.disp()

main()
# unit_testing()
# test_syntax()