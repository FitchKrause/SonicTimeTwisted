action_set_relative(1);
action_create_object(objExplosionGroup, 10, 40);
action_create_object(objExplosionGroup, 40, 10);
with objMegaTrooper {

    state=7;
    alarm[0] = 45;

}
instance_create(x,y,objMegaTrooperMoleDeath);
visible = false;
audio_play_sound(sndBombExplosion, 1, false);

action_set_relative(0);
