num = [-6,-5,-4,-3]
largest=second=num[0]
for i in num:
    if i>largest:
        second=largest
        largest=i
    elif i>second and i!=largest:
        second=i
print(largest)
print(second)






            

        
        


        
        