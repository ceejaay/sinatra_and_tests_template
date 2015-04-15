require './my_model'
require 'rspec'
require 'rack/test'


describe "my model" do
  
  describe "the thing" do
    it "should return thing" do
      x = MyApp.new
      expect(x.thing).to eq("hello world!")
    end
  end

 




end
