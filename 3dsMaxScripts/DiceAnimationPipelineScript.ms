--Mav's Animation Script
--This script serves to automate the same repetitive animations that we will need for multiple dice that will then be repeated for multiple materials

--------------------------------------------------
-------------------UI--------------------------
--Creates an actual floating UI without this line no UI is rendered on the screen --	
	btnThing = newrolloutfloater "Die Crawling Dice Animation Tool" 600 600
--Adds the Rollouts to the floater
   addrollout newRollout1 btnThing

--This Rollout is to manage the D4
rollout newRollout1 "Automation Magic" width:300 height:1000
(
	
	-----ANIMATION BUTTONS-----
	button btn1 "Animate D4" pos:[23,20]width:100 height:40
	on btn1 pressed do
	(
		AnimateD4()
    )
	
	button btn5 "Animate D6" pos:[23,60]width:100 height:40
	on btn5 pressed do
	(
		AnimateD6()
    )
	
	button btn6 "Animate D8" pos:[23,100]width:100 height:40
	on btn6 pressed do
	(
		AnimateD8()
    )
	
	button btn10 "Animate D10" pos:[23,140]width:100 height:40
	on btn10 pressed do
	(		
		AnimateD10()
    )
	
	button btn11 "Animate D12" pos:[23,180]width:100 height:40
	on btn11 pressed do
	(		
		AnimateD12()
    )
	
	button btn12 "Animate D20" pos:[23,220]width:100 height:40
	on btn12 pressed do
	(		
		AnimateD20()
    )
	

	----------------------------------------------------------------
	
	
	
	
	----------------------------DEBUG BUTTONS----------------------------------------------------
	button btn2 "[TESTING]Move to  D4 to Green Screen" pos:[123,20]width:100 height:40
	
	on btn2 pressed do
	(
		--Creates variables to store the positions of the objects
	   obj1 = $D4_Anim
	   target = $Target_01
	   --Next Line does executes the movement
	   obj1.position = target.position
		
	)
	button btn3 "[TESTING]Move D4 To Original Position" pos:[223,20]width:100 height:40
	on btn3 pressed do
	(
		--Creates variables to store the positions of the objects
	   obj = $D4_Anim
	   target = $Target_D4
	   --Next Line does executes the movement
	   obj.position = target.position
		
	)
	button btn4 "[TESTING]Move D6 To Original Position" pos:[223,60]width:100 height:40
	on btn4 pressed do
	(
		--Creates variables to store the positions of the objects
	   obj = $D6_Anim
	   newTarget = $Target_D6
	   --Next Line does executes the movement
	   obj.position = newTarget.position
		
	)
		button btn7 "[TESTING]Move D6 To Green Screen" pos:[123,60]width:100 height:40
	on btn7 pressed do
	(
		--Creates variables to store the positions of the objects
	   obj1 = $D6_Anim
	   target = $Target_01
	   --Next Line does executes the movement
	   obj1.position = target.position
		
	)
	button btn8 "[TESTING]Move D8 To Green Screen" pos:[123,100]width:100 height:40
	on btn8 pressed do
	(
		--Creates variables to store the positions of the objects
	   obj1 = $D8_Anim
	   target = $Target_01
	   --Next Line does executes the movement
	   obj1.position = target.position
		
	)
	button btn9 "[TESTING]Move D8 To Original Position" pos:[223,100]width:100 height:40
	on btn9 pressed do
	(
		--Creates variables to store the positions of the objects
	   obj = $D8_Anim
	   newTarget = $Target_D8
	   --Next Line does executes the movement
	   obj.position = newTarget.position
		
	)
	button btn13 "[TESTING]Move D10 To Green Screen" pos:[123,140]width:100 height:40
	on btn13 pressed do
	(
		--Creates variables to store the positions of the objects
	   obj1 = $D10_Anim
	   target = $Target_01
	   --Next Line does executes the movement
	   obj1.position = target.position
		
	)
	button btn14 "[TESTING]Move D8 To Original Position" pos:[223,140]width:100 height:40
	on btn14 pressed do
	(
		--Creates variables to store the positions of the objects
	   obj = $D10_Anim
	   newTarget = $Target_D10
	   --Next Line does executes the movement
	   obj.position = newTarget.position
		
	)
	button btn15 "[TESTING]Move D12 To Green Screen" pos:[123,180]width:100 height:40
	on btn15 pressed do
	(
		--Creates variables to store the positions of the objects
	   obj1 = $D12_Anim
	   target = $Target_01
	   --Next Line does executes the movement
	   obj1.position = target.position
		
	)
	button btn16 "[TESTING]Move D12 To Original Position" pos:[223,180]width:100 height:40
	on btn16 pressed do
	(
		--Creates variables to store the positions of the objects
	   obj = $D12_Anim
	   newTarget = $Target_D12
	   --Next Line does executes the movement
	   obj.position = newTarget.position
		
	)
		button btn17 "[TESTING]Move D20 To Green Screen" pos:[123,220]width:100 height:40
	 on btn17 pressed do
	(
		--Creates variables to store the positions of the objects
	   obj1 = $D20_Anim
	   target = $Target_01
	   --Next Line does executes the movement
	   obj1.position = target.position
		
	)
		button btn18 "[TESTING]Move D20 To Original Position" pos:[223,220]width:100 height:40
	on btn18 pressed do
	(
		--Creates variables to store the positions of the objects
	   obj = $D20_Anim
	   newTarget = $Target_D20
	   --Next Line does executes the movement
	   obj.position = newTarget.position
		
	)
	
)	
---------------END OF DEBUG BUTTONS---------------------------	
-----------------------------------------------------------------------------------
--------------------END OF UI--------------------------------------------------------------------	


----------DICE ANIMATION FUNCTIONS-------------------------------
function AnimateD4 =
(
	--Creates variables to store the positions of the objects
	   obj1 = $D4_Anim
	   target = $Target_01
	   --Next Line does executes the movement
	   obj1.position = target.position
	--Starts Recording
		 set animate on
	    --to go to frame 30	
		 sliderTime = 30f	
		-- rotate is to rotate the object  on the X negatively
	    rotate obj1 (angleaxis -360 [1,0,0])
		 --to go to frame 60	
		 sliderTime = 60f
		 -- rotate is to rotate the object  on the X  positively
	    rotate obj1 (angleaxis 360 [1,0,0])
		 --to go to frame 90	
		 sliderTime = 90f
		 -- rotate is to rotate the object  on the Y negatively
	    rotate obj1(angleaxis -360 [0,1,0])
		 --to go to frame 120	
		 sliderTime = 120f
		 -- rotate is to rotate the object  on the Y positively
	    rotate obj1 (angleaxis 360 [0,1,0])
		  --to go to frame 150
		 sliderTime = 150f
		 -- rotate is to rotate the object  on the Z  negatively
	    rotate obj1 (angleaxis -360 [0,0,1])
		  --to go to frame 180
		 sliderTime = 180f
		 -- rotate is to rotate the object  on the Z  positively
	    rotate obj1(angleaxis 360 [0,0,1])
		  --to go to frame 210
		 sliderTime = 210f
		 -- rotate is to rotate the object  diagonally on the X and Z  positively
	    rotate obj1(angleaxis 360 [1,0,1])
		--to go to frame 240
		 sliderTime = 240f
		 -- rotate is to rotate the object  diagonally on the X and Z  negatively
	    rotate obj1 (angleaxis -360 [1,0,1])
		--to go to frame 270
		 sliderTime = 270f
		 -- rotate is to rotate the object  diagonally on the -X and -Z  negatively		
	    rotate obj1 (angleaxis -360 [0.5,0, -0.5])
		--to go to frame 300
		 sliderTime = 300f
		 -- rotate is to rotate the object  diagonally on the -X and -Z  positively		
	    rotate obj1 (angleaxis 360 [0.5,0, -0.5])	
		set animate off	
	
)
function AnimateD6 =
(	
		--Creates variables to store the positions of the objects
	   obj2 = $D6_Anim
	   target = $Target_01
	   --Next Line does executes the movement
	   obj2.position = target.position
		--Starts Recording
		 set animate on
	    --to go to frame 30	
		 sliderTime = 30f	
		-- rotate is to rotate the object  on the X negatively
	    rotate obj2  (angleaxis -360 [1,0,0])
		 --to go to frame 60	
		 sliderTime = 60f
		 -- rotate is to rotate the object  on the X  positively
	    rotate obj2  (angleaxis 360 [1,0,0])
		 --to go to frame 90	
		 sliderTime = 90f
		 -- rotate is to rotate the object  on the Y negatively
	    rotate obj2 (angleaxis -360 [0,1,0])
		 --to go to frame 120	
		 sliderTime = 120f
		 -- rotate is to rotate the object  on the Y positively
	    rotate obj2  (angleaxis 360 [0,1,0])
		  --to go to frame 150
		 sliderTime = 150f
		 -- rotate is to rotate the object  on the Z  negatively
	    rotate obj2  (angleaxis -360 [0,0,1])
		  --to go to frame 180
		 sliderTime = 180f
		 -- rotate is to rotate the object  on the Z  positively
	    rotate obj2 (angleaxis 360 [0,0,1])
		  --to go to frame 210
		 sliderTime = 210f
		 -- rotate is to rotate the object  diagonally on the X and Z  positively
	    rotate obj2 (angleaxis 360 [1,0,1])
		--to go to frame 240
		 sliderTime = 240f
		 -- rotate is to rotate the object  diagonally on the X and Z  negatively
	    rotate obj2  (angleaxis -360 [1,0,1])
		--to go to frame 270
		 sliderTime = 270f
		 -- rotate is to rotate the object  diagonally on the -X and -Z  negatively		
	    rotate obj2  (angleaxis -360 [0.5,0, -0.5])
		--to go to frame 300
		 sliderTime = 300f
		 -- rotate is to rotate the object  diagonally on the -X and -Z  positively		
	    rotate obj1 (angleaxis 360 [0.5,0, -0.5])	
		set animate off	
		
	   
)
function AnimateD8 =
(
		--Creates variables to store the positions of the objects
	   obj3 = $D8_Anim
	   target = $Target_01
	   --Next Line does executes the movement
	   obj3.position = target.position
		--Starts Recording
		 set animate on
	    --to go to frame 30	
		 sliderTime = 30f	
		-- rotate is to rotate the object  on the X negatively
	    rotate obj3 (angleaxis -360 [1,0,0])
		 --to go to frame 60	
		 sliderTime = 60f
		 -- rotate is to rotate the object  on the X  positively
	    rotate obj3 (angleaxis 360 [1,0,0])
		 --to go to frame 90	
		 sliderTime = 90f
		 -- rotate is to rotate the object  on the Y negatively
	    rotate obj3(angleaxis -360 [0,1,0])
		 --to go to frame 120	
		 sliderTime = 120f
		 -- rotate is to rotate the object  on the Y positively
	    rotate obj3 (angleaxis 360 [0,1,0])
		  --to go to frame 150
		 sliderTime = 150f
		 -- rotate is to rotate the object  on the Z  negatively
	    rotate obj3 (angleaxis -360 [0,0,1])
		  --to go to frame 180
		 sliderTime = 180f
		 -- rotate is to rotate the object  on the Z  positively
	    rotate obj3(angleaxis 360 [0,0,1])
		  --to go to frame 210
		 sliderTime = 210f
		 -- rotate is to rotate the object  diagonally on the X and Z  positively
	    rotate obj3(angleaxis 360 [1,0,1])
		--to go to frame 240
		 sliderTime = 240f
		 -- rotate is to rotate the object  diagonally on the X and Z  negatively
	    rotate obj3 (angleaxis -360 [1,0,1])
		--to go to frame 270
		 sliderTime = 270f
		 -- rotate is to rotate the object  diagonally on the -X and -Z  negatively		
	    rotate obj3 (angleaxis -360 [0.5,0, -0.5])
		--to go to frame 300
		 sliderTime = 300f
		 -- rotate is to rotate the object  diagonally on the -X and -Z  positively		
	    rotate obj3 (angleaxis 360 [0.5,0, -0.5])	
		set animate off	
)
function AnimateD10 =
(
		--Creates variables to store the positions of the objects
	   obj4 = $D10_Anim
	   target = $Target_01
	   --Next Line does executes the movement
	   obj4.position = target.position
		--Starts Recording
		 set animate on
	    --to go to frame 30	
		 sliderTime = 30f	
		-- rotate is to rotate the object  on the X negatively
	    rotate obj4 (angleaxis -360 [1,0,0])
		 --to go to frame 60	
		 sliderTime = 60f
		 -- rotate is to rotate the object  on the X  positively
	    rotate obj4 (angleaxis 360 [1,0,0])
		 --to go to frame 90	
		 sliderTime = 90f
		 -- rotate is to rotate the object  on the Y negatively
	    rotate obj4(angleaxis -360 [0,1,0])
		 --to go to frame 120	
		 sliderTime = 120f
		 -- rotate is to rotate the object  on the Y positively
	    rotate obj4 (angleaxis 360 [0,1,0])
		  --to go to frame 150
		 sliderTime = 150f
		 -- rotate is to rotate the object  on the Z  negatively
	    rotate obj4 (angleaxis -360 [0,0,1])
		  --to go to frame 180
		 sliderTime = 180f
		 -- rotate is to rotate the object  on the Z  positively
	    rotate obj4(angleaxis 360 [0,0,1])
		  --to go to frame 210
		 sliderTime = 210f
		 -- rotate is to rotate the object  diagonally on the X and Z  positively
	    rotate obj4(angleaxis 360 [1,0,1])
		--to go to frame 240
		 sliderTime = 240f
		 -- rotate is to rotate the object  diagonally on the X and Z  negatively
	    rotate obj4 (angleaxis -360 [1,0,1])
		--to go to frame 270
		 sliderTime = 270f
		 -- rotate is to rotate the object  diagonally on the -X and -Z  negatively		
	    rotate obj4 (angleaxis -360 [0.5,0, -0.5])
		--to go to frame 300
		 sliderTime = 300f
		 -- rotate is to rotate the object  diagonally on the -X and -Z  positively		
	    rotate obj4 (angleaxis 360 [0.5,0, -0.5])	
		set animate off	
)
function AnimateD12 =
(
		--Creates variables to store the positions of the objects
	   obj5 = $D12_Anim
	   target = $Target_01
	   --Next Line does executes the movement
	   obj5.position = target.position
		--Starts Recording
		 set animate on
	    --to go to frame 30	
		 sliderTime = 30f	
		-- rotate is to rotate the object  on the X negatively
	    rotate obj5 (angleaxis -360 [1,0,0])
		 --to go to frame 60	
		 sliderTime = 60f
		 -- rotate is to rotate the object  on the X  positively
	    rotate obj5 (angleaxis 360 [1,0,0])
		 --to go to frame 90	
		 sliderTime = 90f
		 -- rotate is to rotate the object  on the Y negatively
	    rotate obj5(angleaxis -360 [0,1,0])
		 --to go to frame 120	
		 sliderTime = 120f
		 -- rotate is to rotate the object  on the Y positively
	    rotate obj5 (angleaxis 360 [0,1,0])
		  --to go to frame 150
		 sliderTime = 150f
		 -- rotate is to rotate the object  on the Z  negatively
	    rotate obj5 (angleaxis -360 [0,0,1])
		  --to go to frame 180
		 sliderTime = 180f
		 -- rotate is to rotate the object  on the Z  positively
	    rotate obj5(angleaxis 360 [0,0,1])
		  --to go to frame 210
		 sliderTime = 210f
		 -- rotate is to rotate the object  diagonally on the X and Z  positively
	    rotate obj5(angleaxis 360 [1,0,1])
		--to go to frame 240
		 sliderTime = 240f
		 -- rotate is to rotate the object  diagonally on the X and Z  negatively
	    rotate obj5 (angleaxis -360 [1,0,1])
		--to go to frame 270
		 sliderTime = 270f
		 -- rotate is to rotate the object  diagonally on the -X and -Z  negatively		
	    rotate obj5 (angleaxis -360 [0.5,0, -0.5])
		--to go to frame 300
		 sliderTime = 300f
		 -- rotate is to rotate the object  diagonally on the -X and -Z  positively		
	    rotate obj5 (angleaxis 360 [0.5,0, -0.5])	
		set animate off	
)
function AnimateD20 =
(
		--Creates variables to store the positions of the objects
	   obj6 = $D20_Anim
	   target = $Target_01
	   --Next Line does executes the movement
	   obj6.position = target.position
		--Starts Recording
		 set animate on
	    --to go to frame 30	
		 sliderTime = 30f	
		-- rotate is to rotate the object  on the X negatively
	    rotate obj6 (angleaxis -360 [1,0,0])
		 --to go to frame 60	
		 sliderTime = 60f
		 -- rotate is to rotate the object  on the X  positively
	    rotate obj6 (angleaxis 360 [1,0,0])
		 --to go to frame 90	
		 sliderTime = 90f
		 -- rotate is to rotate the object  on the Y negatively
	    rotate obj6(angleaxis -360 [0,1,0])
		 --to go to frame 120	
		 sliderTime = 120f
		 -- rotate is to rotate the object  on the Y positively
	    rotate obj6 (angleaxis 360 [0,1,0])
		  --to go to frame 150
		 sliderTime = 150f
		 -- rotate is to rotate the object  on the Z  negatively
	    rotate obj6 (angleaxis -360 [0,0,1])
		  --to go to frame 180
		 sliderTime = 180f
		 -- rotate is to rotate the object  on the Z  positively
	    rotate obj6(angleaxis 360 [0,0,1])
		  --to go to frame 210
		 sliderTime = 210f
		 -- rotate is to rotate the object  diagonally on the X and Z  positively
	    rotate obj6(angleaxis 360 [1,0,1])
		--to go to frame 240
		 sliderTime = 240f
		 -- rotate is to rotate the object  diagonally on the X and Z  negatively
	    rotate obj6 (angleaxis -360 [1,0,1])
		--to go to frame 270
		 sliderTime = 270f
		 -- rotate is to rotate the object  diagonally on the -X and -Z  negatively		
	    rotate obj6 (angleaxis -360 [0.5,0, -0.5])
		--to go to frame 300
		 sliderTime = 300f
		 -- rotate is to rotate the object  diagonally on the -X and -Z  positively		
	    rotate obj6 (angleaxis 360 [0.5,0, -0.5])	
		set animate off	
)

-----------------END OF DICE FUNCTIONS-----------------------
	
	
	
   
	
	
	


