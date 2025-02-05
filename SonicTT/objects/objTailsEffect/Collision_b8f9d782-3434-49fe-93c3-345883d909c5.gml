// abort if not actually flying
if player_id.state!=player_state_fly or player_id.underwater exit;
if sprite_index!=sprTailsEffect4 exit;

// abort if cannot damage
if other.invulnerable exit;

var pid = player_id;
with other {
    if life>0 && alarm[0] == -1
    {
        life -= 1;
        invulnerable=true;
        
        if life<=0 {
        
           instance_create(x,y,objExplosionGroup)
           instance_create(x+24,y+10,objExplosionGroup)
           instance_create(x-12,y+32,objExplosionGroup)
           instance_create(x,y,objExplosionGroup)
           instance_create(x-32,y-64,objExplosionGroup)
           instance_create(x+24,y-24,objExplosionGroup)
           alarm[2]=8;
           reaction_script=noone;
           player_add_score(500);
           
           
    
         } else alarm[0]=15;
    }
    
    // sound
    audio_play_sound(sndBossHit, 1, 0);
}

