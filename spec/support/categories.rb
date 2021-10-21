def category_with_subcategories
  FactoryBot.create(:category) do |category|
    FactoryBot.create(:subcategory, category: category)
    subcategories = ['AFC North',
                     'AFC South',
                     'AFC West',
                     'NFC East',
                     'NFC North',
                     'NFC South',
                     'NFC West']
    subcategories.each do |subcategory|
      FactoryBot.create(:subcategory, name: subcategory, category: category)
    end
  end
end
