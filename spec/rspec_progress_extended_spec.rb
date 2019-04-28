RSpec.describe RspecProgressExtended do
  1000.times do
    it do
      case rand(0..9)
      when 0..7
        expect(true).to eq true
      when 8
        expect(true).to eq false
      when 9
        pending
        expect(true).to eq false
      end
    end
  end
end
