.PHONY: target1 # Target 1 help text                                                                                     
target1: target2 target3                                                                                                 
    @echo "Target 1"                                                                                                     
                                                                                                                         
.PHONY: target2 # Target 2 help text                                                                                     
target2:                                                                                                                 
    @echo "Target 2"                                                                                                     
                                                                                                                         
.PHONY: target3                                                                                                          
target3:                                                                                                                 
    @echo "No help for this target"                                                                                      
                                                                                                                         
.PHONY: help # Generate list of targets with descriptions                                                                
help:                                                                                                                    
    @grep '^.PHONY: .* #' Makefile | sed 's/\.PHONY: \(.*\) # \(.*\)/\1 \2/' | expand -t20
