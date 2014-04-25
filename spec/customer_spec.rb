require 'customer'

describe 'Customer' do 

  let (:customer) {Customer.new 'test person'}
  

  it 'their name' do 
    expect(customer.name).to eq 'test person'
  end

end