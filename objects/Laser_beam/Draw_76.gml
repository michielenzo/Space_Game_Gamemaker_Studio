//tile collision
var NO_TILE = 0
var OUTSIDE_ROOM = -1

tilemap = layer_tilemap_get_id("Tiles")

if(direction == 0){
	var tile = tilemap_get_at_pixel(tilemap, x + sprite_width, y)
}else{
	var tile = tilemap_get_at_pixel(tilemap, x, y)
}

if(tile != NO_TILE && tile != OUTSIDE_ROOM) instance_destroy()