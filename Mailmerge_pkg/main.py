# -*- coding: utf-8 -*-
"""
Created on Mon Feb 17 13:51:51 2025

@author: Nidhi
"""
# -*- coding: utf-8 -*-
"""
Created on Mon Feb 17 13:51:51 2025

@author: Nidhi
"""

PLACEHOLDER = "[name]"

# Ensure the file name is correct
with open("name.txt", 'r') as names_list:
    names = names_list.readlines()
    
with open("sample_mail.docx", 'r') as letter_file:
    letter_contents = letter_file.read()
    for name in names:
        stripped_name = name.strip()
        new_letter = letter_contents.replace(PLACEHOLDER, stripped_name)
        
        # Correct the file name and write the content
        with open(f"letter_for_{stripped_name}.docx", 'w') as completed_letter:
            completed_letter.write(new_letter)