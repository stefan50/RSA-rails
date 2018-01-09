require 'rails_helper'
require 'json'

RSpec.describe RsasController, :type => :controller do
	context "POST /rsas"
		it "accepts n=1, e=2, d=3" do
			id = `curl -s -d "n=1&e=2&d=3" rsa-rails.herokuapp.com/rsas`.to_i
			expect(id).to be_instance_of Integer
		end
		it "accepts nothing" do
			id = `curl -s -X POST rsa-rails.herokuapp.com/rsas`.to_i
			expect(id).to be_instance_of Integer
		end
	context "GET /rsas/:id"
		it "gets the keys" do
			keys = JSON.parse(`curl -s rsa-rails.herokuapp.com/rsas/1`)
			expect(keys).to be_instance_of Hash and expect(keys).to include("n", "e", "d")
		end
end
