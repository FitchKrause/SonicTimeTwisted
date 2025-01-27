/// @description stop_all_music(resume, stopEffects)

if (argument_count <= 0) return false;
var resume = argument[0];

var stopEffects = true;
if (argument_count > 1) stopEffects = argument[1];

with objMusic {
    if resume {
        statePrevious = state;
        previousPosition=audio_sound_get_track_position(currentMusic);
    }
    else {
        statePrevious = 0;
        previousPosition=0;
    }
    state = 0;
    
    switch statePrevious {
    case 0: // silence
        audio_stop_sound(musicIntro);
        audio_stop_sound(musicLoop);
        audio_stop_sound(bossIntro);
        audio_stop_sound(bossLoop);
        audio_stop_sound(musicJingle);
        if (stopEffects) audio_stop_sound(musicEffect);
        break;
    case 1: // Play Music Intro
        audio_stop_sound(musicIntro);
        break;
    case 2: // Play Music Loop
        audio_stop_sound(musicLoop);
        break;
    case 3: // Play Boss Intro
        audio_stop_sound(bossIntro);
        break;
    case 4: // Play Boss Loop
        audio_stop_sound(bossLoop);
        break;
    case 5: // Play Jingle
        audio_stop_sound(musicJingle);
        break;
    case 6: // Play Effect
        if (stopEffects) audio_stop_sound(musicEffect);
        break;
    }
}
