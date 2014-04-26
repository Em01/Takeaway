require 'customer'

describe 'Customer' do 

  let (:customer) {Customer.new 'test person', '+447862000292'}
  let(:takeaway) {double :takeaway}

  it 'their name' do 
    expect(customer.name).to eq 'test person'
  end

  it ' the customer has a mobile phone with a number' do 
    expect(customer.phone_number).to eq "+447862000292"
  end



end