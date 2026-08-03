randomise();
x_pos_spawn = choose(-1, 0, 1);
y_pos_spawn = choose(-1, 0, 1);

x_pos_spawn = (x_pos_spawn * 16) + x;
y_pos_spawn = (y_pos_spawn * 16) + y;

if(!position_meeting(x_pos_spawn, y_pos_spawn, obj_fogo))
{
	instance_create_layer(x_pos_spawn, y_pos_spawn, "Instances", obj_fogo);	
	alarm[0] = tempo_espalhar;
}
else
{
	alarm[0] = 2;	
}

