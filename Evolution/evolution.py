'''Evolution
Proof-of-concept of a program
that simulates terrain, creatures,
ecology, evolution, and interaction between
organisms
'''
import pygame, sys
from pygame.locals import *

def main():
	pygame.init()
	surface = pygame.display.set_mode((200, 200))
	pygame.display.set_caption("Evolution")
	green = (0,255,0)
	surface.fill(green)
	pygame.draw.ellipse(surface, (222,22,22), (22,22,33,33))
	while True:
		for event in pygame.event.get():
			mouseIsPressed = pygame.mouse.get_pressed()[0]
			if mouseIsPressed == True:
				print "Mouse pressed"
			if event.type == QUIT:
				pygame.quit()
				sys.exit()
		pygame.display.update()

main()