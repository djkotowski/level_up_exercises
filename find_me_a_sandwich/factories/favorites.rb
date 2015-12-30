FactoryGirl.define do
  factory :favorite do
    association :menu_item, factory: :menu_item
    association :user, factory: :user
  end
end
