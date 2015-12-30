require "rails_helper"

describe Favorite, type: :model do
  let(:favorite) { FactoryGirl.build(:favorite) }
  let(:users) do
    FactoryGirl.create_list(:named_user,
      10,
      profile_visible: true)
  end
  let(:_) do
    FactoryGirl.create_list(:location, 4, zip: "60606").map do |location|
      FactoryGirl.create(:merchant, :with_menus, location: location)
    end
  end

  describe "friends favorites" do
    it "can find no friends favorites" do
      friends_favorites, total_count = Favorite.friends_favorites(users)
      expect(total_count).to eq(0)
      expect(friends_favorites.length).to eq(10)
    end

    it "can find friends favorites" do
      FactoryGirl.create(:favorite, menu_item_id: 1, user_id: users[0].id)
      FactoryGirl.create(:favorite, menu_item_id: 2, user_id: users[1].id)

      friends_favorites, total_count = Favorite.friends_favorites(users)
      expect(total_count).to eq(2)
      expect(friends_favorites[0][:favorites].count).to eq(1)
    end
  end
end
