direction = obj_player.direction
speed = spd

if (point_distance(x, y, obj_player.x, obj_player.y) <= runDistance){
    state = ABOMstates.wandering
}
