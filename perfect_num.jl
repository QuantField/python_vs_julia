


"""
Finding Perfect number baased on Mersenne numbers 

A perfect number is expressed as 2^p*(2^(p+1)-1)
if p is prime 
"""

function magic_formula(x::Int64)
    """
    finding p for a given number x
    p is integer of course.
    """
    alpha = (1+sqrt(1+8*x))/4
    p = log2(alpha)    
    return (mod(alpha,1)==0) && mod(p,1)==0.0, p    
end     

function isprime(x::Int64)    
    """
    Checking x is a prime
    won't work for 2
    """
    prime = true 
    for r = 2 : trunc(Int, ceil(sqrt(x)))
        if mod(x,r) == 0
            prime = false 
            break 
        end 
    end             
    return prime      
end 
    


#print(isprime(2))

for r = 2:10000
    flag, p = magic_formula(r)
    if flag  && isprime(trunc(Int, 2^(p+1)-1))     
        println(r)
    end     
end 




