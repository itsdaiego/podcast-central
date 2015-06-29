require 'spec_helper'

describe User do

	before do
		@user = User.new(name: "Example User", email: "user@example.com",
			password: "foobar", password_confirmation: "foobar")
	end

	subject { @user }
     
	it { should respond_to(:name) }
	it { should respond_to(:email) }
	it { should respond_to(:password_digest) }
	it { should respond_to(:password_confirmation) }
	it { should respond_to(:remember_token) }
	it { should respond_to(:authenticate) }

	it { should be_valid }

	describe "when name is empty" do
		before { @user.name = " " }
		it { should_not be_valid }
	end

	describe "when email is empty" do
		before {@user.email = " "}
		it { should_not be_valid }
	end
	describe "when name is too long (over 50 characters)" do
		before { @user.name = "password" *51 }
		it { should_not be_valid }
	end
	describe "when user attempt to take an email that was already taken" do
		before do
			user_email = @user.dup
			user_email.email = @user.email.upcase
			user_email.save
		end
		it { should_not be_valid }
	end
	describe "when password confirmation is wrong" do
		before { @user.password_confirmation = "wrongpassword" }
		it { should_not be_valid }
	end
	describe "when password is too short" do
		before { @user.password = "a" * 5}
		it { should_not be_valid }
	end
	describe "remember token" do
		before { @user.save }
		it(:remember_token) { should_not be_blank }
	end
end
