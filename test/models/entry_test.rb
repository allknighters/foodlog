require "test_helper"

class EntryTest < ActiveSupport::TestCase
  test "is valid with valid attributes" do
    entry = Entry.new(meal_type: "Breakfast", carbohydrates: 20, proteins: 10, calories: 200, fats:7)
    assert entry.save
  end

  test "should not save without calories attribute" do
    entry = Entry.new(meal_type: "Breakfast", carbohydrates: 20, proteins: 10, fats:7)
    assert_not entry.save
  end

end
