#Ruby
#ChangeMachine
#April 24, 2019
#Calculates how much change the user should receive in the smallest amount of bills and change possible

twenty_dollar_bills = 0
ten_dollar_bills = 0
five_dollar_bills = 0
dollar_bills = 0
quarters = 0
dimes = 0
nickels = 0
pennies = 0
change = 0


#Asks user to input price of products
puts "Welcome to the change machine, please enter the price of the product you will be purchasing"
price = gets.chomp.to_f * 100
price = price.to_i


#Asks user to input how much money they will be paying with 
puts "What amount of money will you be paying for this good with?"
payment = gets.chomp.to_f * 100
payment = payment.to_i

#Calculates the amount of change which the user should receive
index = payment - price

#Calculates how much more money the user owes for the product
more_money = price - payment
more_money = more_money.to_f
more_money = more_money / 100

if payment < price
		price = price.to_f
		price = price / 100	
		puts "The product costs " + price.to_s + " dollars, please pay " + more_money.to_s + " more dollars"
elsif payment > price
#Need to add while loop for 5, 10, and 20 dollar bills
		while index >= 100
				dollar_bills += 1
				change += 100
				index -= 100
		end

		while index >= 25
				quarters += 1
				change += 25
				index -= 25
		end

		while index >= 10
				dimes += 1
				change += 10
				index -= 10
		end

		while index >= 5
				nickels += 1
				change += 5
				index -= 5
		end

		while index >= 1
				pennies += 1
				change += 1
				index -= 1
		end

		change = change.to_f
		change = change/100

		puts "Your change is " + change.to_s + " dollars"
		puts "Here is " + dollar_bills.to_s + " bills, " + quarters.to_s + " quarters, " + dimes.to_s + " dimes, " + nickels.to_s + " nickels, and " + pennies.to_s + " pennies."
else
		puts "No change needed, have a nice day!"
end



