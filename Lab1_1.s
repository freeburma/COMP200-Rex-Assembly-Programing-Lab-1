.text

.global main
main: 
      # Loading the message to register 1
       la   $2, message
       
       # Displaying the message
       jal putstr
       
        jal readswitches                # Jumping to readSwitches from rex.o
      jal writessd                    # Jumping to writessd from rex.o and display it on SSD
     

      
loop: 
      lw    $1, 0x73000 ($0)          # loading the switch values 
      sw    $1, 0x73003 ($0)          # Storing the reg value at right SSD
      ############## Switches Calculation    ############## 
      # Scenario 1
      # Base Case 
      # Right Switch On only  - 0x1
      # All Switch On         - 0xff
      
      # 3 switches on 0x7
      # 4 Switches on 0xF
      # if the 
      
      
      
      ############## End Swithes Calculation ###############
      srli  $1, $1, 4                 # 
      
      sw    $1, 0x73002 ($0)          # Storing the value on left SSD
      jr    $ra


      j main    
      
                  


# This will show looping
message: 
      .asciiz "This is looping ... \n"
