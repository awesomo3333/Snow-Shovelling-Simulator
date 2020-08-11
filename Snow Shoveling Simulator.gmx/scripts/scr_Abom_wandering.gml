#define scr_Abom_wandering
//Checks to see if he should be scared
if(point_distance(x, y, obj_player.x, obj_player.y) <= scareDistance){
    scared = true;
}


if (scared = false) { //starts scared = false

//Wandering Script for abomidable snowman
if(needPoint = true){   //Makes it keep from moving before it gets to point


    abomx = x
    abomy = y
    
    //decides whether or not to add or subtract to the x of the snowman
    testAbomXminus = abomx
    testAbomXplus = abomx
    
    
    if((testAbomXminus - 32) <= 0){ //checks to see if object is close to left room wall
        xminus = 0;
        xplus = 1;
    }else if((testAbomXplus + 32) >= room_width){  //checks to see if object is close to right room wall
        xminus = 1;
        xplus = 0
    }else if (random(2) >= 1 ) {  //If object is not close to either chooses randomly
         xminus = 1;
         xplus = 0;
    }else {
        xplus = 1;
        xminus = 0;
    }
    
    //decides whether or not to add or subtract to the y of the snowman
    testAbomYminus = abomy
    testAbomYplus = abomy
    
    
    if((testAbomYminus - 64) <= 0){ //checks to see if object is close to top of room
        yminus = 0;
        yplus = 1;
    }else if((testAbomYplus + 64) >= room_height){  //checks to see if object is close to bottom of room
        yminus = 1;
        yplus = 0
    }else if (random(2) >= 1 ) { //If was not close to either edge, chooses randomly
         yminus = 1;
         yplus = 0;
    }else {
        yplus = 1;
        yminus = 0;
    }
    
    //getting final x value
    if(xminus = 1){
        abomx -= random_range(16, 32);
    }else if(xplus = 1){
        abomx += random_range(16, 32);
    }
    
    //Getting final y value
    if(yminus = 1){
        abomy -= random_range(16, 32);
    }else if(yplus = 1){
        abomy += random_range(16, 32);
    }
    
    //Starting wandering movement
    move_towards_point(abomx, abomy, spd)
    
    needPoint = false //Keeps him from repeatedly moving over and over again
    
    if (myHealth <= (myHealthfull / 2)){
        alarm[0] = 180
    }else{
        alarm[0] = 45 //starts alarm to stop him
    }
    
}//End of need point true if statement



//Animation stuff needed.
if (speed = 0){ // starting animation when snowman stops
    image_speed = .4
}
if (image_speed > 0) {// starts a controller for the animation while it is running
    
    if(sprite_index = spr_abomidable_opening){ //Changes from opening to spawning.
        if (image_index > image_number - 1) {
            sprite_index = spr_abom_spawn
            image_speed = 1
        }
    }else if (sprite_index = spr_abom_spawn) { //Change from spawning to closing
        if(image_index > image_number - 1){
            sprite_index = spr_abomidable_closing
            image_speed = .4
        }
    }else if (sprite_index = spr_abomidable_closing) { // changes from closing to starting the next walk.
        if(image_index > image_number - 1){
            sprite_index = spr_abomidable_opening
            image_speed = 0
            image_index = 0
            needPoint = true
            alarm[1] = 5 //Starts spawn for lilsnow
        }
    }

}

}//End of scared = false


if scared = true { //Beginning of scared = true
    speed = 0;//makes abom stop moving
    
    //animation stuff
    sprite_index = spr_abomidable_opening;
    image_speed = 0;
    image_index = 2;
    //I chose the second frame because then he will be holding his arms up slightly
    
    if(alarmSet = false){//sets a variable so it does not constantly reset the alarm back to two seconds.
        //Starts alarm, if player is still within scare distance when alarm goes off, abom runs away
        alarm[2] = 60 
        alarmSet = true
    }
    
    
    //makes him not scared
    if(point_distance(x, y, obj_player.x, obj_player.y) > scareDistance){
        scared = false
    }
}//End of scared equal true

//Change state to lowhealth state if he gets injured while in this state.
if(myHealth <= lowHealth){
    state = ABOMstates.lowHealth
}











#define script4
