class SleepingMonkey
  def initialize monkey
    @monkey = monkey
  end

  def state_class
    "sleeping"
  end

  def state_message
    "#{@monkey.name} can't be bothered right now"
  end

  def name
    @monkey.name
  end
end