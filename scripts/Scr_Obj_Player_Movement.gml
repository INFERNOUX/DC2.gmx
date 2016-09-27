var spd = 20;
//Normal Movement
if global.moveup = 1 motion_set(90,spd);
if global.moveright = 1 motion_set(0,spd);
if global.movedown = 1 motion_set(270,spd);
if global.moveleft = 1 motion_set(180,spd);
//Diagonal Movement
if global.moveup = 1 and global.moveright = 1 motion_set(35,spd);
if global.movedown = 1 and global.moveright = 1 motion_set(315,spd);
if global.movedown = 1 and global.moveleft = 1 motion_set(225,spd);
if global.moveup = 1 and global.moveleft = 1 motion_set(135,spd);
//Stop Moving
if global.moveup = 0 and global.moveright = 0 and global.movedown = 0 and global.moveleft = 0 motion_set(0,0);

