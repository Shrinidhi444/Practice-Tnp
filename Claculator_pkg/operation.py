# -*- coding: utf-8 -*-
"""
Created on Mon Feb 17 10:57:45 2025

@author: Nidhi
"""

def Addition(a,b):
    return a + b

def Substraction(a,b):
    if b > a:
        raise ValueError("Substraction Cannot be performed")
    return a - b

def Multiplication(a,b):
    return a * b

def Division(a,b):
    if b == 0:
        raise ValueError("Division Cannot be performed")
    return a / b