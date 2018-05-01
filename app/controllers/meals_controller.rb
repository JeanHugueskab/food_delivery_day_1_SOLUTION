require_relative '../views/meals_view'

class MealsController
  def initialize(meal_repository)
    @meal_repository = meal_repository
    @views = MealsView.new
  end

  def list
    meals = @meal_repository.all
    @views.display_all_meals(meals)
  end

  def add
    name = @views.ask_user_for_name
    price = @views.ask_user_for_price
    meal = Meal.new(name: name, price: price)
    @meal_repository.add(meal)
  end
end
