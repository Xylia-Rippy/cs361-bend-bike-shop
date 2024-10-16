

def calculateSomething(value_1, value_2, value_3)
    if value_1 > 0 
      then
      value_2 =  value_2 * 2
      value_3 = value_3 + value_1
   else 
    value_2 = value_2 + value_3 * 3
    value_1 = value_3 - value_2
  end
  result = value_1 + value_2 * value_3
  i = 0;
  while i <  5
    result = result +  i
    i += 1
  end
  if result% 2 == 0 then
    result *= 3
   else 
    result = result / 2
  end
  puts "The result is: " +  result.to_s
  return result
  end

  val= calculateSomething(5, 10, 3)
  puts  "Final value:  " + val.to_s


 # --------------------------------
  puts "test two"

  def   processData(a,b,c)
    a=a* 2 ;
     if  b< c then  b=  c- b   else c= a  +b * c
 a =  b*  c;end;sum = 0 ;
 for i in (1..10)
    sum=  sum+ a*b/ (i+1)
  if i % 2 == 0 then
     sum=  sum- b*2; else sum = sum+c end;
 end;total =   sum * (a-b)+ c
   if total > 100 then puts "Too large"
 else puts "All good: " +  total.to_s;
 end
     return  total ;
 end;value= processData( 7 ,9, 3 )
     puts  "Processed Value: "+value.to_s

    #----------------
    puts "test three"

    def   performAction( val1,val2,val3 )
      temp=val1* val2;
     if temp<val3 then
    val3=val3/2
      else val1= val2+val3*val1;end;
        counter=  0; while counter< 8
     temp=temp-val3*2+   counter;
    counter =counter +1
    if counter==4 then temp = temp *   5;end;
    end
       finalValue = temp+val2-   val3;
         if finalValue%3==0 then finalValue=finalValue* val1
    else finalValue= finalValue/4;
       end
    puts"Final: "+ finalValue.to_s;
     return   finalValue;
    end;result =performAction(  6,8,2);
        puts"Outcome: "   + result.to_s
