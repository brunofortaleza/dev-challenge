require 'rails_helper'

RSpec.describe "loans/edit", type: :view do
  before(:each) do
    @loan = assign(:loan, Loan.create!(
      amount: "9.99",
      number_installments: 1,
      interest_rate: "9.99",
      requester: nil
    ))
  end

  it "renders the edit loan form" do
    render

    assert_select "form[action=?][method=?]", loan_path(@loan), "post" do

      assert_select "input[name=?]", "loan[amount]"

      assert_select "input[name=?]", "loan[number_installments]"

      assert_select "input[name=?]", "loan[interest_rate]"

      assert_select "input[name=?]", "loan[requester_id]"
    end
  end
end
