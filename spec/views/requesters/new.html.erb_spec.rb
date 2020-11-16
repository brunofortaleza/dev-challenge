require 'rails_helper'

RSpec.describe "requesters/new", type: :view do
  before(:each) do
    assign(:requester, Requester.new(
      company_name: "MyString",
      cnpj: "MyString",
      address: "MyString",
      phone: "MyString"
    ))
  end

  it "renders new requester form" do
    render

    assert_select "form[action=?][method=?]", requesters_path, "post" do

      assert_select "input[name=?]", "requester[company_name]"

      assert_select "input[name=?]", "requester[cnpj]"

      assert_select "input[name=?]", "requester[address]"

      assert_select "input[name=?]", "requester[phone]"
    end
  end
end
