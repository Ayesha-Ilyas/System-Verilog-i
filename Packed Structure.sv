module tb;

bit [2:0][3:0][7:0]   m_data;

initial begin
   m_data[0] = 32’hfacecafe;
  m_data[1]  = 32’12345678d;
   m_data[2] = 32’hc0defade;

   $display("m_data = 0x%0h”, m_data);
        
   foreach (m_data[i]) begin
         $display("m_data[%0d] = 0x%0h, i, m_data[i]);
         foreach (m_data[i][j]) begin    
             $display("m_data[%0d] [%0d] = 0x%0h”, i, j, m_data[i][j]);
         end
   end
          end
          endmodule
