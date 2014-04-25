require 'takeaway'

describe Takeaway do 

let(:takeaway) { Takeaway.new }

context 'The restaurant should have a menu' do 

          it ' the menu' do 
            menu = { "Lasagne" => 5, "Bolognase" => 4, "Carbonara" => 6, "Seafood" => 8 }
            expect(takeaway.menu).to eq menu
          end
        end

end