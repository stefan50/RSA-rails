RSpec.describe RsasController, :type => :controller do
	before(:all) do
		DatabaseCleaner.strategy = :truncation
		DatabaseCleaner.start
	end
	after(:all) do
		DatabaseCleaner.clean
	end
	context "POST /rsas"
		it "accepts n=1, e=2, d=3" do
			post :create, params: {n:1, e:2, d:3}
			expect(Rsa.count).to eq 1
		end
		it "accepts nothing" do
			post :create
			expect(Rsa.count).to eq 2
		end
	context "GET /rsas/:id"
		it "returns JSON" do
			post :create, params: {n:1, e:2, d:3}
			get :show, params: {id:3}
			expect(response.body).to eq "{\"n\":1,\"e\":2,\"d\":3}"
		end
end
