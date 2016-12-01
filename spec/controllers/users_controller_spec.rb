require 'spec_helper'

describe UsersController, :type => :controller do

    let(:user) { FactoryGirl.create(:user) }

    before(:each) do
        allow(controller).to receive(:signed_in?).and_return(true)
        sign_in user 
    end 

    describe "GET 'index'" do
        it "returns http success" do
            get 'index'
            response.should be_success
        end

    end

end
