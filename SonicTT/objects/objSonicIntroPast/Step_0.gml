if loopCount == 4 && image_index == 0 {

    image_speed = 0;
    
    loopCount = 5;

}

if image_speed <> 0 {

    if (!audio_is_playing(sndShakeHead)) {
    
        audio_play_sound(sndShakeHead,10,false);
    
    }

}

