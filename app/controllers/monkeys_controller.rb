class MonkeysController < ApplicationController
  def show
    monkey = Monkey.find params[:id]
    @monkey = decorated_monkey monkey
    if (bananas = monkey.bananas).any?
      @bananas = Bananas.new bananas
    else
      @bananas = EmptyBananas.new
    end
  end

  protected
  def decorated_monkey monkey
    if monkey.eating?
      EatingMonkey.new monkey
    elsif monkey.sleeping?
      SleepingMonkey.new monkey
    else
      raise "NoMoreMonkeysJumpingOnTheBed"
    end
  end
end
