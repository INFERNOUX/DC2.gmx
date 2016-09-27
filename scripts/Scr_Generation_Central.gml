var objnorth = noone;
var objwest = noone;
var shortxy = global.dungeonxy[global.dungeonx,global.dungeony]
var typenorth = noone;
var typewest = noone;
var i;
var tile = -4;

if global.dungeonx > 0 objwest = global.dungeonlist[global.dungeonxy[global.dungeonx - 1,global.dungeony],global.dungeondepth]
if global.dungeony > 0 objnorth = global.dungeonlist[global.dungeonxy[global.dungeonx,global.dungeony - 1],global.dungeondepth]

if objwest = HUD typewest = blocked
if objwest = HLR typewest = openc
if objwest = HDL typewest = blocked
if objwest = HUL typewest = blocked
if objwest = HDR typewest = openc
if objwest = HUR typewest = openc
if objwest = RTC typewest = opent
if objwest = RBC typewest = openb
if objwest = RRC typewest = openc
if objwest = RLC typewest = opena
if objwest = RLW typewest = opena
if objwest = RTW typewest = opent
if objwest = RRW typewest = blocked
if objwest = RBW typewest = openb
if objwest = RBL typewest = openb
if objwest = RTL typewest = opent
if objwest = RBR typewest = blocked
if objwest = RTR typewest = blocked
if objwest = NUN typewest = blocked
if objwest = CDL typewest = opena
if objwest = CDR typewest = openb
if objwest = CTL typewest = opena
if objwest = CTR typewest = opent
if objwest = RNO typewest = opena

if objnorth = HUD typenorth = openc
if objnorth = HLR typenorth = blocked
if objnorth = HDL typenorth = openc
if objnorth = HUL typenorth = blocked
if objnorth = HDR typenorth = openc
if objnorth = HUR typenorth = blocked
if objnorth = RTC typenorth = opena
if objnorth = RBC typenorth = openc
if objnorth = RRC typenorth = openr
if objnorth = RLC typenorth = openl
if objnorth = RLW typenorth = openl
if objnorth = RRW typenorth = openr
if objnorth = RTW typenorth = opena
if objnorth = RBW typenorth = blocked
if objnorth = RBL typenorth = blocked
if objnorth = RBR typenorth = blocked
if objnorth = RTL typenorth = openl
if objnorth = RTR typenorth = openr
if objnorth = NUN typenorth = blocked
if objnorth = CDL typenorth = openl
if objnorth = CDR typenorth = openr
if objnorth = CTL typenorth = opena
if objnorth = CTR typenorth = opena
if objnorth = RNO typenorth = opena

if objwest = noone typewest = blocked
if objnorth = noone typenorth = blocked

if global.dungeonx < global.dungeongreatestx and global.dungeony < global.dungeongreatesty{
    if typenorth = blocked{
        if typewest = blocked{
            i = irandom_range(1,3)
            if i = 1 tile = NUN
            if i = 2 tile = RTL
            if i = 3 tile = HDR
            }
        if typewest = opent{
            i = irandom_range(1,global.dungeonroomsize)
            if i = 1 tile = RTR
            if i <> 1 tile = RTW
            }
        if typewest = openb{
            //cant happen
            }
        if typewest = openc{
            i = irandom_range(1,global.dungeonroomsize)
            if i = 1 tile = HDL
            if i <> 1 tile = HLR
            }
        if typewest = opena{
            //cant happen
            }
        }
    if typenorth = openl{
        if typewest = blocked{
            i = irandom_range(1,global.dungeonroomsize)
            if i = 1 tile = RBL
            if i <> 1 tile = RLW
            }
        if typewest = opent{
            tile = CTL
            }
        if typewest = openb{
            //cant happen
            }
        if typewest = openc{
            tile = RLC
            }
        if typewest = opena{
            //cant happen
            }
        }
    if typenorth = openr{
        if typewest = blocked{
            //cant happen
            }
        if typewest = opent{
            //cant happen
            }
        if typewest = openb{
            tile = RBR
            }
        if typewest = openc{
            //cant happen
            }
        if typewest = opena{
            i = irandom_range(1,global.dungeonroomsize)
            if i <= floor(global.dungeonroomsize/2) tile = CTR
            if i <= floor(global.dungeonroomsize/4) tile = RRC
            if i > floor(global.dungeonroomsize/2) tile = RRW
            }
        }
    if typenorth = openc{
        if typewest = blocked{
            i = irandom_range(1,global.dungeonroomsize)
            if i = 1 tile = HUR
            if i <> 1 tile = HUD
            }
        if typewest = opent{
            tile = RTC
            }
        if typewest = openb{
            //cant happen
            }
        if typewest = openc{
            tile = HUL
            }
        if typewest = opena{
            //impossibruuuuu
            }
        }
    if typenorth = opena{
        if typewest = blocked{
            //impossible
            }
        if typewest = opent{
            //nope
            }
        if typewest = openb{
            tile = RBW
            }
        if typewest = openc{
            //NOP
            }
        if typewest = opena{
            i = irandom_range(1,global.dungeonroomsize)
            if i = 1 tile = CDR
            if i <> 1 tile = RNO
            }
        }
    }
if global.dungeonx < global.dungeongreatestx and global.dungeony = global.dungeongreatesty{
    if typenorth = blocked{
        if typewest = blocked{
            tile = NUN
            }
        if typewest = opent{
            //impossible
            }
        if typewest = openb{
            //impossible
            }
        if typewest = openc{
            tile = HLR
            }
        if typewest = opena{
            //impossible
            }
        }
    if typenorth = openl{
        if typewest = blocked{
            tile = RBL
            }
        if typewest = opent{
            //impossible
            }
        if typewest = openb{
            //impossible
            }
        if typewest = openc{
            //error
            //error
            //error
            }
        if typewest = opena{
            //impossible
            }
        }
    if typenorth = openr{
        if typewest = blocked{
            //impossible
            }
        if typewest = opent{
            //impossible
            }
        if typewest = openb{
            tile = RBR
            }
        if typewest = openc{
            //impossible
            }
        if typewest = opena{
            //impossible
            }
        }
    if typenorth = openc{
        if typewest = blocked{
            tile = HUR
            }
        if typewest = opent{
            //impossible
            }
        if typewest = openb{
            //impossible
            }
        if typewest = openc{
            tile = HUL
            }
        if typewest = opena{
            //impossible
            }
        }
    if typenorth = opena{
        if typewest = blocked{
            //impossible
            }
        if typewest = opent{
            //impossible
            }
        if typewest = openb{
            tile = RBW
            }
        if typewest = openc{
            //impossible
            }
        if typewest = opena{
            //impossible
            }
        }
    }
if global.dungeonx = global.dungeongreatestx and global.dungeony < global.dungeongreatesty{
    if typenorth = blocked{
        if typewest = blocked{
            tile = NUN
            }
        if typewest = opent{
            tile = RTR
            }
        if typewest = openb{
            //impossible
            }
        if typewest = openc{
            tile = HDL
            }
        if typewest = opena{
            //impossible
            }
        }
    if typenorth = openl{
        if typewest = blocked{
            //impossible
            }
        if typewest = opent{
            //impossible
            }
        if typewest = openb{
            //impossible
            }
        if typewest = openc{
            //impossible
            }
        if typewest = opena{
            //impossible
            }
        }
    if typenorth = openr{
        if typewest = blocked{
            //impossible
            }
        if typewest = opent{
            //impossible
            }
        if typewest = openb{
            tile = RBR
            }
        if typewest = openc{
            //impossible
            }
        if typewest = opena{
            tile = RRW
            }
        }
    if typenorth = openc{
        if typewest = blocked{
            tile = HUD
            }
        if typewest = opent{
            //error
            //error
            //error
            }
        if typewest = openb{
            //impossible
            }
        if typewest = openc{
            tile = HUL
            }
        if typewest = opena{
            //impossible
            }
        }
    if typenorth = opena{
        if typewest = blocked{
            //impossible
            }
        if typewest = opent{
            //impossible
            }
        if typewest = openb{
            //impossible
            }
        if typewest = openc{
            //impossible
            }
        if typewest = opena{
            //impossible
            }
        }
    }
if global.dungeonx = global.dungeongreatestx and global.dungeony = global.dungeongreatesty{
    if typenorth = blocked{
        if typewest = blocked{
            tile = NUN
            }
        if typewest = opent{
            //impossible
            }
        if typewest = openb{
            //impossible
            }
        if typewest = openc{
            //error
            //error
            //error
            }
        if typewest = opena{
            //impossible
            }
        }
    if typenorth = openl{
        if typewest = blocked{
            //impossible
            }
        if typewest = opent{
            //impossible
            }
        if typewest = openb{
            //impossible
            }
        if typewest = openc{
            //impossible
            }
        if typewest = opena{
            //impossible
            }
        }
    if typenorth = openr{
        if typewest = blocked{
            //impossible
            }
        if typewest = opent{
            //impossible
            }
        if typewest = openb{
            tile = RBR
            }
        if typewest = openc{
            //impossible
            }
        if typewest = opena{
            //impossible
            }
        }
    if typenorth = openc{
        if typewest = blocked{
            //error
            //error
            //error
            }
        if typewest = opent{
            //error
            //error
            //error
            }
        if typewest = openb{
            //impossible
            }
        if typewest = openc{
            tile = HUL
            }
        if typewest = opena{
            //impossible
            }
        }
    if typenorth = opena{
        if typewest = blocked{
            //impossible
            }
        if typewest = opent{
            //impossible
            }
        if typewest = openb{
            //impossible
            }
        if typewest = openc{
            //impossible
            }
        if typewest = opena{
            //impossible
            }
        }
    }

global.dungeonlist[shortxy,global.dungeondepth] = tile
