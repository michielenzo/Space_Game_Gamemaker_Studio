//Gravity
y += velocity
velocity += acceleration

//Tile collision
var NO_TILE = 0

tilemap = layer_tilemap_get_id("Tiles")

var tile = tilemap_get_at_pixel(tilemap, x, y + sprite_height)
if(tile != NO_TILE && yprevious <= y){
	velocity = 0
}

tile = tilemap_get_at_pixel(tilemap, x + sprite_width, y + sprite_height)
if(tile != NO_TILE && yprevious <= y){
	velocity = 0
}

