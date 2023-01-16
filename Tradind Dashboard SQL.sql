-- Below is the final query required to source INTRADAY data from the database. 

SELECT
			attr.[FactID],
			attr.[DateTime],
			attr.[LastBid],
			attr.[High],
			attr.[Low],
			attr.[Open],
			attr.[Volume],
			attr.[MarketCap],
			attr.[Beta],
 
			sec.Company,
			sec.Symbol,

			exc.Symbol AS Exchange

 
	 FROM [dbo].[FactAttributes_Intraday] as attr
 
	INNER JOIN [dbo].[dimSecurity] AS secÂ 
			 ON attr.SecurityID = sec.ID

	INNER JOIN [dbo].[dimExchange] AS excÂ 
 	ON sec.ExchangeID = exc.ID
