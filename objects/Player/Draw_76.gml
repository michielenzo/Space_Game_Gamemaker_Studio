//Gravity
y += velocity;
velocity += acceleration;

//Tile collision
var NO_TILE = 0;

tilemap = layer_tilemap_get_id("Tiles");
if(tilemap_get_at_pixel(tilemap, x, bbox_bottom) != NO_TILE){
	velocity = 0;
}