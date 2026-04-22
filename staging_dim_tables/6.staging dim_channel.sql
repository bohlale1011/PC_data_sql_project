--dim_channel

        CREATE TABLE [PC_Sales_Data].[dbo].[dim_channel](
        [Channel_id]INT IDENTITY(1,1) PRIMARY KEY,
        [Channel] [nvarchar](50) NOT NULL,
        )
        INSERT INTO [PC_Sales_Data].[dbo].[dim_channel](Channel)
        SELECT DISTINCT Channel
        FROM [PC_Sales_Data].[dbo].[1772542271737_pc_data]

        SELECT * FROM [PC_Sales_Data].[dbo].[dim_channel]
