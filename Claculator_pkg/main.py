# -*- coding: utf-8 -*-
"""
Created on Mon Feb 17 11:03:00 2025

@author: Nidhi
"""

from operation import Addition,Substraction,Multiplication,Division


while(True):
    
    a=int(input("Enter No1:"))
    b=int(input("Enter No2:"))
    print("1.ADDITION")
    print("2.Substraction")
    print("3.Multiplication")
    print("4.Division")
    print("5.Exit")
    print("Enter Your choice:")
    
    ch=int(input())
    

    if ch == 1:
        print(Addition(a,b))
    elif ch == 2:
        print(Substraction(a,b))
    elif ch == 3:
        print(Multiplication(a,b))
    elif ch == 4:
        print(Division(a,b))
    elif ch == 5:
         break
         
    ch += 1