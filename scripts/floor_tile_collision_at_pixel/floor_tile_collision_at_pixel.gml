/// tile_collision(x_pos y_pos, , _yprevious, _sprite_height, yprevious_from_fall, tile_on_foot)

var instance = argument0
var x_pos = argument1
var y_pos = argument2
var yprevious_from_fall = argument3

var NO_TILE = 0
var OUTSIDE_ROOM = -1

var tilemap = layer_tilemap_get_id("Tiles")
var tile_on_foot = tilemap_get_at_pixel(tilemap, x_pos, y_pos + instance.sprite_height)

if(tile_on_foot != NO_TILE && tile_on_foot != OUTSIDE_ROOM && instance.yprevious <= y_pos){
	var tile_above_prev_y = tilemap_get_at_pixel(tilemap, x_pos, yprevious_from_fall + instance.sprite_height)	
	return tile_above_prev_y == NO_TILE ? true : false
} else {
	return false
}