
import math

"""
Finding Perfect number baased on Mersenne numbers 

A perfect number is expressed as 2^p*(2^(p+1)-1)
if p is prime 
"""

def magic_formula(x):
    """
    finding p for a given number x
    p is integer of course.
    """
    alpha = (1+math.sqrt(1+8*x))/4
    p = math.log2(alpha)    
    return alpha%1 == 0 and p%1==0, p    

def isprime(x):    
    """
    Checking x is a prime
    won't work for 2
    """
    prime = True 
    for r in range(2, math.ceil(math.sqrt(x))):        
        if x%r == 0:  
            prime = False          
            break   
    return prime      
    


for r in range(2, 10000):    
    flag, p = magic_formula(r)
    if flag  and isprime(2**(p+1)-1) :    
        print(r)




