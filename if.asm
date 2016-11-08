# if(a == b){
# 	codice if...	
# }

bne	$t0, $t1, else1		# se t0 != t1 salta a exit1	

# codice if...

exit1:

#codice fuori if...

##########################################################

# if(a != b){
# 	codice if...	
# }

beq	$t0, $t1, else2		# se t0 == t1 salta a exit2

# codice if...

exit2:

#codice fuori if...

##########################################################

# if(a >= b){
# 	codice if...	
# }

blt	$t0, $t1, else3		# se t0 < t1 salta a exit3

# codice if...

exit3:

#codice fuori if...

##########################################################

# if(a > b){
# 	codice if...	
# }

ble	$t0, $t1, else4		# se t0 <= t1 salta a exit4

# codice if...

exit4:

#codice fuori if...

##########################################################

# if(a <= b){
# 	codice if...	
# }

bgt	$t0, $t1, else5		# se t0 > t1 salta a exit5

# codice if...

exit5:

#codice fuori if...

##########################################################

# if(a < b){
# 	codice if...	
# }

bge	$t0, $t1, else6		# se t0 >= t1 salta a exit6

# codice if...

exit6:

#codice fuori if...