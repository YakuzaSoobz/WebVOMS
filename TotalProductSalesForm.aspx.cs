using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TotalProductSalesForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TestDataSetShankar DS = new TestDataSetShankar();
        TestDataSetShankarTableAdapters.CustomerTableAdapter CustTA = new TestDataSetShankarTableAdapters.CustomerTableAdapter();
        TestDataSetShankarTableAdapters.ProductTableAdapter ProdTA = new TestDataSetShankarTableAdapters.ProductTableAdapter();
        TestDataSetShankarTableAdapters.Customer_QuoteTableAdapter CusQTA = new TestDataSetShankarTableAdapters.Customer_QuoteTableAdapter();
        TestDataSetShankarTableAdapters.Customer_Quote_Line_ItemTableAdapter CustQlTA = new TestDataSetShankarTableAdapters.Customer_Quote_Line_ItemTableAdapter();


        CustQlTA.Fill(DS.Customer_Quote_Line_Item);
        CusQTA.Fill(DS.Customer_Quote);
        ProdTA.Fill(DS.Product);

        CrystalReportSource1.ReportDocument.SetDataSource(DS);
    }
    protected void CrystalReportViewer1_Init(object sender, EventArgs e)
    {

    }
}