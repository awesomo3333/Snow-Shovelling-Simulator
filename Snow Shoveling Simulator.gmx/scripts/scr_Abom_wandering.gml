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
    
    alarm[0] = 45 //starts alarm to stop him
}

//Keep Within Room
x=clamp(x, 0, room_width);
y=clamp(y, 0, room_height);
