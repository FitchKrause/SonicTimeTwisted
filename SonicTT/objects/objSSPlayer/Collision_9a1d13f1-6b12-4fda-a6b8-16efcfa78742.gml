
if (!onGround) exit;
if other.sound == noone
    other.sound = audio_play_sound(sndSSSpeedBoost,1,false);
    
switch(other.image_index) {
case 0:
move_direction = 0;
break;
case 1:
move_direction = 45;
break;
case 2:
move_direction = 90;
break;
case 3:
move_direction = 135;
break;
case 4:
move_direction = 180
break;
case 5:
move_direction = 225;
break;
case 6:
move_direction = 270;
break;
}

move_speed=12;
    
    

