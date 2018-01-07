class RsasController < ApplicationController
	protect_from_forgery except: :create
	def index
	end
	def create
		@RSA = Rsa.new(n: params[:n],e: params[:e],d: params[:d])
		@RSA.save
		@RSA.find(params[:id])
	end
end
