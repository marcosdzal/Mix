CREATE VIEW LEGAZPI.Stocks AS 
									SELECT * FROM dbo.StocksSAP
									WHERE Centro IN ('0130')