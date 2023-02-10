# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Company.destroy_all
# **************************

# - Insert, read, update, and delete rows in companies table
#   (i.e. full CRUD of company data).

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert new rows in companies table
# SELECT COUNT (*) FROM companies: ---> in SQL language
puts "There are #{Company.all.count} companies"

new_company = Company.new

# **To add data into the hash
new_company["name"] = "Apple"
new_company["city"] = "Cupertino"
new_company["state"] = "CA"
new_company["url"] = "https://apple.com"
new_company.save

new_company = Company.new
new_company["name"] = "Amazon"
new_company["city"] = "Seattle"
new_company["state"] = "WA"
new_company.save

zebra=Company.new
zebra["name"] = "Twitter"
zebra["city"] = "San Francisco"
zebra["state"] = "CA"
zebra.save

#puts new_company.inspect
puts "There are #{Company.all.count} companies"

# 3. query companies table to find all row with California company

#all_companies = Company.all
#puts all_companies.inspect
#this gives you an array of hashes

#cali_companies = Company.where({"state"=>"CA"})
#puts cali_companies.inspect

#puts "cali companies : #{cali_companies.count}"

# 4. query companies table to find single row for Apple

#apple = Company.where({"name"=>"Apple"})[0]   ---> to avoid needing to put the index [x], you can use the command below. The "where" will always give you an array. The find_by gives you 1 row only
apple = Company.find_by({"name" => "Apple"})
#puts apple.inspect

# 5. read a row's column value
#puts apple["url"]
#this above is to get only 1 thing from the row

# 6. update a row's column value
amazon = Company.find_by({"name" => "Amazon"})
#puts amazon.inspect
amazon["url"] = "https://amazon.com"
amazon.save
#puts amazon.inspect

# 7. delete a row

twitter = Company.find_by({"name" => "Twitter"})
twitter.destroy

twitter = Company.find_by({"name" => "Twitter"})
puts twitter.inspect

puts "There are #{Company.all.count} companies"