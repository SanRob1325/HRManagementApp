require 'rails_helper'

RSpec.describe "employees/edit", type: :view do
  let(:employee) {
    Employee.create!(
      name: "MyString",
      email: "MyString",
      position: "MyString",
      department: "MyString",
      salary: "9.99"
    )
  }

  before(:each) do
    assign(:employee, employee)
  end

  it "renders the edit employee form" do
    render

    assert_select "form[action=?][method=?]", employee_path(employee), "post" do

      assert_select "input[name=?]", "employee[name]"

      assert_select "input[name=?]", "employee[email]"

      assert_select "input[name=?]", "employee[position]"

      assert_select "input[name=?]", "employee[department]"

      assert_select "input[name=?]", "employee[salary]"
    end
  end
end
