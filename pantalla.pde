class Pantalla {

int numImagenes = 23 ; 
PImage [] images = new PImage [numImagenes]; 

String estado; 
float posXP, posXC;
int RESET = 0;
int CANTIDAD_DE_MS = 3 * 1000;
posXP= 0;
  posXC = 0;
  estado = "titulo";

Pantalla () {

background (255);
arreglosTextos ();


for (int i = 0; i <numImagenes; i++ ) {
  images [i] = loadImage ("img" + i + ".png" );
}
   imageMode (CENTER); 


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
void arreglosTextos (){

misTextos [0] = "Escapar del engaño";
misTextos [1] ="Presione la barra espaciadora para comenzar";
misTextos [2] ="Press";
misTextos [3] ="Él es Christofer, un ladrón que fue buscado por mucho tiempo en toda Europa. \n Esta condenado a 20 años de cárcel por varios robos que organizo en bancos y museos.\n Ahora la policía necesita de su ayuda y tienen algo para ofrecerle que le podría interesar.";
misTextos [4] ="Barra espaciadora";
misTextos [5] ="La policía le propone a Christofer un trato, si los ayuda a rescatar \n al embajador de China  que está secuestrado en una fábrica de vinos \n le consideran su libertad.";
misTextos [6] ="Si presionas la letra M Christofer ayuda a la policia. \n Si presionas la letra N Christofer planea su fuga.";
misTextos [7] ="Christofer acepta el trato y planea meterse dentro \n de un barril para poder entrar en la fábrica sin levantar sospechas.";
misTextos [8] ="Mete al embajador dentro del barril";
misTextos [9] ="Christofer acepta el trato pero no cree en la palabra de la policía. \n Por eso ingenia un plan de fuga. Al momento de salir de la fábrica él \n se meterá en un barril desechable que subiran al camión de basura \n podra esquivar a la policía y así conseguir su libertad.";
misTextos [10] ="Presiona la letra A o B para \n elegir el destino de Christofer.";
misTextos [11] ="Viajando a la fabrica...";
misTextos [12] ="Presiona la letra N para que puedan \n entrar en los barriles y escapar ";
misTextos [13] ="Christofer se da cuenta de que ha sido engañado y \n tendra que volver a la carcel a cumplir con su condena ";
misTextos [14] ="Press M";
misTextos [15] ="Christofer fue usado por la policia y tendra que \n cumplir su condena hasta tener un plan para escapar. \n Presiona la barra espaciadora para reiniciar";
misTextos [16] ="CREDITOS";
misTextos [17] ="Presiona la letra M para \n escapar en el barril viejo";
misTextos [18] ="Presiona la barra espaciadora para seguir la fuga de Christofer";
misTextos [19] ="Escapar del engaño \n Josefina Zappettini \n Tecno1 \n Comision 2 \n Facultad de Artes \n Julio 2020";
misTextos [20] ="A";
misTextos [21] ="B";
misTextos [22] ="Presione BACKSPACE para volver a comenzar";
  
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
}
