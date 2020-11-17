CREATE VIEW NORMA.Stocks AS 
									SELECT * FROM dbo.StocksSAP
									WHERE Centro IN ('0140')