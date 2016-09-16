var n;
var m;
n = floor(mouse_x / 64) * 64
m = floor((mouse_y - 224)/64) * 64 + 224
if moving = 0{
    if instance_place(n,m,Obj_Inv_Item) <> noone and n >= instance_place(n,m,Obj_Inv_Item).x and m >= instance_place(n,m,Obj_Inv_Item).y{
        image_xscale = instance_place(n,m,Obj_Inv_Item).sprite_width / 64
        image_yscale = instance_place(n,m,Obj_Inv_Item).sprite_height / 64
        x = instance_place(n,m,Obj_Inv_Item).x
        y = instance_place(n,m,Obj_Inv_Item).y
        depth = instance_place(n,m,Obj_Inv_Item).depth - 1
        
        }else{
        
        image_xscale = 1
        image_yscale = 1
            x = n
            if x > 640 x = 640
            y = m
            if y > 480 y = 480
            if y < 224 y = 480
        }
    }
if moving = 1{
    z = instance_place(x,y,Obj_Inv_Item)
    moving = 2
    }
if moving = 2{
    x = floor(z.x/64) * 64
    if x + sprite_width >= 640 x = 640 - sprite_width
    y = floor((z.y - 224)/64) * 64 + 224
    if y + sprite_height >= 480 y = 480 - sprite_height
    if y < 224 y = 224
    if x < 0 x = 0
    if mouse_button <> mb_left{
        moving = 0
        }
    }
