class Oystercard

  MAX_LIMIT = 90

  attr_reader :balance

  def initialize
    @balance = 0
  end

  def top_up(value)
    fail "Maximum balance exceeded" if value + balance > MAX_LIMIT
    @balance += value
  end

  def limit?
    MAX_LIMIT
  end


end
