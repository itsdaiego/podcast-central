require 'spec_helper'
describe "User pages" do
	
	subject{page}


	describe "index" do
		let(:user) { FactoryGirl.create(:user) }
		
		before(:each) do 
			sign_in user
			visit users_path 
		end
		it{ should have_title('Podcast Central | Community') }
		it{ should have_content('Members') }
	end	
end