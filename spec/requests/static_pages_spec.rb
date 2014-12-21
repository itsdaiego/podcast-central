require 'spec_helper'

describe "Static pages" do

	subject { page }

	describe "Home page" do
		before { visit root_path }
		it { should have_content("GET INVOLVED") }
		it { should have_title("Podcast Central")}

		describe "signed-in users"

	end
	describe "About page" do
		before { visit about_path }

		it { should have_content('About') }
		it { should have_title('Podcast Central | About Us') }
	end

	describe "Contact page" do
		before { visit contact_path }

		it { should have_selector('h1', text: 'Contact') }
		it { should have_title('Podcast Central | Contact') }
	end
end