void wheel() {
  rect(StartX-90, StartY+285,180, 210);
  fill(0);
  if (mov < 3) {

    fill(155);
    
    rect(StartX-90, StartY+285+(mov*20),180, 10);
    
    rect(StartX-90, StartY+305+(mov*20),180, 10);

    rect(StartX-90, StartY+325+(mov*20),180, 10);

    rect(StartX-90, StartY+345+(mov*20),180, 10);
    
    rect(StartX-90, StartY+385+(mov*20),180, 10);
    
    rect(StartX-90, StartY+425+(mov*20),180, 10);
    
    mov+=1;
  } else {

     mov =0;
  }
}