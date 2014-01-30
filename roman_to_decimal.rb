class RomanToDecimal
  def self.convert(string)
    new.convert(string)
  end

  def convert(string)
    case string.length
    when 0 then 0
    when 1 then single_char_symbols[string]
    else
      # double char symbols have precedence over single char symbols
      if value = double_char_symbols[string[0,2]]
        value + convert(string[2..-1])
      else
        convert(string[0]) + convert(string[1..-1])
      end
    end
  end

  private

  def single_char_symbols
    Hash.new(0).merge({
      "I" => 1,
      "V" => 5,
      "X" => 10,
      "L" => 50,
      "C" => 100,
      "D" => 500,
      "M" => 1000
    })
  end

  def double_char_symbols
    {
      "IV" => 4,
      "IX" => 9,
      "XL" => 40,
      "XC" => 90,
      "CD" => 400,
      "CM" => 900
    }
  end
end
