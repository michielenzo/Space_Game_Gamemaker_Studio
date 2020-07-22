// Shoot a laser beam
var x_spawn_pos = face_direction == "left" ? x - 25 : x + sprite_width
var y_spawn_pos = y + sprite_height / 2
var laser_beam_instance = instance_create_layer(x_spawn_pos, y_spawn_pos, "Instances", Laser_beam)
laser_beam_instance.direction = face_direction == "left" ? 180 : 0
