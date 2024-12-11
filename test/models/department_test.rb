require 'test_helper'

class DepartmentTest < ActiveSupport::TestCase
  test "should not save department without name" do
    department = Department.new(description: "A description")
    assert_not department.save, "Saved the department without a name"
  end

  test "should save department with name" do
    department = Department.new(name: "A description")
    assert department.save, "Failed to save the department"
  end

  test "should not save department with valid attributes" do
    department = Department.new(name: "HR", description: "Handles Human resources")
    assert department.save, "Failed to save the department with valid attributes"
  end
end