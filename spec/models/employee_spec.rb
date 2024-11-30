require 'rails_helper'

RSpec.describe Employee, type: :model do
  it "is valid with valid attributes" do
    employee = Employee.new(name "Sean N", email: "sean@example.com",position: "Manager",department: "HR",salary: 50000)
    expect(employee).to be_valid
  end

  it "is not valid without a name" do
    employee = Employee.new(email: "sean.example.com",position: "Manager",department: "HR",salary: 50000)
    expect(employee).to_not be_valid
  end
end
