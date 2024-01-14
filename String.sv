// Code your design here
//String 
module strig(msg,show);
  input string msg;
  output string show;
  logic pass= 1;
  // msg = "hi!";
  initial begin 
    if (pass)
      show = {msg,"P"};
    else begin
      show = {msg, "f"};
      $display ("%s", show );
      $display ("%c", show[0]);
  end
  end
endmodulea