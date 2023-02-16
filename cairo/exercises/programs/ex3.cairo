// Perform and log output of simple arithmetic operations
func simple_math() {
alloc_locals;

   // adding 13 +  14
   local out1 = 13+14;
    %{print(ids.out1) %}
   
   // multiplying 3 * 6
   local out2 = 3*6;
    %{print(ids.out2) %}
   
   // dividing 6 by 2
   local out3 = 6/2;
    %{print(ids.out3) %}

    // dividing 70 by 2
   local out4 = 70/2;
    %{print(ids.out4) %}


   // dividing 7 by 2
   local out5 = 7/2;
    %{print(ids.out5) %}

    return ();
}
