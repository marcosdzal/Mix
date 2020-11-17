CREATE VIEW EGANA.Stocks AS 
									SELECT * FROM dbo.StocksSAP
									WHERE Centro IN ('0100')