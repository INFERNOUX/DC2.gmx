//movement

if keyboard_check(ord(global.keymoveleft)) = 1 global.moveleft = 1
if keyboard_check(ord(global.keymoveright)) = 1 global.moveright = 1
if keyboard_check(ord(global.keymoveup)) = 1 global.moveup = 1
if keyboard_check(ord(global.keymovedown)) = 1 global.movedown = 1
if not keyboard_check(ord(global.keymoveleft)) = 1 global.moveleft = 0
if not keyboard_check(ord(global.keymoveright)) = 1 global.moveright = 0
if not keyboard_check(ord(global.keymoveup)) = 1 global.moveup = 0
if not keyboard_check(ord(global.keymovedown)) = 1 global.movedown = 0

//inventory
if keyboard_check(ord(global.keyopeninventory)) = 1{
    if global.inventory = 0{
        if global.timer = 0{
            global.inventory = 1
            global.pause = 1
            global.timer = 10
            }
        }else{
        if global.timer = 0{
            global.inventory = 0
            global.pause = 0
            global.timer = 10
            }
        }
    }

//+use
if keyboard_check(ord(global.keyuse)) = 1{
    global.use = 1
    }else{
    global.use = 0
    }

//delete me (AT JACOB)
if keyboard_check(ord('L')) = 1{
    if global.timer = 0{
        instance_create(Obj_Player.x + irandom_range(-15,15), Obj_Player.y + irandom_range(-15,15),Obj_Item_Drop)
        global.timer = 10
        }
    }
