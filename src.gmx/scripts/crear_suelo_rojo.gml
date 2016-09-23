
var i, j, posX, posY, obj;

for (i=1; i<=distancia_disparo_max; i++)
{
    for(j=distancia_disparo-i; j<=distancia_disparo_max-i; j++)
    {
        if (j < 0)
            j = 0;
        
        posX = x+(32*i)+5;
        posY = y+(32*j)-5;
        if (!position_meeting(posX, posY, ob_infobox))
        {
            obj = instance_create(posX-5, posY+5, ob_suelo_rojo);
            obj.ATK = ATK;
        }

        posX = x+(32*j)+5;
        posY = y+(-32*i)-5;
        if (!position_meeting(posX, posY, ob_infobox))
        {
            obj = instance_create(posX-5, posY+5, ob_suelo_rojo);
            obj.ATK = ATK;
        }
        
        posX = x+(-32*i)+5;
        posY = y+(-32*j)-5;
        if (!position_meeting(posX, posY, ob_infobox))
        {
            obj = instance_create(posX-5, posY+5, ob_suelo_rojo);
            obj.ATK = ATK;
        }
        
        posX = x+(-32*j)+5;
        posY = y+(32*i)-5;
        if (!position_meeting(posX, posY, ob_infobox))
        {
            obj = instance_create(posX-5, posY+5, ob_suelo_rojo);
            obj.ATK = ATK;
        }
    }
}
