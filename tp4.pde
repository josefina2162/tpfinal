


Aventura miaventura;
//TP4
import ddf.minim.*;
Minim music;
AudioPlayer playM;



void setup () {
miaventura=new Aventura();
  size (800, 600); 

  

//CARGO MUSICA 
music = new Minim (this);
playM = music.loadFile ("boris.mp3");

}

void draw () {

miaventura.dibujo();



}

void keyPressed () {
 miaventura.teclas();
 miaventura.variablesI ();
}

void mousePressed () {
miaventura.mousse();
miaventura.variablesI ();
  
}
