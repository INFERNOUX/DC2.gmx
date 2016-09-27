instance_create(0,0,Obj_Inv_Screen)
instance_create(0,0,Obj_Step)
instance_create(0,0,Obj_Call_Globals_Room)
instance_create(640,640,Obj_Player)

if room = Dev_Room_LEAVE_TOP or room = Starting_Town{
    instance_create(0,0,Obj_Call_Globals_Start)
    }
if room = Dungeon{
    instance_create(0,0,Obj_Dungeon_Generator)
    }
