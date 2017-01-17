#use classes to calculate tips a server makes from customers
#calculate_tips is not working correctly, need to revise



class Customer 
  attr_reader :bill, :amount_paid
  attr_writer :active
  
  def initialize(input_options)
    @bill = input_options[:bill]
    @amount_paid = input_options[:amount_paid]
    @tips = 0
  end
 
  def tips
    @tips = @amount_paid - @bill
  end
end
 
class Server < Customer
  attr_reader :tips
   
  def initialize(input_options)
    @customers = input_options[:customers]
  end
  
  def calculate_tips
    p @customers
    total_tips = 0
    @customers.each do |customer|
      total_tips += customer.tips
    end
    return total_tips
  end
  
end

cust1 = Customer.new(bill: 30, amount_paid:40)
cust2 = Customer.new(bill: 20, amount_paid:40)

server1 = Server.new(customers: [cust1, cust2])
cust1.tips
cust2.tips
# p total
p server1.calculate_tips

# p cust1.tips
