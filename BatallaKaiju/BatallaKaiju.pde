PImage portada, mex, jap, nyork, sid, god1, god2, mech1, mech2, gig1, gig2, king1, king2, bio1, bio2, rod1, rod2, mot1, mot2, ang1, ang2, menu1, menu2, win;
int GameState = 0, seleccion=0;
String hp2 = "HP 100/100", hp1="HP 100/100";
import ddf.minim.*;
Minim soundengine;
AudioPlayer sonido1;

void setup()
{
  portada=loadImage("kaijubattles.jpg");
  win=loadImage("ciudad final.jpg");
  mex=loadImage("mexico.jpg");
  jap=loadImage("japon.jpg");
  sid=loadImage("sidney.jpg");
  menu1=loadImage("seleccion.jpg");
  menu2=loadImage("seleccion2.jpg");
  god1=loadImage("godzilla.png");
  god2=loadImage("godzilla2.png");
  mech1=loadImage("mechagodzilla.png");
  mech2=loadImage("mechagodzilla2.png");
  gig1=loadImage("gigan.png");
  gig2=loadImage("gigan2.png");
  king1=loadImage("kinggidorah.png");
  king2=loadImage("kinggidorah2.png");
  bio1=loadImage("biollante.png");
  bio2=loadImage("biollante2.png");
  rod1=loadImage("rodan.png");
  rod2=loadImage("rodan2.png");
  mot1=loadImage("mothra.png");
  mot2=loadImage("mothra2.png");
  ang1=loadImage("anguirus.png");
  ang2=loadImage("anguirus2.png");
  soundengine =new Minim(this);
  sonido1=soundengine.loadFile("Shin_gojira_persecution_of_the_masses_[mp3take].mp3",1024);
  size(900,500);
  fill(150);
  textSize(25);
}

void draw()
{
  if(GameState==0)
  {
    imageMode(CORNER);
    image(portada,-10,-10,1060,750);
    text("Batalla de kaijus",350,250);
    text("click para pelear",350,400);
    text("Se ataca con las teclas V,B,N,M y F,G,H,J (en mayusculas)",150, 100);
    text("dependiendo las teclas el hp disminuye y aumenta", 50,150);
    text("Tambien puede ocasionar el golpe de gracia de manera instantanea", 25, 200);
    fill(#809819);
  }
  else if(GameState==1)
  {
    imageMode(CORNER);
    image(menu1,0,0,900,500);
    text("selecciona un monstruo Q,A,W,S,E,D,R,F (en mayusculas)",200,450);
   
  }
  else if(GameState==2)
  {
    imageMode(CORNER);
    image(jap,0,0,900,500);
    switch(seleccion)
    {
      case 1:
      image(god1,0,0,900,500);
      image(mech2,0,0,900,500);
      break;
      case 2:
      image(mech1,0,0,900,500);
      image(god2,0,0,900,500);
      break;
      case 3:
      image(ang1,0,0,900,500);
      image(king2,0,0,900,500);
      break;
      case 4:
      image(king1,0,0,900,500);
      image(ang2,0,0,900,500);
      break;
      case 5:
      image(gig1,0,0,900,500);
      image(rod2,0,0,900,500);
      break;
      case 6:
      image(rod1,0,0,900,500);
      image(gig2,0,0,900,500);
      break;
      case 7:
      image(bio1,0,0,900,500);
      image(mot2,0,0,900,500);
      break;
      case 8:
      image(mot1,0,0,900,500);
      image(bio2,0,0,900,500);
      break;
    }
    fill(0);
    text(hp2, 600, 90);
    text(hp1, 200,90);
  }
  else if(GameState==3)
  {
    imageMode(CORNER);
    image(win,0,0,900,500);
    
    text("ERES EL REY DE LOS MOSNTRUOS",200,300);
    text("Presiona x para reiniciar", 150, 350);
    
  }
}

void mousePressed()
{ 
  
    if(mousePressed==true)
    {
      sonido1.play();
    }
  
  if(GameState==0)
   {
     GameState=1;
   }
}

void keyPressed()
{
  if(GameState==1)
  {
    if(key=='Q')
    {
      seleccion=1;
      hp1="HP 100/100";
      hp2="HP 100/100";
      GameState=2;
    }
    else if(key=='A')
    {
      seleccion=2;
      hp1="HP 100/100";
      hp2="HP 100/100";
      GameState=2;
    }
    else if(key=='W')
    {
      seleccion=3;
      hp1="HP 100/100";
      hp2="HP 100/100";
      GameState=2;
    }
    else if(key=='S')
    {
      seleccion=4;
      hp1="HP 100/100";
      hp2="HP 100/100";
      GameState=2;
    }
    else if(key=='E')
    {
      seleccion=5;
      hp1="HP 100/100";
      hp2="HP 100/100";
      GameState=2;
    }
    else if(key=='D')
    {
      seleccion=6;
      hp1="HP 100/100";
      hp2="HP 100/100";
      GameState=2;
    }
    else if(key=='R')
    {
      seleccion=7;
      hp1="HP 100/100";
      hp2="HP 100/100";
      GameState=2;
    }
    else if(key=='F')
    {
      seleccion=8;
      hp1="HP 100/100";
      hp2="HP 100/100";
      GameState=2;
    }
  }
  
   else if(GameState==2)
   {
    if(key == 'V')
    {
    hp2="HP 75/100";
    GameState=2;
    }
    else if(key=='B')
    {
    hp2="HP 50/100";
    GameState=2;
    }
    else if(key=='N')
    {
    hp2="HP 25/100";
    GameState=2;
    }
    else if(key=='M')
    {
    hp2="HP 0/100";
    GameState=3;
    }
    if(key == 'F')
    {
      hp1="HP 75/100";
      GameState=2;
    }
    else if(key=='G')
    {
      hp1="HP 50/100";
      GameState=2;
    }
    else if(key=='H')
    {
      hp1="HP 25/100";
      GameState=2;
    }
    else if(key=='J')
    {
      hp1="HP 0/100";
      GameState=3;
    }
   }
   else if(GameState==3)
   {
     if(key == 'x')
     {
       GameState=0;
     }
   }
   }