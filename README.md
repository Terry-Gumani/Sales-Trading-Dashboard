# Sales-Trading-Dashboard
Acted as a BI analyst for a fictious company building an automated trading dashboard for the sales and trading teams on Tableau

Project Requirements; Your Tasks
• Connect to the test database using the documents provided
• Use Tableau to create a proof of concept trading dashboard
• Utilising the best features of Tableau

SQL Query For historical prices;

SELECT
hist.FactID,
hist.Date,
hist.[Open],
hist.High,
hist.Low,
hist.[Close],
hist.AdjClose,
hist.Volume,
sec.Company,
sec.Symbol,
sec.Industry,
sec.IndexWeighting,
exc.SymbolASExchange
FROM[dbo].[FactPrices_Daily] AShist
INNER JOIN[dbo].[dimSecurity] ASsec
ONhist.SecurityID=sec.ID
INNER JOIN[dbo].[dimExchange] ASexc
ONsec.ExchangeID=exc.ID
