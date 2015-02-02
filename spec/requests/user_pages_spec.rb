require 'spec_helper'
describe "User pages" do

	subject{page}


	describe "index" do
		let(:user) { FactoryGirl.create(:user) }

		before(:each) do
			sign_in user
			visit users_path
		end
		it{ should have_title(full_title('Community')) }
		it{ should have_content('Members') }
	end

	describe "edit" do
		let(:user) { FactoryGirl.create(:user) }

		before(:each) do
			sign_in user
			visit edit_user_path(user)
		end
		it{ should have_content('Profile Settings')}
		it{ should have_title(full_title('Settings'))}

		describe "invalid information" do
			before { click_button "Save changes" }
			it { should have_content('error') }
		end

		describe "valid information" do
			let(:new_name) { "Test name" }
			let(:new_email) { "test@email.com" }
			before do
				fill_in "Name", with: new_name
				fill_in "Email", with: new_email
				fill_in "Password", with: user.password
				fill_in "Password Confirmation", with: user.password

				click_button "Save changes"
			end
			it { should_not have_content('error')}
			it { should have_title(new_name)}
		end
	end
	describe "show" do
		let(:user) {FactoryGirl.create(:user)}
		before(:each) do
			sign_in user
			visit edit_user_path(user)
		end
		it { should have_content("Name") }
		it { should have_content("Podcats") }
		it { should have_content("Following") }
		it { should have_content("Followers") }
	end
end
