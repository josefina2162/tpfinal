class Aventura {


Aventura (){


}

void teclas () {
   if (key == ' ' && estado.equals ("titulo")) {
    estado = "patrulla";
  }

  if (key == ' ' && estado.equals ("rejas")) {

    estado = "trato_con_la_policia";
  }

  if (key == 'm' && estado.equals ("trato_con_la_policia")) {

    estado = "acepta_el_trato";
  }

  if (key == 'n' && estado.equals ("trato_con_la_policia")) {

    estado = "engaño";
  }

  if (key == ' ' && estado.equals ("engaño")) {

    estado= "fabrica2"; 
    RESET = millis();
  }

  if (key == ' ' && estado.equals ("acepta_el_trato")) {

    estado= "fabrica"; 
    RESET = millis();
  }

  if (key == 'm' && estado.equals ("escapar")) {

    estado = "salvar";
  }

  if (key == ' ' && estado.equals ("salvar")) {
    estado = "boletos";
  }
  if (key == 'a' && estado.equals ("boletos")) {
    estado = "viaje"; 
    RESET = millis();
  }

  if (key == 'b' && estado.equals ("boletos")) {

    estado = "viajee"; 
    RESET = millis();
  }

  if (key == 'n' && estado.equals ("encuentra_al_embajador")) {

    estado = "enojo";
  }
  if (key == 'm' && estado.equals ("enojo")) {

    estado = "prision2" ;
  }

  if (estado.equals ("china") || estado.equals ("mexico") || estado.equals ("prision2")) {
    if (key == ' ') {
      estado = "creditos";
    }
  }

  if (keyCode == BACKSPACE ) {
    estado = "titulo"; 
    posXP = 0;
  }
}

void mousse(){
  if (mouseX > 50  && mouseX < 50+50 && mouseY > 460 && mouseY < 460+50 && estado.equals ("patrulla") ) {

    estado = "rejas";
  }
  image (images [13], 220, 550, 150, 150);
  if (mouseX > 220 && mouseX < 220+150 && mouseY > 550 && mouseY < 550+150 && estado.equals ("encuentra")) {

    estado= "escapar";
  }
}
}
