//inventory stuffs

globalvar inventorylist //i am an array, dont mess with me

var i = 0
var n = 0
while i < 1000{
    while n < 18{
        global.inventorylist[i,n] = 0
        n = n + 1
        }
    i = i + 1
    n = 0
    }
