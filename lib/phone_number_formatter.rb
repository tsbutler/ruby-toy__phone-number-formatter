# This method takes a string like `"4122226644"` and
# returns a properly formatted phone number.

def format_phone_number(phone_number_str)
  p = phone_number_str #Setting variable.
  if p.length == 10 #This separates out the strings that are just numbers.
    ac = p[0, 3] #This cuts off the first three digits.
    first_3 = p[3, 3] #This cuts out the middle three digits.
    last_4 = p[6, 4] #This cuts off the last four digits.
    "(" + ac + ")" + " " + first_3 + "-" + last_4 #This reassembles everything 
                     #and formats it properly.
  elsif (p.include?(" ") == true) && (p.include?("-") == false) #This one sorts
                    #the inputs that have random spaces.
    space = p.delete(" ") #Removes spaces from the sting and assigns that 
                          #edited string to a new variable called space.
    ac = space[0, 3] #This code block is essentially the same as the first.
    first_3 = space[3, 3]
    last_4 = space[6, 4]
    "(" + ac + ")" + " " + first_3 + "-" + last_4
  elsif p.length > 10 && p.include?(" ") == false #This one sorts out the 
                      #inputs that have dots or dashes.
    dnd = p.delete(".") #This removes the dots in one pass.
    dnd = dnd.delete("-") #This removes the dashes in another pass.
    ac = dnd[0, 3] #This code should look familiar by now.
    first_3 = dnd[3, 3]
    last_4 = dnd[6, 4]
    "(" + ac + ")" + " " + first_3 + "-" + last_4
  else #This takes the remaining inputs and makes the small tweak necessary.
    ac = p[0,3]
    rest = p[3,9]
    "(" + ac + ")" + rest
  end
end
puts format_phone_number("123 456-7890") #Calls the method.