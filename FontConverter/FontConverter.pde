import g4p_controls.*;

void setup(){
  size(600,200);
  createGUI();
}

void draw(){
  
}

void selinfile(File f){
  if(f!=null){
    FontPathField.setText(f.getAbsolutePath());
  }
}

void seloutfile(File f){
  if(f!=null){
    SrffPathField.setText(f.getAbsolutePath());
  }
}

void convertFont(){
  int[] res=int(split(FontRes.getText(),'n'));
  if(res.length==2){
    PGraphics tempGraphics=createGraphics(res[0],res[1]);
    OutputStream srffFileOutStr=createOutput(SrffPathField.getText());
    try{
      srffFileOutStr.write((byte)res[0]);
      srffFileOutStr.write((byte)res[1]);
      PFont thisFont=createFont(FontPathField.getText(),res[1]/1.2);
      for(int i=0;i<256;i++){
        PImage sym;
        tempGraphics.beginDraw();
        tempGraphics.textFont(thisFont);
        tempGraphics.background(0);
        tempGraphics.fill(255);
        tempGraphics.text((char)i,3,res[1]*0.8);
        sym=tempGraphics.get();
        tempGraphics.endDraw();
        if(i==33)image(sym,200,110);
        for(int j=0;j<sym.pixels.length;j++){
          srffFileOutStr.write((int)brightness(sym.pixels[j]));
        }
      }
      srffFileOutStr.close();
    }catch(Exception e){}
  }
}

void drawSrffSymbol(){
  InputStream srffFileInput=createInput(SrffPathField.getText());
  try{
    int res_w=srffFileInput.read();
    int res_h=srffFileInput.read();
    PImage symbol=createImage(res_w,res_h,RGB);
    srffFileInput.skip(res_w*res_h*(int(FontSymNumberField.getText())-1));
    for(int i=0;i<res_w*res_h;i++){
      int br=srffFileInput.read();
      symbol.pixels[i]=color(br,br,br);
    }
    image(symbol,400,110);
  }catch(Exception e){}
}
