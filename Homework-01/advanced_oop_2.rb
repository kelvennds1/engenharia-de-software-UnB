# ============= PART A: Currency Conversion =============

class Numeric
  @@currencies = {
    'yen' => 0.013, 
    'euro' => 1.292, 
    'rupee' => 0.019,
    'dollar' => 1.0  
  }
  
  def method_missing(method_id)
    singular_currency = method_id.to_s.gsub(/s$/, '')
    
    if @@currencies.has_key?(singular_currency)
      Currency.new(self * @@currencies[singular_currency], singular_currency)
    else
      super
    end
  end
  
  def respond_to_missing?(method_name, include_private = false)
    singular_currency = method_name.to_s.gsub(/s$/, '')
    @@currencies.has_key?(singular_currency) || super
  end
end

class Currency
  def initialize(amount, currency)
    @amount = amount
    @currency = currency
  end
  
  def in(target_currency)
    target_currency = target_currency.to_s.gsub(/s$/, '') # Remove 's' plural
    
    dollars = case @currency
    when 'dollar'
      @amount
    when 'yen'
      @amount / Numeric.class_variable_get(:@@currencies)['yen']
    when 'euro'  
      @amount / Numeric.class_variable_get(:@@currencies)['euro']
    when 'rupee'
      @amount / Numeric.class_variable_get(:@@currencies)['rupee']
    end
    
    result = dollars * Numeric.class_variable_get(:@@currencies)[target_currency]
    result.round(2)
  end
end

# puts 5.dollars.in(:euros)

# ============= PART B: String Palindrome Method =============

class String
  def palindrome?
    clean = self.downcase.gsub(/\W/, '')  
    clean == clean.reverse
  end
end

# puts "racecar".palindrome?

# ============= PART C: Enumerable Palindrome Method =============

module Enumerable
  def palindrome?
    array_form = self.to_a
    array_form == array_form.reverse
  end
end

# puts [1,2,3,2,1].palindrome?