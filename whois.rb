require 'whois'
require 'csv'
#require 'rubywhois'
#fastercsv


#wb means 'write binary'
#a+ means append


# open new csv
CSV.open("domains_out.csv", "wb") do |csv|

	# pull data from original domains csv. initiate for loop
	CSV.foreach("domains.csv") do |row|
	  

	  domain = row[0] 
		r = Whois.query(domain) 
		email = r.technical_contact.email

				
		csv << [domain, email]

	end
end


# domains.each do |domain|
# 	#run whois on domain. Not connected to Robowhois yet
# 	r = Whois.query(domain) 
# 	puts r
# end


#I end up with an array. now i want to ... 
#put that array next to the email address that i initially had.

#
#
#

	


