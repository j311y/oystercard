class Oystercard

  MAX_LIMIT = 90

  attr_reader :balance

  def initialize
    @balance = 0
  end

  def top_up(amount)
    fail "Maximum balance exceeded" if amount + balance > MAX_LIMIT
    @balance += amount
  end

  def limit?
    MAX_LIMIT
  end

  def deduct(amount)
    @balance -= amount
  end

end
