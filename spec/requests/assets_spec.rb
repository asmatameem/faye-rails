require 'spec_helper'

describe "Faye browser javascript", :type => :request do

  it "should be served by asset pipeline" do
    get '/assets/faye.js'
    response.status.should be(200)
  end

  it "should match Faye versions" do
    get '/assets/faye.js'
<<<<<<< HEAD
    expect(response.body).to match /VERSION:['"]#{Faye::VERSION}['"]/
=======
    response.body.should include(%Q(VERSION:"#{Faye::VERSION}"))
>>>>>>> fixes to make it compatible with faye 1.0.0
  end
end
