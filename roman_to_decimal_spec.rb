require_relative './roman_to_decimal'

describe RomanToDecimal do
  let(:service) { described_class.new }

  context "#convert" do

    conversion_table = {
      ""          => 0,
      "G"         => 0,
      "I"         => 1,

      "IX"        => 9,
      "XIV"       => 14,
      "XVI"       => 16,
      "XLI"       => 41,
      "XCVI"      => 96,
      "DXLV"      => 545,

      "MCMLXXXVI" => 1986,
      "MMXIIII"   => 2014
    }

    it "converts from roman notation to decimal notation" do
      conversion_table.each do |roman, decimal|
        expect(service.convert(roman)).to eq(decimal)
      end
    end

  end
end
