IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[ID information]') AND OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ID information]
;

CREATE TABLE [ID information]
(
	[Address] char,
	[Birthday] char,
	[BloodType] char,
	[CellPhone] char,
	[Center] double,
	[Gender] char,
	[ID] char,
	[Name] char,
	[PatientNB] int,
	[Pregnant] boolean,
	[Remark] char,
	[Weight] double,
	[iD informationID] Integer NOT NULL
)
;

ALTER TABLE [ID information] 
 ADD CONSTRAINT [PK_ID information]
	PRIMARY KEY CLUSTERED ([iD informationID])
;
