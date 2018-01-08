class EncryptMessagesController < ApplicationController
	skip_before_action :verify_authenticity_token  
	def create
		@key = Rsa.find(params[:id])
		@encrypted = CreateEncrypted.new(encrypted: encrypt(params[:message], @key), id_message: params[:id]) 
		@encrypted.save
		redirect_to @encrypted
	end	
	
	def show
		@encrypted = CreateEncrypted.find(params[:id])
		par = Hash.new
		par[:encrypted] = @encrypted.encrypted
		render json: par
	end

private
	def encrypt(message, parameters)
		encrypted_message = Array.new
		message.bytes.each do |byte|
			byte = ((byte**parameters[:e])% parameters[:n])
			encrypted_message.push(byte)
			encrypted_message.push("f")
		end
		encrypted_message = encrypted_message.join
		encrypted_message 
	end

end
