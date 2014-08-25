class StaticPagesController < ApplicationController
  def home
  	@full_title = full_title("Home")
  end

  def help
  	@full_title = full_title("Help")
  end

  def about
  	@full_title = full_title("About Us")
  end

	def full_title(base_title = "Sample App", page_title)
		if page_title.empty?
			base_title
		else
			"#{base_title} | #{page_title}"
		end
	end
end
