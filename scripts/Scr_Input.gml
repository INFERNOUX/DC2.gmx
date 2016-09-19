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

//delete me (AT JACOB)
if keyboard_check(ord('L')) = 1{
    if global.timer = 0{
        var i = 0
        var works = 0
        while i < 1000{
            if global.inventorylist[i,0] = 0 works = 1
            if works = 0 i = i + 1
            if works = 1 break;
            }
        if works = 1{
            global.inventorylist[i,0] = 1
            global.inventorylist[i,1] = 0
            global.inventorylist[i,2] = 0
            global.inventorylist[i,3] = 0
            global.inventorylist[i,4] = irandom_range(1,3)
            global.inventorylist[i,5] = irandom_range(1,3)
            global.inventorylist[i,6] = Spr_Obj_Temp
            global.inventorylist[i,7] = 1
            global.newitem = 1
            }
        global.timer = 10
        }
    }
