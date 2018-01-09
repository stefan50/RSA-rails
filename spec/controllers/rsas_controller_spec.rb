require 'rails_helper'

RSpec.describe Rsa, :type => :model do
	context "accepts 3 keys and returns an id"
		it "accepts n=1, e=2, d=3" do
			expect `curl -s -d "n=1&e=2&d=3" https://rsa-rails.herokuapp.com/rsas`.to eq 1
		end
end
