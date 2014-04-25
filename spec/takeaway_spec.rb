require 'takeaway'

describe Takeaway do 

let(:takeaway) { Takeaway.new }

  context 'the menu' do 

          it 'list of items on the menu' do 
            cuisine = {   :lasagne => 8,
                          :bolognase => 6,
                          :carbonara => 5, 
                          :seafood => 4 }
            expect(takeaway.cuisine).to eq cuisine
          end
        end

         it 'placing an order' do 
            expect(takeaway.placing_order({ :lasagne => 1, :seafood => 2 }, 16)).to be_true
          end

          it 'if an order is placed with the wrong total value then an error should arise' do
            expect {
              takeaway.placing_order({ :seafood => 4 }, 1)
              }.to raise_error(RuntimeError, 'Sorry you have input the wrong total amount. Please try and order again.')
            
        end

     
      




end 
