//movement

if keyboard_check(ord(global.keymoveleft)) = 1 global.moveleft = 1
if keyboard_check(ord(global.keymoveright)) = 1 global.moveright = 1
if keyboard_check(ord(global.keymoveup)) = 1 global.moveup = 1
if keyboard_check(ord(global.keymovedown)) = 1 global.movedown = 1
if not keyboard_check(ord(global.keymoveleft)) = 1 global.moveleft = 0
if not keyboard_check(ord(global.keymoveright)) = 1 global.moveright = 0
if not keyboard_check(ord(global.keymoveup)) = 1 global.moveup = 0
if not keyboard_check(ord(global.keymovedown)) = 1 global.movedown = 0
if keyboard_check(ord(global.keyopeninventory)) = 1 global.inventory = 1 and global.pause = 1
