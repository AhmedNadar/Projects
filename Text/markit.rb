require 'httparty'

module MarkIt
	

	METHODS = {
		:name => "Name",
		:last_price => "LastPrice",
		:change => "Change",
		:change_percent => "ChangePercent",
		:market_cap => "MarketCap",
		:volume => "Volume",
		:change_ytd => "ChangeYTD",
		:change_percent_ytd => "ChangePercentYTD",
		:high => "High",
		:low => "Low",
		:open => "Open"
	}


	class Quote
		include HTTParty


		attr_accessor :ticker, :info

		base_uri "http://dev.markitondemand.com/Api/Quote?"

		def initialize(ticker)
			self.ticker = ticker
			self.info = self.class.get("symbol=#{ticker}")
			if self.info["Error"]
				self.info = "Error. Please enter a new ticker."
			end
		end

		METHODS.each do |k,v|
			self.class_eval do
				define_method "#{k.to_s}" do
					info["QuoteApiModel"]["Data"]["#{v}"]
				end
			end
		end
	end

end