/* argument0 = Puede pasar por montañas
 * argument1 = Puede pasar por bosques
 */

var i, j, posX, posY;
 
controlador.unidad_seleccionada = self.id
instance_create(x, y, ob_suelo_selected);

for (i=1; i<=MOV; i++)
{
    for(j=0; j<=MOV-i; j++)
    {
        posX = x+(32*i);
        posY = y+(32*j);
        comprobar_suelo(argument0, argument1, posX, posY);

        posX = x+(32*j);
        posY = y+(-32*i);
        comprobar_suelo(argument0, argument1, posX, posY);
        
        posX = x+(-32*i);
        posY = y+(-32*j);
        comprobar_suelo(argument0, argument1, posX, posY);
        
        posX = x+(-32*j);
        posY = y+(32*i);
        comprobar_suelo(argument0, argument1, posX, posY);
    }
}
