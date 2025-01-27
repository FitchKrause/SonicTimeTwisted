/// @description  Handle landing

// abort if we're not actually falling
if alarm[0] or (gravity==0) exit;

// quicksand only
if (other.reaction_script!=player_reaction_quicksand) exit;

// vertical limit only
while place_meeting(x, y, other) y -= 1;

// stop falling
vspeed = 0;
gravity = 0;

// sound
audio_stop_sound(sndSpikeLand);
audio_play_sound(sndSpikeLand, 4, 0);

// flicker out
alarm[0] = 80;

