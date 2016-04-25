class EatingMonkey
  def initialize monkey
    @monkey = monkey
  end

  def state_class
    "eating"
  end

  def state_message
    "#{@monkey.name} is eating. Nom nom."
  end

  def name
    @monkey.name
  end
end