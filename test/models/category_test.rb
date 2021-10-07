require "test_helper"

class CategoryTest < ActiveSupport::TestCase
  fixtures :categories

  test "category attributes must not be empty" do
    category = Category.new
    assert category.invalid?
    assert category.errors[:name].any?
  end

  test "category is not valid without unique name" do
    category = Category.new(name: categories(:one).name)
    assert category.invalid?
    assert_equal [I18n.translate('errors.messages.taken')], category.errors[:name]
  end
end
