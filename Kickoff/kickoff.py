'''
Simulate kickoff return in a football game
'''
from player import *
import pygame, sys
from pygame.locals import *

def main():
	pygame.init()
	surface = pygame.display.set_mode((400,800))
	pygame.display.set_caption("Kickoff return")
	field_color = (0,200,20)
	surface.fill(field_color)
	p1 = Player(200,600)
	while True:
		p1.move()		# Update player
		p1.draw(surface)
		for event in pygame.event.get():
			if event.type == QUIT:
				pygame.quit()
				sys.exit()
			# print p1.x, p1.y
		pygame.display.update()

main()
