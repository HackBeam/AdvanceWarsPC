

var puede_pasar = true

//Comprobar si nos hemos salido del mapa
if (!position_meeting(argument2+5, argument3-5, ob_infobox))
{
    //Comprobar el suelo
    if (position_meeting(argument2+5, argument3-5, mar))
        puede_pasar = false;
    else
    {
        if (position_meeting(argument2+5, argument3-5, monte) && !argument0)
            puede_pasar = false;
        
        if (position_meeting(argument2+5, argument3-5, bosque) && !argument1)
            puede_pasar = false
    }
    
    //Comprobar unidades
    if (!position_meeting(argument2+5, argument3-5, UNIDAD) && puede_pasar)
        instance_create(argument2, argument3, ob_suelo_selected);
}
