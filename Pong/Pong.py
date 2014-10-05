'''Pong
'''
import pygame, sys
from pygame.locals import *
pygame.init()
DISPLAYSURF = pygame.display.set_mode((400,600))
BACKGR_FILL = (0,0,150)
WHITE = (255,255,255)
paddleX = pygame.mouse.get_pos()[0]
paddleY = 500

while True:
	DISPLAYSURF.fill(BACKGR_FILL)
	print("mouseX = ",pygame.mouse.get_pos()[0])
	pygame.draw.rect(DISPLAYSURF, WHITE, (paddleX, paddleY, 150, 30))
	for event in pygame.event.get():
		if event.type == QUIT:
			pygame.quit()
			sys.exit()
	pygame.display.update()

class Player:
	def __init__(self):
		pass
	def draw(self):
		pass

class Ball:
	def __init__(self):
		pass
	def draw(self):
		pass