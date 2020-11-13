class Aventura {

Pantalla mipantalla;
Aventura (){
mipantalla=new Pantalla();




}

void variablesI () {
  String estado; 
float posXP, posXC;
int RESET = 0;
int CANTIDAD_DE_MS = 3 * 1000;
}

void dibujo () {

mipantalla.dibujar ();


}
void teclas () {
   
  
  if (key == ' ' && mipantalla.estado.equals ("titulo")) {
    mipantalla.estado = "patrulla";
  }

  if (key == ' ' && mipantalla.estado.equals ("rejas")) {

    mipantalla.estado = "trato_con_la_policia";
  }

  if (key == 'm' && mipantalla.estado.equals ("trato_con_la_policia")) {

    mipantalla.estado = "acepta_el_trato";
  }

  if (key == 'n' && mipantalla.estado.equals ("trato_con_la_policia")) {

    mipantalla.estado = "engaño";
  }

  if (key == ' ' && mipantalla.estado.equals ("engaño")) {

    mipantalla.estado= "fabrica2"; 
    RESET = millis();
  }

  if (key == ' ' && mipantalla.estado.equals ("acepta_el_trato")) {

    mipantalla.estado= "fabrica"; 
    RESET = millis();
  }

  if (key == 'm' && mipantalla.estado.equals ("escapar")) {

    mipantalla.estado = "salvar";
  }

  if (key == ' ' && mipantalla.estado.equals ("salvar")) {
    mipantalla.estado = "boletos";
  }
  if (key == 'a' && mipantalla.estado.equals ("boletos")) {
    mipantalla.estado = "viaje"; 
    RESET = millis();
  }

  if (key == 'b' && mipantalla.estado.equals ("boletos")) {

    mipantalla.estado = "viajee"; 
    RESET = millis();
  }

  if (key == 'n' && mipantalla.estado.equals ("encuentra_al_embajador")) {

    mipantalla.estado = "enojo";
  }
  if (key == 'm' && mipantalla.estado.equals ("enojo")) {

    mipantalla.estado = "prision2" ;
  }

  if (mipantalla.estado.equals ("china") || mipantalla.estado.equals ("mexico") || mipantalla.estado.equals ("prision2")) {
    if (key == ' ') {
      mipantalla.estado = "creditos";
    }
  }

  if (keyCode == BACKSPACE ) {
    mipantalla.estado = "titulo"; 
    posXP = 0;
  }
}

void mousse(){
  if (mouseX > 50  && mouseX < 50+50 && mouseY > 460 && mouseY < 460+50 && mipantalla.estado.equals ("patrulla") ) {

    mipantalla.estado = "rejas";
  }
  image (mipantalla.images [13], 220, 550, 150, 150);
  if (mouseX > 220 && mouseX < 220+150 && mouseY > 550 && mouseY < 550+150 && mipantalla.estado.equals ("encuentra")) {

    mipantalla.estado= "escapar";
  }
}
}
