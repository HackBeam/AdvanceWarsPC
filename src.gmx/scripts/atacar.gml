var V, PV, ATK, DEF, damage;

V = random_range(1, 1.5);
PV = controlador.unidad_seleccionada.PV;
ATK = controlador.unidad_seleccionada.ATK;
DEF = other.DEF;

damage = V * ((PV*ATK)/(DEF*2));

other.PV -= floor(damage);
