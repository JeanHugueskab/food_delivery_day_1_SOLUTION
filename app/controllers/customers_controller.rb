require_relative '../views/customers_view'

class CustomersController
  def initialize(customer_repository)
    @customer_repository = customer_repository
    @views = CustomersView.new
  end

  def list
    customers = @customer_repository.all
    @views.display_all_customers(customers)
  end

  def add
    name = @views.ask_user_for_name
    address = @views.ask_user_for_address
    customer = Customer.new(name: name, address: address)
    @customer_repository.add(customer)
  end
end
