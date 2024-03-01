let totalGems = randomNumberOfGems

var character = Character()
var expert = Expert()
var gemCounter = 0

world.place(expert, facing: .north, atColumn: 0, row: 4)
world.place(character, facing: .north, atColumn: 2, row: 0)

func collGems(_ n : Int){
    for i in 1 ... n{
        if character.isOnGem{
            character.collectGem()
            gemCounter += 1
            if character.isBlocked{
                
                character.jump()
            }else {
                character.moveForward()
            }
        }else{
            character.jump()
        }
    }
}

expert.turnLock(up: true, numberOfTimes: 2)

while gemCounter < totalGems {
    
    collGems(7)
    character.turnRight()
    collGems(2)
    character.turnRight()
}
