require 'oystercard'

describe Oystercard do
  it 'has a balance of zero' do
    expect(subject.balance).to eq(0)
  end
  
  context "topping up the card" do
    it "can top up the balance" do
      expect { subject.top_up 20 }.to change{ subject.balance }.by 20
    end
  end
end
