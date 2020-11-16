require 'rails_helper'

RSpec.describe "loans/new", type: :view do
  before(:each) do
    assign(:loan, Loan.new(
      amount: "9.99",
      number_installments: 1,
      interest_rate: "9.99",
      requester: nil
    ))
  end

  it "renders new loan form" do
    render

    assert_select "form[action=?][method=?]", loans_path, "post" do

      assert_select "input[name=?]", "loan[amount]"

      assert_select "input[name=?]", "loan[number_installments]"

      assert_select "input[name=?]", "loan[interest_rate]"

      assert_select "input[name=?]", "loan[requester_id]"
    end
  end
end
