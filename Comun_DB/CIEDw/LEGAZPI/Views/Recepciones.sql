﻿CREATE VIEW LEGAZPI.Recepciones AS 
									SELECT * FROM dbo.SAPRecepciones
									WHERE Centro IN ('0130')