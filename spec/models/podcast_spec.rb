require 'spec_helper'

describe Podcast do

  before do
    @podcast = Podcast.new(name: 'Supercast', category: 'tech', description: 'lalala',
                           url: 'https://www.fake.com', image: 'foo')
  end

  subject {@podcast}


  it { should respond_to(:name) }
  it { should respond_to(:category) }
  it { should respond_to(:description) }
  it { should respond_to(:url) }
  it { should respond_to(:image) }
  it { should be_valid }


  describe "when a name is empty" do
     before {@podcast.name = " "}
     it { should_not be_valid }
  end

  describe "when a category is empty" do
     before {@podcast.category = " "}
     it { should_not be_valid }
  end

  describe "when a description is empty" do
     before {@podcast.description = " "}
     it { should_not be_valid }
  end

  describe "when a url is empty" do
     before {@podcast.url = " "}
     it { should_not be_valid }
  end 

  describe "must belong to many users" do
    it { should have_and_belong_to_many(:users) }
  end
end
