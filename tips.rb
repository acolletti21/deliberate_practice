#use classes to calculate tips a server makes from customers
#calculate_tips is not working correctly, need to revise

class Customer 
  attr_reader :bill, :amount_paid
  attr_writer :active
  
  def initialize(input_options)
    @bill = input_options[:bill]
    @amount_paid = input_options[:amount_paid]
  end
 
  def tips
    @tips = @amount_paid - @bill
  end
end
 
cust1 = Customer.new(bill: 30, amount_paid:40)
cust2 = Customer.new(bill: 20, amount_paid:40)
 
 
class Server < Customer
  attr_reader :tips
   
  def initialize(input_options)
    @customers = input_options[:customers]
  end
  
  def calculate_tips
    @customers.each do |tips|
      @all_tips = @tips.to_i + @all_tips.to_i
    end
    return @all_tips
  end
  
end

server1 = Server.new(customers: [cust1, cust2])
p server1.calculate_tips

p cust1.tips