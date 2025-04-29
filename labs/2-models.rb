# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Salesperson.destroy_all
# **************************

# Lab 2: Models
# - We've added data into the companies table.  Next, we'll add data
#   into the salespeople table.  Follow the steps below to insert and
#   read rows of salesperson data.  Update a row.  Afterwards, display
#   how many rows have been inserted into the salespeople table.
#   Lastly, if you want a challenge, try writing code to display the
#   full name of each salesperson.

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert 1-2 rows in salespeople table.
new_person = Salesperson.new
# p new_company
new_person["first_name"]="Dave"
new_person["last_name"]="Smith"
new_person["email"]="dave.smith@gm.com"
#p new_company
new_person.save

new_person = Salesperson.new
new_person["first_name"]="Ann"
new_person["last_name"]="Stangas"
new_person["email"]="ann.stangas@gm.com"
new_person.save


# 3. write code to display how many salespeople rows are in the database
no_of_people=Salesperson.all.count
puts "There are #{no_of_people} people in the database."
# ---------------------------------
# Salespeople: 2

# 4. modify/update column data for a row in the salespeople table.
ann = Salesperson.where({"first_name"=> "Ann"})[0]
ann["last_name"]="Christoforou"
ann.save
# CHALLENGE:
# 5. write code to display each salesperson's full name
salespeople = Salesperson.all
for person in salespeople
    first_name = person["first_name"]
    last_name = person["last_name"]
    puts "#{first_name} #{last_name}"
end
# ---------------------------------
# Salespeople: 2
# Ben Block
# Brian Eng
