require 'rails_helper'

RSpec.feature 'Adding categories to shops' do
  let(:admin) { FactoryGirl.create :admin, password: 'password' }
  let!(:shop) { FactoryGirl.create :shop }
  let!(:login_user) { login(admin.email, admin.password) }
  let!(:category) { FactoryGirl.create :category }

  scenario 'Add category to a shop' do
    visit admin_shop_shop_categories_path(shop)
    click_link 'Add a new Category'

    fill_and_submit_category_form_with(category)

    expect(page).to have_content 'Category successfully added'
  end

  def fill_and_submit_category_form_with(category)
    select category.name, from: 'Category'
    click_button 'Add Category'
  end
end
