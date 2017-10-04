stock_dict = {
	'GE' => 'General Electric',
	'CAT' => 'Caterpillar',
	'EK' => "Eastman Kodak"
}

purchases = [
	[ 'GE', 100, '10-sep-2001', 48 ],
	[ 'CAT', 100, '1-apr-1999', 24 ],
	[ 'GE', 200, '1-jul-1998', 56 ]
]

# prints name of company and stock value
def print_purchases(arr, dict)
	puts "Stock Report:"
	for item in arr
		puts "#{dict[item[0]]} : #{item[1] * item[3]}"
	end
end

# creates hash of stock ticker symbol and total share value
def make_accumulated_hash(arr)
	myHash = Hash.new
	for item in arr
		myHash.has_key?(item[0]) ? myHash[item[0]] += item[1] * item[3] : myHash[item[0]] = item[1] * item[3]
	end
	return myHash
end

# prints accumulated hash with stock symbol and total share value
def print_accumulated(myHash)
	myHash.each do |key, value|
		print key + ": "
		puts value
	end
end

print_purchases(purchases, stock_dict)
print_accumulated(make_accumulated_hash(purchases))