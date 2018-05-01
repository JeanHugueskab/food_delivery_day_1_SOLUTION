# TODO: require relevant files to bootstrap the app.
# Then you can test your program with:
#   ruby app.rb
require 'csv'
require 'pry-byebug'

# router
require_relative 'router'

# models
require_relative 'app/models/meal'
require_relative 'app/models/customer'

# repositories
require_relative 'app/repositories/meal_repository'
require_relative 'app/repositories/customer_repository'

# controllers
require_relative 'app/controllers/meals_controller'
require_relative 'app/controllers/customers_controller'

meals_csv = 'data/meals.csv'
customers_csv = 'data/customers.csv'

meal_repository = MealRepository.new(meals_csv)
customer_repository = CustomerRepository.new(customers_csv)

meals_controller = MealsController.new(meal_repository)
customers_controller = CustomersController.new(customer_repository)

controllers = {
  meals_controller: meals_controller,
  customers_controller: customers_controller
}

router = Router.new(controllers)

# start app
router.run





