class PagesController < ApplicationController

	def index
		@title = "CloudDrive"
	end

	def welcome
		@title = "Welcome"
	end

	def home
		@title = "Home"

		@client = current_client

		@cloud_files = @client.cloud_files

	end

	def setting
		@title = "Setting"
	end

	def upload
		
	end
end
