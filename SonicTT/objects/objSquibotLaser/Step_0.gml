switch state {

    case 0: // null
        
        image_angle=gunId.laserAngle;
        x=gunId.x+xoffset;
        y=gunId.y+yoffset;
        reaction_script = noone;
        
    break;
    
    case 1: // fire
        
        reaction_script = player_reaction_harmful;
        visible = true;

        image_xscale +=24;        
        
        if image_xscale > laser_height {
            
            state = 2;
            alarm[11]=220;
        
        }
    break;
    
    case 2: // stop fire

        speed = 24;
        direction = image_angle;
        
}

