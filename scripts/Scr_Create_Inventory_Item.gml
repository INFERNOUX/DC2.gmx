if global.newitem = 1{
    y = 224
    x = 0
    var i = 0
    var itemid = 0
    while i < 1000{
        if global.inventorylist[i,1] = 0 and global.inventorylist[i,0] = 1{
            itemid = i
            global.inventorylist[i,1] = 1
            }
        if global.inventorylist[i,0] = 0 break;
        i = i + 1
        }
    sprite_index = global.inventorylist[itemid,6]
    image_xscale = 64/sprite_get_width(sprite_index) * global.inventorylist[itemid,4]
    image_yscale = 64/sprite_get_height(sprite_index) * global.inventorylist[itemid,5]
    
    while place_meeting(x+32,y+32,Obj_Inv_Item){
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
            global.newitem = 0
            instance_destroy()
            }
        }
    global.inventorylist[itemid,2] = x/64
    global.inventorylist[itemid,3] = (y - 224)/64
    global.newitem = 0
    }
