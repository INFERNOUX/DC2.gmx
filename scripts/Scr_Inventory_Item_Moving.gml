if global.movingitem <> noone and lastxyset = 0{
    lastx = x
    lasty = y
    lastxyset = 1
    }
if moving = 1{
    x = mouse_x - itemx
    y = mouse_y - itemy
    }
if moving = 0{
    if itemx <> 0 or itemy <> 0{
        if x + sprite_width >= 640 x = 640 - sprite_width
        if y + sprite_height >= 480 y = 480 - sprite_height
        if x < 0 x = 0
        if y < 224 y = 224
        x = floor(x/64) * 64
        y = floor((y-224)/64) * 64 + 224
        
        var i;
        var j;
        i = x
        j = y
        while i < x + sprite_width{
            while j < y + sprite_height{
                if place_meeting(i,j,Obj_Inv_Item){
                    with instance_place(i,j,Obj_Inv_Item){
                        x = 0
                        y = 224
                        while place_meeting(x + 32,y + 32,Obj_Inv_Item){
                            x = x + 64
                            if x = 640{
                                x = 0
                                y = y + 64
                                }
                            if x + sprite_width > 640{
                                x = 0
                                y = y + 64
                                }
                            if y + sprite_height > 480{
                                global.itemfailedmove = 1
                                }
                            }
                        }
                    }
                j = j + 64
                }
            i = i + 64
            j = y
            }
        if global.itemfailedmove = 0 global.inventorylist[itemid,2] = x/64
        if global.itemfailedmove = 0 global.inventorylist[itemid,3] = (y - 224)/64
        itemx = 0
        itemy = 0
        }
    if global.itemfailedmove = 1 x = lastx
    if global.itemfailedmove = 1 y = lasty
    }
