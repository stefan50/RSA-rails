class RsasController < ApplicationController
	def index
	end
	def create
		@RSA = Rsa.new(params[:n],params[:e],params[:d])
		@RSA.save
		return @RSA.id
	end
end
