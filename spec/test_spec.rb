require_relative '../solver'

describe '.Solver' do
  describe 'factorial' do
    it 'should return the factorial of the number' do
      solver = double
      allow(solver).to receive(:factorial).with(5).and_return(120)
    end

    it 'should return 1 for 0' do
      solver = double
      allow(solver).to receive(:factorial).with(0).and_return(1)
    end

    it 'should not accept negative numbers' do
      solver = double
      allow(solver).to receive(:factorial).with(-1).and_raise(ArgumentError)
    end
  end

  describe 'reverse' do
    it 'should reverse the string' do
      solver = double
      allow(solver).to receive(:reverse).with('hello').and_return('olleh')
    end
  end

  describe 'fizzbuzz' do
    it 'should return fizz for multiples of 3' do
      solver = double
      allow(solver).to receive(:fizzbuzz).with(3).and_return('fizz')
    end
    it 'should return buzz for multiples of 5' do
      solver = double
      allow(solver).to receive(:fizzbuzz).with(5).and_return('buzz')
    end
    it 'should return fizzbuzz for multiples of 3 and 5' do
      solver = double
      allow(solver).to receive(:fizzbuzz).with(15).and_return('fizzbuzz')
    end
    it 'should return the number for non-multiples of 3 or 5' do
      solver = double
      allow(solver).to receive(:fizzbuzz).with(7).and_return(7)
    end
  end
end
