require 'rails_helper'
require 'json'

RSpec.describe EncryptMessagesController, :type => :controller do
	context "POST /rsas/:id/encrypt_messages"
		it "accepts message=\"message\"" do
			encrypted = `curl -s -d "message="message"" localhost:3000/rsas/1/encrypt_messages`
			expect(encrypted).to be_instance_of String and expect(encrypted).to include("f")
		end
		it "accepts nothing" do
			id = `curl -s -X POST localhost:3000/rsas`.to_i
		end
end
