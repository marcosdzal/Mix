CREATE VIEW ORBELAN.Stocks AS 
									SELECT * FROM dbo.StocksSAP
									WHERE Centro IN ('0150')