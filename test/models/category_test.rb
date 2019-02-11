require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  
  def setup
    @category = Category.new(title: "English",
                             description: "Let's try English!")
  end
  
  test "should be valid" do
    assert @category.valid?
  end
  
  test "title should be present" do
    @category.title = "    "
    assert_not @category.valid?
  end
  
  test "description should be present" do
    @category.description = "    "
    assert_not @category.valid?
  end
  
  test "description should not be too short" do
    @category.description = "a"
    assert_not @category.valid?
  end
end
