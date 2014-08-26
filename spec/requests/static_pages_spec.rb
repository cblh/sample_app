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
	subject {page}

	before {visit root_path}
  it { should have_content('Sample App') }
  it { should have_title(full_title('Home')) }

end

feature "HelpPage" do
	subject {page}

	before {visit help_path}
  it { should have_content('Help') }
  it { should have_title(full_title('Help')) }

end

feature "AboutPage" do
	subject {page}

	before {visit about_path}
  it { should have_content('About') }
  it { should have_title(full_title('About Us')) }

end