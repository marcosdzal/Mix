CREATE VIEW GALFOR.Stocks AS 
									SELECT * FROM dbo.StocksSAP
									WHERE Centro IN ('0110')