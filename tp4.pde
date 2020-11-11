

//TP4
import ddf.minim.*;
Minim music;
AudioPlayer playM;

//VARIABLES 
String estado; 
float posXP, posXC;
int RESET = 0;
int CANTIDAD_DE_MS = 3 * 1000;

void setup () {

  size (800, 600); 
  background (255); 
  

//CARGO MUSICA 
music = new Minim (this);
playM = music.loadFile ("boris.mp3");





//VALORES INICIALES Y CARACTERISTICAS

  posXP= 0;
  posXC = 0;
  estado = "titulo" ;

}

void draw () {

  background (255);
 
 music (); 

// CICLO IF PARA MANEJAR ESTADOS

  if (estado.equals ("titulo")) {

    image (images [0], 400, 300);
    texto (50, 0);
    text (misTextos [0], 400, 50); 
    fill (250, 3, 3);
    text (misTextos [0], 404, 54);
    texto (30, 0);
    text (misTextos [1], 400, 550, 10);
    
    
  } else if (estado.equals ("patrulla") ) {
 
    
    image (images [0], 400, 300);
    image (images [1], 1500+ posXP, 460, 250, 250);
    texto (12, 0);
    flechaI ();
    text (misTextos [2], 50, 460);
  } else if (estado.equals ("rejas") ) {
    trasRejas ();
    text ( misTextos [3], 400, 550); 
    flechaD ();
    texto (12,  #FA0303);
    cuadrados (650, 500, 80, 20, #FF0303);
     texto (12, 0);
    text (misTextos [4], 690, 510);
  } else if (estado.equals ("trato_con_la_policia") ) {

    trato (); 
    image (images [7], 600, 200, 200, 200);
    image (images [8], 600, 190, 80, 80);
    texto (15, 0);
    text (misTextos [5], 200, 150);

 
    cuadrados (25, 500, 250, 150, #FF0303);
    texto (14, 0);
    text (misTextos [6], 150, 550);
  } else if (estado.equals ("acepta_el_trato") ) {


    trato (); 
    image (images [9], 510, 250, 200, 200);
    image (images [10], 510, 225, 60, 60);
     texto (18, 0);
    text (misTextos [7], 235, 150);
    flechaI ();
    cuadrados (50, 500, 80, 20, #FF0303);
    texto (12, 0);
    text (misTextos [4], 90, 510);
  } else if (estado.equals ("engaño"))
  {
   trato (); 
    image (images [9], 510, 250, 200, 200);
    image (images [10], 510, 225, 60, 60);
    texto (18, 0);
    text (misTextos [9], 300, 120);
    flechaI ();
     cuadrados (50, 500, 80, 20, #FF0303);
    texto (12, 0);
    text (misTextos [4], 90, 510);
  } else if (estado.equals ("fabrica") ) {

    if ( millis() > RESET+CANTIDAD_DE_MS ) {
      estado = "encuentra_al_embajador";
    }
    
    viajeFabrica (); 
  } else if (estado.equals ("encuentra_al_embajador") ) {

    image (images [22], 400, 300, 800, 600);
    image (images [8], 100, 500, 200, 200);
    image (images [6], 450, 500, 300, 300);
    image (images [13], 220, 550, 150, 150);
    image (images [13], 550, 550, 150, 150);
     cuadrados (250, 30, 300, 80, #FF0303);
     texto (20, 0);
    text (misTextos [12], 400, 65);
  } else if (estado.equals ("enojo")) {

   ciudad (); 
    image (images [14], 500, 400, 300, 300); 
    cuadrados (200, 30, 400, 80, #FF0303);
    texto (20, 0);
    text (misTextos [13], 400, 65);
   flechaD ();
    cuadrados (650, 500, 80, 20, #FF0303);
    texto (12, 0);
    text (misTextos [14], 690, 510);
  } else if (estado.equals ("prision2")) {

    trasRejas ();
    text ( misTextos [15], 400, 550);
  } else if (estado.equals ("fabrica2") ) {


    viajeFabrica (); 
    if ( millis() > RESET+CANTIDAD_DE_MS ) {
      estado = "encuentra";
    }
 
   } else if (estado.equals ("encuentra") ) {

     fabricaEmbajador ();
    image (images [8], mouseX, mouseY, 150, 150);
  cuadrados (250, 50, 300, 50, #FF0303);
    texto (20, 0);
    text (misTextos [8], 400, 65);
  } else if (estado.equals ("escapar" )) {
  fabricaEmbajador ();
   cuadrados (250, 30, 300, 80, #FF0303);
     texto (20, 0);
    text (misTextos [17], 400, 65);
  } else if (estado.equals ("salvar") ) {

     ciudad (); 
    image (images [5], 500, 400, 300, 300); 
    image (images [16], 550, 200, 80, 80); 
     cuadrados (150, 50, 500, 50, #FF0303);
    texto (15, 0);
    text (misTextos [18], 400, 65);
  } else if (estado.equals ("boletos") ) {

    background (255);
    image (images [17], 400, 200, 300, 300); 
    image (images [18], 400, 450, 300, 300); 
     texto (20, 0);
    text (misTextos [10], 135, 400);
    text (misTextos [20], 600, 200); 
    text (misTextos [21], 600, 450);
  } else if (estado.equals ("viaje") ) {

    barco ();
    if ( millis() > RESET+CANTIDAD_DE_MS ) {

      estado = "mexico";
    }
  } else if (estado.equals ("mexico")) {

    flechaD ();
    image (images [19], 400, 300, 800, 600); 
    image (images [6], 350, 515, 250, 250);
    cuadrados (650, 500, 80, 20, #FF0303);
    texto (12, 0);
    text (misTextos [4], 690, 510);
  } else if (estado.equals ("viajee")) {

    barco ();
    if ( millis() > RESET+CANTIDAD_DE_MS ) {
      estado = "china";
    }
  } else if (estado.equals ("china") ) {
    flechaD ();
    image (images [21], 400, 300, 800, 600);
    image (images [6], 300, 515, 250, 250);
  cuadrados (650, 500, 80, 20, #FF0303);
     texto (12, 0);
    text (misTextos [4], 690, 510);
  } else if (estado.equals ("creditos") ) {

    background (0); 
    texto (30, 255);
    text (misTextos [16], 400, 150); 
    textSize (25); 
    text (misTextos [19], 400, 300);
     cuadrados (260, 490, 300, 20, #FF0303);
    texto (12, 0);
    text (misTextos [22], 400, 500);
  }

//ACTUALIZO VALORES 
  posXP = posXP - 5;
  posXC = posXC - 5;

}

void keyPressed () {

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

void mousePressed () {

  if (mouseX > 50  && mouseX < 50+50 && mouseY > 460 && mouseY < 460+50 && estado.equals ("patrulla") ) {

    estado = "rejas";
  }
  image (images [13], 220, 550, 150, 150);
  if (mouseX > 220 && mouseX < 220+150 && mouseY > 550 && mouseY < 550+150 && estado.equals ("encuentra")) {

    estado= "escapar";
  }
}

void trasRejas () {
   background (50);
    image (images [3], 400, 300, 800, 600);
    fill (250, 3, 3);
    rect (200, 500, 400, 200);
    fill (0);
    textSize (13);
  
}

void trato () {
   background (#B7B1B1);
    image (images [5], 600, 400, 300, 300); 
    image (images [6], 400, 400, 350, 350);
  
}

void viajeFabrica () {
    background (255);
    image (images [11], 400, 300, 800, 600); 
    image (images [12], 400, 400, 200, 200);
    textSize (40);
    fill (0);
    text ("Viajando a la fabrica...", 450, 150);
    
}
void fabricaEmbajador () {
    image (images [22], 400, 300, 800, 600); 
    image (images [6], 450, 500, 300, 300);
    image (images [13], 220, 550, 150, 150);
    image (images [15], 550, 550, 150, 150);
}
void ciudad () {
   image (images [11], 400, 300, 800, 600); 
    image (images [1], 850, 500, 500, 600);
    image (images [8], 250, 450, 250, 250);
}

void flechaD () {
  image (images [4], 700, 550, 50, 50);
}

void flechaI () {
   image (images [2], 50, 460, 50, 50);
}
 
void barco () {
   image (images [20], 400, 300, 800, 600); 
}
void texto (int tam, int col) {
  textFont (miletra); 
  fill (col);
  textSize (tam); 
  
}
void cuadrados (int x, int y, int tam, int tam2, int col) {
  fill (col);
  rect (x, y, tam, tam2);
  
  }


void music () {
  
//if para música 
  if (estado.equals ("titulo") || estado.equals ("patrulla") || estado.equals ("trato_con_la_policia") || estado.equals ("acepta_el_trato") || estado.equals ("engaño") ) {
 
 playM.play ();
  }else if (estado.equals ("creditos")){
    playM.pause ();
}
}
 
