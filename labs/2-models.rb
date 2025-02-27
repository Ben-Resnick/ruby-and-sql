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


new_salespeople = Salesperson.new 
puts new_salespeople.inspect
new_salespeople["first_name"] = "Ben"
new_salespeople["last_name"] = "Block"

new_salespeople.save

puts new_salespeople.inspect
puts "there are #{Salesperson.all.count} Salespeople"


new_salespeople2 = Salesperson.new 
puts new_salespeople2.inspect
new_salespeople2["first_name"] = "Brian"
new_salespeople2["last_name"] = "Eng"

new_salespeople2.save

puts new_salespeople2.inspect
puts "there are #{Salesperson.all.count} Salespeople"

# 3. write code to display how many salespeople rows are in the database

puts "Salespeople: #{Salesperson.all.count}"



# ---------------------------------
# Salespeople: 2

# 4. modify/update column data for a row in the salespeople table.
Ben = Salesperson.find_by({"first_name" => "Ben", "last_name" => "Block"})
Ben["first_name"] = "Benjamin"
Ben.save
puts Ben.inspect


# CHALLENGE:
# 5. write code to display each salesperson's full name





# ---------------------------------
# Salespeople: 2
# Ben Block

salespeople = Salesperson.all
for person in salespeople
first_name = person["first_name"]
last_name = person["last_name"]
name = "#{first_name} #{last_name}"
puts name
end
# Brian Eng
