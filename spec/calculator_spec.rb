require('rspec')
require('calculator')

describe('calculator') do
  it('adds two given numbers together') do
    calculator('What is 5 plus 3?').should(eq(8))
  end

  it('subtracts one number from another') do
    calculator('What is 6 minus 3?').should(eq(3))
  end
  it('multiplies two numbers') do
    calculator('What is 5 times 5?').should(eq(25))
  end
  it('divides one number from another') do
    calculator('What is 7 divided by 2?').should(eq(3.5))
  end
  it('finds a number to the power of another number') do
    calculator('What is 2 to the power of 4').should(eq(16))
  end
  it('handles multiple operations') do
    calculator('What is 2 plus 2 times 3?').should(eq(8))
  end
  it('handles floats and decimals with addition') do
    calculator('What is 2.5 plus 3.6?').should(eq(6.1))
  end
end

describe('string_breaker') do
  it('splits more than one question and solves them individually') do
    string_breaker('What is 2 plus 2? What is 3 times 3?').should(eq([4, 9]))
  end
end
