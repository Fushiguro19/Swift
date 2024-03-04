world.place(Stair(), facing: .south, atColumn: 3, row: 1)
world.place(Stair(), facing: .south, atColumn: 3, row: 3)
world.place(Stair(), facing: .east, atColumn: 5, row: 4)
world.place(Stair(), facing: .east, atColumn: 5, row: 6)
world.place(Stair(), facing: .north, atColumn: 4, row: 7)
world.place(Stair(), facing: .north, atColumn: 2, row: 7)
world.place(Stair(), facing: .west, atColumn: 1, row: 4)
world.place(Stair(), facing: .west, atColumn: 1, row: 6)

func toggleSw(_ n : Int){
    turnRight()
    for i in 1 ... n{
        if !isBlocked{
            moveForward()
            if isOnClosedSwitch{
                toggleSwitch()
            }
        }else {
            turnLeft()
        }
    }
}

move(distance: 4)
toggleSw(9)
toggleSw(8)
toggleSw(8)
