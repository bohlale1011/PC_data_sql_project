--dim_date

CREATE TABLE [PC_Sales_Data].[dbo].[dim_date](
      [Date_id]INT IDENTITY (1,1) PRIMARY KEY,
      [Purchase_Date] [datetime2](7) NOT NULL,
      [Ship_Date] [nvarchar](50) NOT NULL
      )
      INSERT INTO [PC_Sales_Data].[dbo].[dim_date](Purchase_Date,Ship_Date)
      select distinct Purchase_Date,Ship_Date
      from [PC_Sales_Data].[dbo].[1772542271737_pc_data]
       
       select * from [PC_Sales_Data].[dbo].[dim_date]