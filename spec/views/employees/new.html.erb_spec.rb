require 'rails_helper'

RSpec.describe "employees/new", type: :view do
  before(:each) do
    assign(:employee, Employee.new(
      name: "MyString",
      email: "MyString",
      position: "MyString",
      department: "MyString",
      salary: "9.99"
    ))
  end

  it "renders new employee form" do
    render

    assert_select "form[action=?][method=?]", employees_path, "post" do

      assert_select "input[name=?]", "employee[name]"

      assert_select "input[name=?]", "employee[email]"

      assert_select "input[name=?]", "employee[position]"

      assert_select "input[name=?]", "employee[department]"

      assert_select "input[name=?]", "employee[salary]"
    end
  end
end
