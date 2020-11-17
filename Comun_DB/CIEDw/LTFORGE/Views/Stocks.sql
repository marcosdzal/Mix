CREATE VIEW LTFORGE.Stocks AS 
									SELECT * FROM dbo.StocksSAP
									WHERE Centro IN ('0400')