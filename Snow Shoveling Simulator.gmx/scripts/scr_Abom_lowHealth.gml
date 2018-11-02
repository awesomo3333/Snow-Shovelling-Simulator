//Low health script
speed = 0


//This will make him start pumping out babies when he has low health
if (finishedLHspawn = true){ // starting animation when finishes spawning the last
    image_speed = .8
}
if (image_speed > 0) {// starts a controller for the animation while it is running
    
    if(sprite_index = spr_abomidable_opening){ //Changes from opening to spawning.
        if (image_index > image_number - 1) {
            sprite_index = spr_abom_spawn
            image_speed = 2
        }
    }else if (sprite_index = spr_abom_spawn) { //Change from spawning to closing
        if(image_index > image_number - 1){
            sprite_index = spr_abomidable_closing
            image_speed = .8
        }
    }else if (sprite_index = spr_abomidable_closing) { // changes from closing to starting the next walk.
        if(image_index > image_number - 1){
            sprite_index = spr_abomidable_opening
            image_speed = 0
            image_index = 0
            spawnLilsnowY = y + 16
            spawnLilsnowX = x
            alarm[1] = 5 //Starts spawn for lilsnow
            finishedLHspawn = true
        }
    }

}
