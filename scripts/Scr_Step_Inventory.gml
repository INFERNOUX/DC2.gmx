///inventory

if global.inventory = 1{
    view_visible[1] = 1
    view_visible[0] = 0
    view_enabled = 1
    }else{
    view_enabled = 1
    view_visible[0] = 1
    view_visible[1] = 0
    }

if global.newitem = 1{
    var i = 0
    while i < 1000{
        if global.inventorylist[i,0] = 1{
            if global.inventorylist[i,1] = 0{
                instance_create(0,0,Obj_Inv_Item)
                }
            }
        if global.inventorylist[i,0] = 0 break;
        i = i + 1
        }
    global.newitem = 0
    }
