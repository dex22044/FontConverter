/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

public void textfield1_change1(GTextField source, GEvent event) { //_CODE_:FontPathField:644422:
  println("FontPathField - GTextField >> GEvent." + event + " @ " + millis());
} //_CODE_:FontPathField:644422:

public void SelectInFile(GButton source, GEvent event) { //_CODE_:SelectInFileBtn:389977:
  selectInput("Выберите TTF файл","selinfile");
} //_CODE_:SelectInFileBtn:389977:

public void textfield1_change2(GTextField source, GEvent event) { //_CODE_:SrffPathField:223259:
  println("SrffPathField - GTextField >> GEvent." + event + " @ " + millis());
} //_CODE_:SrffPathField:223259:

public void SrffSelectFile(GButton source, GEvent event) { //_CODE_:SrffSelectFileBtn:780253:
  selectOutput("Выберите SRFF файл (также он будет доступен для чтения)","seloutfile");
} //_CODE_:SrffSelectFileBtn:780253:

public void ConvertFile(GButton source, GEvent event) { //_CODE_:ConvertFileBtn:746606:
  convertFont();
} //_CODE_:ConvertFileBtn:746606:

public void textfield1_change3(GTextField source, GEvent event) { //_CODE_:FontSymNumberField:979773:
  println("FontSymNumberField - GTextField >> GEvent." + event + " @ " + millis());
} //_CODE_:FontSymNumberField:979773:

public void button1_ShowSym(GButton source, GEvent event) { //_CODE_:ShowSymBtn:229154:
  drawSrffSymbol();
} //_CODE_:ShowSymBtn:229154:

public void textfield1_change(GTextField source, GEvent event) { //_CODE_:FontRes:697240:
  println("FontRes - GTextField >> GEvent." + event + " @ " + millis());
} //_CODE_:FontRes:697240:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("Font converter");
  FontPathField = new GTextField(this, 10, 10, 490, 20, G4P.SCROLLBARS_NONE);
  FontPathField.setPromptText("Путь к файлу TTF");
  FontPathField.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  FontPathField.setOpaque(true);
  FontPathField.addEventHandler(this, "textfield1_change1");
  SelectInFileBtn = new GButton(this, 510, 10, 80, 20);
  SelectInFileBtn.setText("Выбрать...");
  SelectInFileBtn.setLocalColorScheme(GCScheme.ORANGE_SCHEME);
  SelectInFileBtn.addEventHandler(this, "SelectInFile");
  SrffPathField = new GTextField(this, 10, 40, 490, 20, G4P.SCROLLBARS_NONE);
  SrffPathField.setPromptText("Путь к .srff файлу");
  SrffPathField.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  SrffPathField.setOpaque(true);
  SrffPathField.addEventHandler(this, "textfield1_change2");
  SrffSelectFileBtn = new GButton(this, 510, 40, 80, 20);
  SrffSelectFileBtn.setText("Выбрать...");
  SrffSelectFileBtn.setLocalColorScheme(GCScheme.ORANGE_SCHEME);
  SrffSelectFileBtn.addEventHandler(this, "SrffSelectFile");
  ConvertFileBtn = new GButton(this, 10, 100, 100, 20);
  ConvertFileBtn.setText("Конвертировать");
  ConvertFileBtn.setLocalColorScheme(GCScheme.RED_SCHEME);
  ConvertFileBtn.addEventHandler(this, "ConvertFile");
  FontSymNumberField = new GTextField(this, 400, 80, 100, 20, G4P.SCROLLBARS_NONE);
  FontSymNumberField.setPromptText("Номер символа");
  FontSymNumberField.setOpaque(true);
  FontSymNumberField.addEventHandler(this, "textfield1_change3");
  ShowSymBtn = new GButton(this, 510, 80, 80, 20);
  ShowSymBtn.setText("Показать");
  ShowSymBtn.addEventHandler(this, "button1_ShowSym");
  FontRes = new GTextField(this, 10, 70, 230, 20, G4P.SCROLLBARS_NONE);
  FontRes.setPromptText("Разрешение шрифта (формат XnY)");
  FontRes.setOpaque(true);
  FontRes.addEventHandler(this, "textfield1_change");
}

// Variable declarations 
// autogenerated do not edit
GTextField FontPathField; 
GButton SelectInFileBtn; 
GTextField SrffPathField; 
GButton SrffSelectFileBtn; 
GButton ConvertFileBtn; 
GTextField FontSymNumberField; 
GButton ShowSymBtn; 
GTextField FontRes; 
