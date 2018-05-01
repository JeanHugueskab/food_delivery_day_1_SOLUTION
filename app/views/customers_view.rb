class CustomersView
  def display_all_customers(customers)
    customers.each do |customer|
      puts "Name: #{customer.name}"
    end
  end

  def ask_user_for_name
    puts "What is the name of the customer to add?"
    print "> "
    gets.chomp
  end

  def ask_user_for_address
    puts "What's the address of the customer?"
    print "> "
    gets.chomp
  end
end
