/// @description  Render lava
var_time_var+=0.04;

if shader_enabled shader_set(WaveShader);
var offset = (cosine[objScreen.image_index mod 360]*48) mod 64;
for (var j=y; j<y+sprite_height; j+=64)
{
    for (var i=x-((64-offset) mod 64); i<x+sprite_width; i+=64)
    {
        draw_sprite_part(sprite_index, image_index, max(x-i, 0), 0, clamp(i-x, 64, x+sprite_width-i), min(y+sprite_height-j, 64), max(i, x), j);
    }
}

    shader_set_uniform_f(uni_time, var_time_var);
    shader_set_uniform_f(uni_resolution, var_resolution_x, var_resolution_y);
    shader_set_uniform_f(uni_wave_amount, var_wave_amount);
    shader_set_uniform_f(uni_wave_distortion, var_wave_distortion );
    shader_set_uniform_f(uni_wave_speed, var_wave_speed);
shader_reset();

