module JKFF(
    input j,k,clk,
    output reg q,qbar
);

    always @(posedge clk)
    begin
    if (j == 0 && k == 0) 
    begin
        q = q;
        qbar = ~q;
    end

    else if (j == 0 && k == 1) 
    begin
        q = 0;
        qbar = ~q;
    end

    else if (j == 1 && k == 0) 
    begin
        q = 1;
        qbar = ~q;
    end

    else if (j == 1 && k == 1) 
    begin
        q = ~q;
        qbar = ~q;
    end
    
    end
    
    
    
endmodule



module tb_JKFF();
    reg j,k,clk;
    wire q,qbar;

    JKFF jk_flip_flop(j,k,clk,q,qbar);

    
    initial begin
        clk=0;
        forever #10 clk = ~clk;  
    end 


    initial begin
        j = 1;
        k = 0;
        #100;

        j = 0;
        k = 0;
        #100;

        j = 1;
        k = 0;
        #100;

        j = 0;
        k = 1;
        #100;

        j = 1;
        k = 1;
        #100;
     
    end
    
endmodule

