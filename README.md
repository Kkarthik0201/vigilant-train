4x4 Bit Approximate Multiplier
This repository presents an approximation technique for a 4x4-bit multiplier that reduces power consumption and area at the cost of some accuracy.

# Approximation Techniques:

## HALF ADDER:

![Screenshot 2025-01-16 233449](https://github.com/user-attachments/assets/81f1cd6e-abc0-48da-bbcc-93c338ebb0ad)

  &nbsp;   &nbsp;  &nbsp;sum = a|b

   &nbsp;   &nbsp;  &nbsp;carry = a&b

  &nbsp;  &nbsp;  &nbsp;By replacing xor with or gate power consumption can be reduced .As a result 1 out 0f 4 cases has an error in sum

## FULL ADDER:

![Screenshot 2025-01-16 233503](https://github.com/user-attachments/assets/b95f4719-8cb1-4e46-85ef-5e3b033c218d)

#### in case of full addder :

  &nbsp;  &nbsp;  &nbsp;sum = a

  &nbsp;  &nbsp;  &nbsp;carry = b

As a result 4 out of 8 cases has errors 4 in sum and 2 in carry

# COMPRESSOR :

compressor which is being  is a 4:2 compressor with 4 inputs and 2 outputs as shown below:

![Screenshot 2025-01-16 233431](https://github.com/user-attachments/assets/af2ccfd0-1e04-45bd-9e07-563fd9b61b05)

  &nbsp;  &nbsp;  &nbsp; sum = (a|b)^(c|d);
 
  &nbsp;  &nbsp;  &nbsp;cout  = (a|b)&(c|d);

# Partial Product Transformation

The approximation involves the transformation of partial product terms am,n and an,m ( am,n = a[m]×b[n] ) into propagate and generate terms:

p a<sub> m,n</sub> = a<sub> m,n</sub>+ a<sub> n,m</sub>

g a<sub> m,n</sub> =  a<sub> m,n</sub> ⋅ a<sub> n,m</sub>

No change in a a<sub> m,m</sub> terms

# BLOCK DIAGRAM:

![Screenshot 2025-01-16 233352](https://github.com/user-attachments/assets/0ec985b8-8afb-44c4-9b35-ee4880dba1b9)


![Screenshot 2025-01-16 233120](https://github.com/user-attachments/assets/55026330-586b-4e37-a526-563e0bec7567)


# RESULTS:

### MEAN RELATIVE ERROR:Around 9.31%.

![Screenshot 2025-01-16 231442](https://github.com/user-attachments/assets/101c1531-021b-4c6e-b8f8-13353fc169dd)

# LUT UTILISATION:8

![Screenshot 2025-01-16 231712](https://github.com/user-attachments/assets/ddf44761-11f9-4f13-8544-a6f858fd924e)

### POWER USAGE : 2.6W

### LOGIC POWER : 29mW

![Screenshot 2025-01-17 002032](https://github.com/user-attachments/assets/2fb7e65c-89ce-44f3-b328-0e1a464032ad)





