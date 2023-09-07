import os
import subprocess

files = os.listdir("programs/basic_c")
listing = []
"""
for file in files:
    try :
        
        command = "just new-project " + file + " programs/basic_c/" + file
        subprocess.check_output(command, shell=True)
        command = "just add-trace " + file + " tr1 \"\" \"\" "
        subprocess.check_output(command, shell=True)
        command = "just recover " + file
        subprocess.check_output(command, shell=True, timeout = 30)
    except:
        listing.append(file)"""

projects = os.listdir("s2e/projects")
    
for project in projects :
    try:
        command = "just lift-trace " + project
        subprocess.check_output(command, shell=True, timeout = 30)
    except:
        listing.append(project)
    

print(listing)
