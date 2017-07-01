'''
Main.py
Simple card came (War)
'''
import WarGame
import random

def test_syntax():
	a = [1,2,3]
	print a
	a.extend([3])
	print a

def unit_testing():
	pass

def main():
	game = WarGame.WarGame()
	game.run()
	# game.disp()

main()
# unit_testing()
# test_syntax()