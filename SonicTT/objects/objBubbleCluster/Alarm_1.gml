/// @description  Spawn pattern 2
with instance_create(x, y-5, objBubble)
{
    if (other.count==2) size = 5; else size = choose(1, 2);
    offset = choose(0, 180);
}

// continue spawning
count -= 1;
if count alarm[1] = 16;

