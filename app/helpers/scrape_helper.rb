module ScrapeHelper
	def get_dashboard_data
		current_user.addresses.each do |address| 
			@all_ads = "#{@all_ads}#{address.public_key}|"
		end 
		@all_ads = @all_ads[0..-2] unless @all_ads.blank?
		url = "https://blockchain.info/q/addressbalance/#{@all_ads}"
		@uri = URI.parse(URI.encode(url.strip))
	end
end
