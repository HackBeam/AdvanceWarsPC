var ud, obj;

if (controlador.turno == 1)
    ud = UNIDAD_AZUL;
else
    ud = UNIDAD_ROJA;

if (position_meeting(x+5, y-37, ud)) //Arriba
{
    obj = instance_create(x, y-32, ob_objetivo_ataque);
    obj.ATK = ATK;
}
    
if (position_meeting(x+35, y-5, ud)) //Derecha
{
    obj = instance_create(x+32, y, ob_objetivo_ataque);
    obj.ATK = ATK;
}

if (position_meeting(x+5, y+25, ud)) //Abajo
{
    obj = instance_create(x, y+32, ob_objetivo_ataque);
    obj.ATK = ATK;
}

if (position_meeting(x-25, y-5, ud)) //Izquierda
{
    obj = instance_create(x-32, y, ob_objetivo_ataque);
    obj.ATK = ATK;
}
