// Code your design here

// 	module tb;
//   class myclass;
//     $display("hi");
//   endclass
//   myclass c1;
//   initial
//     begin
//       c1 = new;
//     end 
//   myclass c2= new;
//   $display(c1); 
// endmodule 


module unique_if;
  //variables declaration
  int a,b,c;

   initial begin
     //initialization
     a=10;
     b=20;
     c=40;

     unique if ( a < b ) 
       $display("\t a is less than b");
     else   if ( a < c ) 
       $display("\t a is less than c");
     else                
       $display("\t a is greater than b and c");
  end
endmodule
