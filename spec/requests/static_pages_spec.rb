require 'rails_helper'

# RSpec.describe "StaticPages", :type => :request do
#   describe "GET /static_pages" do
#     it "works! (now write some real specs)" do
#       get static_pages_index_path
#       expect(response.status).to be(200)
#     end
#   end
# end

feature "StaticPages" do
	scenario "it should have the content 'Sample App'" do
		visit '/static_pages/home'
		expect(page).to have_content('Sample App')
	end

	scenario "it should have the content 'Help'" do
		visit '/static_pages/help'
		expect(page).to have_content('Help')
	end

	scenario "it should have the content 'About'" do
		visit '/static_pages/about'
		expect(page).to have_content('About')
	end

	scenario 'it should have the right title' do
		visit '/static_pages/home'
		expect(page).to have_title('Sample App | Home')
	end

	scenario 'it should have the right title' do
		visit '/static_pages/help'
		expect(page).to have_title('Sample App | Help')
	end

	scenario 'it should have the right title' do
		visit '/static_pages/about'
		expect(page).to have_title('Sample App | About Us')
	end
end
