//keybinds

globalvar keymoveup
globalvar keymovedown
globalvar keymoveleft
globalvar keymoveright
globalvar keyopeninventory
globalvar keyuse

global.keymoveleft = 'A'
global.keymoveright = 'D'
global.keymoveup = 'W'
global.keymovedown = 'S'
global.keyopeninventory = 'I'
global.keyuse = 'E'

//movement
globalvar moveup
globalvar movedown
globalvar moveleft
globalvar moveright

global.moveup = 0
global.movedown = 0
global.moveright = 0
global.moveleft = 0

//menus
globalvar pause
globalvar inventory

global.pause = 0
global.inventory = 0

//timer
globalvar timer

global.timer = 0

//inventory
globalvar newitem
globalvar itemmoving
globalvar itemfailedmove
globalvar droppingitemnumber

global.newitem = 0
global.itemmoving = -1
global.itemfailedmove = 0
global.droppingitemnumber = noone

//+use
globalvar use

global.use = 0

//dungeon generation
globalvar tilesize
globalvar dungeonx
globalvar dungeony
globalvar dungeondepth
globalvar dungeonxy
globalvar dungeontypes
globalvar dungeontype
globalvar dungeonroomsize
globalvar dungeongreatestx
globalvar dungeongreatesty

global.tilesize = 2 //its 4 x 64
global.dungeonx = 0
global.dungeony = 0
global.dungeondepth = 0
global.dungeontypes = 1
global.dungeongreatestx = 0
global.dungeongreatesty = 0
