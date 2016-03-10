#####################################
# Lab 1 - 3 
#
# Anding 
# eg 0x92               1001 0010
#                 andi          1
#                --------------------
#              srli             0        count $3, $3, $2   where $2 is 0 or 1
#              ----------------------
#                        0100 1001
#####################################

.text

.global main
main: 
     
       # Clearing the registers 
       addi $2, $0, 0
       addi $3, $0, 0
      
       jal readswitches     
     
     
      
loop: 
      andi   $2, $1, 1          # checking the last bit of the values inside the register 1       
      srli   $1, $1, 1          # Shifting 1 bit at one time, until it go through to end
      add    $3, $3, $2         # updating the register 3 values as a count
      
      # checking that register 1 is equal to zero, otherwise keep looping
      bnez  $1, loop
      
     lw    $2, array ($3)
     
     jal writessd
     
     j main
     
.data
        array: 
                .word 0
                .word 1
                .word 2
                .word 3
                .word 4
                .word 5
                .word 6
                .word 7           
                .word 8
                      
                  



