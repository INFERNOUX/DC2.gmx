if global.itemmoving = itemid{
    x = mouse_x - mousedistx
    y = mouse_y - mousedisty
    }else{
    x = floor(x/64) * 64
    y = floor((y - 224) / 64) * 64 + 224
    if x + sprite_width >= 640 x = 640 - sprite_width
    if y + sprite_height >= 480 y = 480 - sprite_height
    if y < 224 y = 224
    if x < 0 x = 0
    if instance_place(x, y, Obj_Inv_Item) <> noone and global.itemmoving <> noone{
        x = global.inventorylist[itemid,2] * 64
        y = global.inventorylist[itemid,3] * 64 + 224
        }else{
        global.inventorylist[itemid,2] = x / 64
        global.inventorylist[itemid,3] = (y - 224) / 64
        }
    }
