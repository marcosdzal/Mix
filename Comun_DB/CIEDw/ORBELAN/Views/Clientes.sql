﻿CREATE VIEW ORBELAN.Clientes AS 
									SELECT * FROM dbo.SAPClientesGeneral
									WHERE Centro IN ('0150')