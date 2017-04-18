require 'oystercard'

describe Oystercard do
  it 'has a balance of zero' do
    expect(subject.balance).to eq(0)
  end

  context "topping up the card" do
    it "can top up the balance" do
      expect { subject.top_up 20 }.to change{ subject.balance }.by 20
    end

    it "can find a card limit" do
      expect(subject.limit?).to eq Oystercard::MAX_LIMIT
    end

    it "cannot exceed maximum limit" do
      subject.top_up(Oystercard::MAX_LIMIT)
      expect { subject.top_up(1) }.to raise_error "Maximum balance exceeded"
    end
  end

end
