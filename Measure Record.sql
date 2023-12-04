IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[FK_Measure Record_ID information]') AND OBJECTPROPERTY(id, 'IsForeignKey') = 1) 
ALTER TABLE [Measure Record] DROP CONSTRAINT [FK_Measure Record_ID information]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[Measure Record]') AND OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Measure Record]
;

CREATE TABLE [Measure Record]
(
	[AS Blood] double,
	[Blood Oxe] double,
	[Breath] int,
	[DB Pressure] double,
	[HS Blood] double,
	[PatientNB] int,
	[PC Blood] double,
	[Pulse] double,
	[SB Pressure] int,
	[Temparature] double,
	[Time] char,
	[measure RecordID] Integer NOT NULL,
	[iD informationID] Integer
)
;

ALTER TABLE [Measure Record] 
 ADD CONSTRAINT [PK_Measure Record]
	PRIMARY KEY CLUSTERED ([measure RecordID])
;

ALTER TABLE [Measure Record] ADD CONSTRAINT [FK_Measure Record_ID information]
	FOREIGN KEY ([iD informationID]) REFERENCES [ID information] ([iD informationID]) ON DELETE No Action ON UPDATE No Action
;
