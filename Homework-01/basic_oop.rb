class Dessert
  def initialize(name, calories)
    @name = name
    @calories = calories
  end

  def name
    @name
  end

  def name=(new_name)
    @name = new_name
  end

  def calories
    @calories
  end

  def calories=(new_calories)
    @calories = new_calories
  end

  def healthy?
    @calories < 200
  end

  def delicious?
    true
  end
end

class JellyBean < Dessert
  def initialize(name, calories, flavor)
    super(name, calories)
    @flavor = flavor
  end

  def flavor
    @flavor
  end

  def flavor=(new_flavor)
    @flavor = new_flavor
  end

  def delicious?
    @flavor != "black licorice"
  end
end