require 'rails_helper'

RSpec.describe "employees/show", type: :view do
  before(:each) do
    assign(:employee, Employee.create!(
      name: "Name",
      email: "Email",
      position: "Position",
      department: "Department",
      salary: "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Position/)
    expect(rendered).to match(/Department/)
    expect(rendered).to match(/9.99/)
  end
end
