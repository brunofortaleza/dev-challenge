require 'rails_helper'

RSpec.describe "loans/show", type: :view do
  before(:each) do
    @loan = assign(:loan, Loan.create!(
      amount: "9.99",
      number_installments: 2,
      interest_rate: "9.99",
      requester: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(//)
  end
end
