var character = Character()
world.place(Portal(color: #colorLiteral(red: 1.0, green: 0.4171271324, blue: 0.0002565760224, alpha: 1.0)), atStartColumn: 2, startRow: 3, atEndColumn: 5, endRow: 3)
world.place(Portal(color: #colorLiteral(red: 0.0, green: 0.7790542245, blue: 0.9885957837, alpha: 1.0)), atStartColumn: 3, startRow: 6, atEndColumn: 1, endRow: 2)
world.place(character, facing: .west, atColumn: 2, row: 7)
world.place(Block(), atColumn: 1, row: 6)
world.place(Block(), atColumn: 1, row: 6)
world.place(Block(), atColumn: 2, row: 3)

world.place(Block(), atColumn: 1, row: 2)
world.place(Block(), atColumn: 2, row: 7)
world.place(Block(), atColumn: 5, row: 3)

//jump
//left
//jump
//left
//jump
//forward
//right

for i in 1 ... 3 {
    character.moveForward()
    character.toggleSwitch()
    character.turnLeft()
    character.jump()
    character.collectGem()
    character.turnLeft()
    character.jump()
    character.toggleSwitch()
    character.moveForward()
    character.turnRight()
}
