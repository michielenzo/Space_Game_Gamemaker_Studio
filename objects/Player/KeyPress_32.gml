if(STATE == "idle"){
	velocity = -5;
	STATE = "jumping"
	return
}

if(STATE == "jumping"){
	STATE = "boosting"
	
	if(velocity - boost_force > 0){
		velocity = 0
	}else{
		velocity -= boost_force
	} 
} 

