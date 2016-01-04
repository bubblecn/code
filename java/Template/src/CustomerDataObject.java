// "ConcreteClass" 具体类
public class CustomerDataObject extends  DataObject
{
	private String connectionString =
		"Server=.;User ID=sa;password=123;database=Northwind;Connection Reset=FALSE";
	private String commandString;
	private DataSet dataSet;
    private SqlConnection dataConnection;
	// Methods 方法
	public  void Connect( )
	{
		dataConnection=new SqlConnection(connectionString);
		dataConnection.Open();
	}
	public  void Select( )
	{
		commandString = "select top 5  CompanyName from Customers";
		SqlDataAdapter dataAdapter = new SqlDataAdapter(
			commandString,dataConnection);
             dataSet=new DataSet();
             dataAdapter.Fill(dataSet,”Customers”);
	}
	public  void Process()
	{
		DataTable dataTable = dataSet.Tables["Customers"];
		foreach( DataRow dataRow in dataTable.Rows )
			Console.WriteLine( dataRow[ "CompanyName" ] );
	}
	public override void Disconnect()
	{
		dataSet.Dispose();//释放资源
		dataConnection.Close();
	}
}

	
