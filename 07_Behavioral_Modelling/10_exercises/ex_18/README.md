### Problem Statement:
```
Design an 8-bit counter by using a forever loop, named block, and disabling ofnamed block.
The counter starts counting at count = 5 and finishes at count = 67.
The count is incremented at positive edge of clock. 
The clock has a time period of 10. 
The counter counts through the loop only once and then is disabled. 
(Hint: Use the disable statement).
```

### Verilog Implementation:
```verilog
initial begin

    count = start_count;
    clock = 1'b0;
    
    begin: counting_loop
    forever begin
        @(posedge clock) count <= count + 1'b1;

        $display("%3t -- Count = %b = %d",$time, count, count);

        if(count >= end_count) begin
            disable counting_loop;
            
        end
    end
    end
    $finish;
end
```

### Simulation Output:
```
  5 -- Count = 00000101 =   5
 15 -- Count = 00000110 =   6
 25 -- Count = 00000111 =   7
 35 -- Count = 00001000 =   8
 45 -- Count = 00001001 =   9
 55 -- Count = 00001010 =  10
 65 -- Count = 00001011 =  11
 75 -- Count = 00001100 =  12
 85 -- Count = 00001101 =  13
 95 -- Count = 00001110 =  14
105 -- Count = 00001111 =  15
115 -- Count = 00010000 =  16
125 -- Count = 00010001 =  17
135 -- Count = 00010010 =  18
145 -- Count = 00010011 =  19
155 -- Count = 00010100 =  20
165 -- Count = 00010101 =  21
175 -- Count = 00010110 =  22
185 -- Count = 00010111 =  23
195 -- Count = 00011000 =  24
205 -- Count = 00011001 =  25
215 -- Count = 00011010 =  26
225 -- Count = 00011011 =  27
235 -- Count = 00011100 =  28
245 -- Count = 00011101 =  29
255 -- Count = 00011110 =  30
265 -- Count = 00011111 =  31
275 -- Count = 00100000 =  32
285 -- Count = 00100001 =  33
295 -- Count = 00100010 =  34
305 -- Count = 00100011 =  35
315 -- Count = 00100100 =  36
325 -- Count = 00100101 =  37
335 -- Count = 00100110 =  38
345 -- Count = 00100111 =  39
355 -- Count = 00101000 =  40
365 -- Count = 00101001 =  41
375 -- Count = 00101010 =  42
385 -- Count = 00101011 =  43
395 -- Count = 00101100 =  44
405 -- Count = 00101101 =  45
415 -- Count = 00101110 =  46
425 -- Count = 00101111 =  47
435 -- Count = 00110000 =  48
445 -- Count = 00110001 =  49
455 -- Count = 00110010 =  50
465 -- Count = 00110011 =  51
475 -- Count = 00110100 =  52
485 -- Count = 00110101 =  53
495 -- Count = 00110110 =  54
505 -- Count = 00110111 =  55
515 -- Count = 00111000 =  56
525 -- Count = 00111001 =  57
535 -- Count = 00111010 =  58
545 -- Count = 00111011 =  59
555 -- Count = 00111100 =  60
565 -- Count = 00111101 =  61
575 -- Count = 00111110 =  62
585 -- Count = 00111111 =  63
595 -- Count = 01000000 =  64
605 -- Count = 01000001 =  65
615 -- Count = 01000010 =  66
625 -- Count = 01000011 =  67
src.v:30: $finish called at 625 (1s)
```