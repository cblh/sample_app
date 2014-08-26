require 'rails_helper'

# RSpec.describe "StaticPages", :type => :request do
#   describe "GET /static_pages" do
#     it "works! (now write some real specs)" do
#       get static_pages_index_path
#       expect(response.status).to be(200)
#     end
#   end
# end



feature "homepage" do
	scenario "it should have the content 'Sample App'" do
		visit root_path
		expect(page).to have_content('Sample App')
	end

	scenario 'it should have the right title' do
		visit root_path
		expect(page).to have_title('Sample App | Home')
	end
end

feature "HelpPage" do
	scenario "it should have the content 'Help'" do
		visit help_path
		expect(page).to have_content('Help')
	end

	scenario 'it should have the right title' do
		visit help_path
		expect(page).to have_title('Sample App | Help')
	end
end

feature "AboutPage" do
	scenario "it should have the content 'About'" do
		visit about_path
		expect(page).to have_content('About')
	end

	scenario 'it should have the right title' do
		visit about_path
		expect(page).to have_title('Sample App | About Us')
	end
end