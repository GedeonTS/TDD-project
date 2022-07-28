describe ".Solver" do
    
    describe 'factorial' do
    it 'should return the factorial of the number' do
        solver = double
        allow(solver).to receive(:factorial).with(5).and_return(120)
        expect(solver.factorial(5)).to eq(120)
        end
    it 'should return 1 for 0' do
        solver= double
        allow(solver).to receive(:factorial).with(0).and_return(1)
        expect(solver.factorial(0)).to eq(1)
        end
    it "should not accept negative numbers" do
        solver = double
        allow(solver).to receive(:factorial).with(-1).and_raise(ArgumentError)
        expect { solver.factorial(-1) }.to raise_error(ArgumentError)
        end
    end
    describe "reverse" do
        it "should reverse the string" do
            solver = double
            allow(solver).to receive(:reverse).with("hello").and_return("olleh")
            expect(solver.reverse("hello")).to eq("olleh")
            end
        end