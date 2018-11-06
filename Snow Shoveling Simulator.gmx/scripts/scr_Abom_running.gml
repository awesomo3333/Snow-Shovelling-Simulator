
if (speed = 0) {//makes him start running in a random direction based on players direction
dir = random_range(obj_player.direction - randomDirrang, obj_player.direction + randomDirrang)
direction = dir
speed = spd
}else{

    //makes him change direction every once in a while
    if (changeDir = true) {
        direction = random_range(direction - randomDirrang, direction + randomDirrang);
        changeDir = false
    }
    if (dirAlarmSet = false){
        alarm[3] = dirChangetime
        dirAlarmSet = true
    }
    
    //makes him turn around if he runs into something and stops moving
    
    
    
    if (checkCoods = true){
        if(oldx = x && oldy = y){//Changes direction by 180 degrees if coods are the same
            if (direction >= 180){
                direction -= 180;
            }else{
                direction += 180
            }
        }
    }else if (checkCoods = false){
        if(checkCoodsAlarmSet = false){
            alarm[4] = checkCoodsAlarm
            checkCoodsAlarmSet = true
        }
    }
    
    if (needNewOldcoods = true){
    oldx = x
    oldy = y
    needNewOldcoods = false
    alarm[5] = newOldcoodsAlarm
    }
    
    
    
}



//Bellow here are if statements to change states.
if(myHealth <= lowHealth){
    state = ABOMstates.lowHealth
}
if (point_distance(x, y, obj_player.x, obj_player.y) >= runDistance){
    state = ABOMstates.wandering
}
