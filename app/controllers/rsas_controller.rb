class RsasController < ApplicationController
	protect_from_forgery except :create
	def index
	end
	def create
		@RSA = Rsa.new(params[:n],params[:e],params[:d])
		@RSA.save
		return @RSA.id
	end
end
