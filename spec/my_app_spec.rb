ENV["RACK_ENV"] = 'test'
require './my_app'
require 'rspec'
require 'rack/test'


describe "My sinatra app" do

  include Rack::Test::Methods
  def app
    Sinatra::Application
  end

  describe "my_app/index" do

    it "should allow access to index" do
      get "/"
      expect(last_response).to be_ok
    end

    it "should read 'hello world' " do
      get "/"
      expect(last_response.body).to eq("<h1>hello world</h1>\n")
    end

    it "should show there's an erb file" do
      skip "gotta figure out"
    end

  end



  describe "my_app/about" do

    it "should allow access to about" do
      get "/"
      expect(last_response).to be_ok
    end
    
    it "should show there's an erb file" do
      skip "gotta figure it out"
    end
  end
end
