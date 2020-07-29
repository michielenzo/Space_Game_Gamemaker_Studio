var mapped_health = (current_health / max_health) * 100
draw_healthbar(x, y - 20, x + sprite_width, y - 15, mapped_health, c_white, c_red, c_green, 0, false, true)