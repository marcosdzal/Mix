﻿CREATE VIEW LEGAZPI.Clientes AS 
									SELECT * FROM dbo.SAPClientesGeneral
									WHERE Centro IN ('0130')