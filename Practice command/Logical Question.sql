--2 Table create
	Declare @i int = 0    
		
		 While @i <= 10
	  Begin    
	       select  2*@i 
	       select @i = @i +1
	   END;

--create counter'
		Declare @i1 int = 1 
	    print 'loop start'
		While @i1 <=10
			Begin
				 print 'loop running'
			 
				 select @i1 =@i1+1;
			End
			print 'loop End'

--chekc loop how work
		  while 1 = 1
	  Begin 
	     print 'run loop'
	     set @i = @i +1
	     if(@i  > 10)
	     break
	  End
	     print 'loop terminet'

--Armstrong numbeer
	Declare @num int = 113 ,
			@temp int , 
			@a int ,	
			@sumOfCode int = 0
	set @temp = @num

		while @num >0 
	 Begin
	   set @a   = @num % 10
	   Set @num =@num/10
	   set @sumOfCode = @sumOfCode + (POWER(@a,@a))
	 End

	  print iif(@temp = @sumOfCode ,  'num is armstrong' , 'num is not armstrong')

--PrimeNumber
		Declare @num1 int =4,
				@i3 int =2 ,
				@m int 

		if @num1 =0 Or @num1 =1
		Begin
		print 'terminet'
		End
		Else
		   Begin
		     while @i3 <=@num1 
		       Begin
		        
					print iif(@num1 % @i3= 0 , 'not a prime number','prime number')
					break;
		         set @i3 =@i3 +1;
		       End
		   End	

--factorial number
		Declare @num2 int = 5,
				@i4 int = 1,
				@fact int = 1
		    if(@num2 = 0 or @num2 = 1)
		      Begin  
			   print 1
			  End
			Else
			   Begin
			      	while @i4 <= @num2
			      Begin 
			        set @fact = @fact * @i4
						print concat('factorial is ',@fact)
			        set @i4 = @i4 +1
			      End
			  End

			


			
    
		
