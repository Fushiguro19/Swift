world.place(Block(), atColumn: 2, row: 2)
world.place(Block(), atColumn: 2, row: 2)
world.place(Block(), atColumn: 4, row: 2)
world.place(Block(), atColumn: 6, row: 2)
world.place(Block(), atColumn: 6, row: 2)

func moveArnd(){
    turnLeft()
    turnLeft()
}

for i in 1 ... 3 {
    
    move(distance: 2)
    toggleSwitch()
    turnRight()
    move(distance: 4)
    collectGem()
    moveArnd()
    move(distance: 4)
    turnRight()
    
}
