//Normal Movement
if global.moveup = 1 motion_set(90,5);
if global.moveright = 1 motion_set(0,5);
if global.movedown = 1 motion_set(270,5);
if global.moveleft = 1 motion_set(180,5);
//Diagonal Movement
if global.moveup = 1 and global.moveright = 1 motion_set(35,5);
if global.movedown = 1 and global.moveright = 1 motion_set(315,5);
if global.movedown = 1 and global.moveleft = 1 motion_set(225,5);
if global.moveup = 1 and global.moveleft = 1 motion_set(135,5);
//Stop Moving
if global.moveup = 0 and global.moveright = 0 and global.movedown = 0 and global.moveleft = 0 motion_set(0,0);

