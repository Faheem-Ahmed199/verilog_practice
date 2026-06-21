/*
| x3 | x2 | x1 | f |
| -- | -- | -- | - |
| 0  | 0  | 0  | 0 |
| 0  | 0  | 1  | 0 |
| 0  | 1  | 0  | 1 |
| 0  | 1  | 1  | 1 |
| 1  | 0  | 0  | 0 |
| 1  | 0  | 1  | 1 |
| 1  | 1  | 0  | 0 |
| 1  | 1  | 1  | 1 |

f=m(2,3,5,7)
*/
module top_module( 
    input x3,
    input x2,
    input x1, 
    output f   
);
    assign f=(~x3 & x2) | (x1 & x3);

endmodule

