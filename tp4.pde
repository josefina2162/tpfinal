

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

  

//CARGO MUSICA 
music = new Minim (this);
playM = music.loadFile ("boris.mp3");

}

void draw () {

 
 music (); 



}

void keyPressed () {

 
}

void mousePressed () {

  
}



void music () {
  
//if para música 
  if (estado.equals ("titulo") || estado.equals ("patrulla") || estado.equals ("trato_con_la_policia") || estado.equals ("acepta_el_trato") || estado.equals ("engaño") ) {
 
 playM.play ();
  }else if (estado.equals ("creditos")){
    playM.pause ();
}
}
 
