/// @description  player_reaction_AA1Start(local_id)

// ignore if we skipped the cutscene already
if objProgram.spawn_tag!=0 return false;

// force to drop if we're flying or gliding
if (state==player_state_glide) {player_is_glide_falling(); return true;}
if (state==player_state_fly)
{
    // animate
    animation_new = "walk";
    timeline_speed = 0.125;

    // states and flags
    state = player_state_fall;
    jump_action = false;

    // movement and collision
    xspeed = 0;

    // hard collision found
    return true;
}

// only trigger on landing
if not (landed) return false;

// animate
image_angle = 0;
animation_new = "idle";

// states and flags
state = player_state_standby;
xspeed = 0;

// camera
camera.top = 0;
camera.left = 2176;
camera.right = room_width;
camera.bottom = room_height;
camera.panning_hspeed = 4;

// setup checkpoint
objProgram.spawn_tag = 1;
objProgram.cutscene = false;
// start timer
objLevel.timer_enabled = true;
objLevel.timer = 36000
//objLevel.started = false;

// create hud
instance_create(0, 0, objHud);

// setup titlecard
with instance_create(0, 0, objTitlecard)
{
    title_string[0] = "Attraction";
    title_string[1] = "Attack";
    title_string[2] = "Zone";
    if objProgram.in_past
        title_string[3] = "ACT2 PAST";
        else title_string[3] = "ACT2 FUTURE";
    event_perform(ev_other, ev_room_start);
    mode = 1;
}

play_music_intro(objMusic.musicIntro,0);

// remove trigger
with argument0 instance_destroy();

// hard collision found
return true;
