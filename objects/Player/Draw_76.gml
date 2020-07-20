var NO_TILE = 0;

tilemap = layer_tilemap_get_id("Tiles");

show_debug_message(tilemap_get_at_pixel(tilemap, x, bbox_bottom));

if(tilemap_get_at_pixel(tilemap, x, bbox_bottom) != NO_TILE){
	phy_speed_y = 0;
	phy_linear_velocity_y = 0;
	phy_position_y = bbox_bottom - sprite_height
}