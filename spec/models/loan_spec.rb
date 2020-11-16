require 'rails_helper'

RSpec.describe Loan, type: :model do
  context 'Validate Loan' do 
    it 'should be valid' do 
      loan = create(:loan)

      expect(loan).to be_valid
    end
  end

  context 'Validate Loan fields' do 
    it 'amount should be valid' do
      loan = create(:loan)
      
      expect(loan).to be_valid
    end
    
    it 'amount should not be valid' do
      loan = build(:loan, :negative_amount)
      
      expect(loan).to_not be_valid
    end
  end
end