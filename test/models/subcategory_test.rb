require "test_helper"

class SubcategoryTest < ActiveSupport::TestCase
  fixtures :subcategories

  test "subcategory attributes must not be empty" do
    subcategory = Subcategory.new
    assert subcategory.invalid?
    assert subcategory.errors[:name].any?
  end

  test "subcategory is not valid without unique name" do
    subcategory = Subcategory.new(name: subcategories(:one).name)
    assert subcategory.invalid?
    assert_equal [I18n.translate('errors.messages.taken')], subcategory.errors[:name]
  end
end
