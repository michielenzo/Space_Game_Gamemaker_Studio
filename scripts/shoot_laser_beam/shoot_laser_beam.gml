var x_spawn_pos = argument0
var y_spawn_pos = argument1
var _direction = argument2

var laser_beam_instance = instance_create_layer(x_spawn_pos, y_spawn_pos, "Instances", Laser_beam)
laser_beam_instance.direction = _direction