using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Web.UI.WebControls;

namespace blood_bucket
{
    public class clsblood_bucket
    {
        SqlConnection cn = new SqlConnection(WebConfigurationManager.ConnectionStrings["con"].ConnectionString);
        SqlDataAdapter da;
        DataSet ds;
        SqlCommand cmd;

        string query;

        public void BindToDataList(string qry, DataList dl)
        {
            da = new SqlDataAdapter(qry, cn);
            ds = new DataSet();
            da.Fill(ds, "tab");
            dl.DataSource = ds.Tables["tab"];
            dl.DataBind();
        }

        public void BindToGridView(string qry, GridView gv)
        {
            da = new SqlDataAdapter(qry, cn);
            ds = new DataSet();
            da.Fill(ds, "tab");
            gv.DataSource = ds.Tables["tab"];
            gv.DataBind();
        }

        public void BindToDropDownlist(string qry, DropDownList dlst, string dtextfield, string dvaluefield)
        {
            da = new SqlDataAdapter(qry, cn);
            ds = new DataSet();
            da.Fill(ds, "tab");
            dlst.DataSource = ds.Tables["tab"];
            dlst.DataTextField = dtextfield;
            dlst.DataValueField = dvaluefield;
            dlst.DataBind();
        }

        public bool SearchRecord(string tblName, string fieldName, string value)
        {
            query = "select * from " + tblName + " where " + fieldName + "='" + value + "'";
            da = new SqlDataAdapter(query, cn);
            ds = new DataSet();
            da.Fill(ds, "tab");
            if (ds.Tables["tab"].Rows.Count > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public bool SearchRecord(string qry)
        {
            da = new SqlDataAdapter(qry, cn);
            ds = new DataSet();
            da.Fill(ds, "tab");
            if (ds.Tables["tab"].Rows.Count > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }


        public string NewID(string tblName, string fieldName)
        {
            query = "select isnull(max(" + fieldName + "),0) + 1 as ID from " + tblName;
            da = new SqlDataAdapter(query, cn);
            ds = new DataSet();
            da.Fill(ds, "tab");
            return ds.Tables["tab"].Rows[0]["ID"].ToString();
        }

        public string Manipulate(string qry, string work)
        {
            try
            {
                cmd = new SqlCommand();
                cmd.CommandText = qry;
                cmd.Connection = cn;
                cn.Open();
                cmd.ExecuteNonQuery();
                cn.Close();
                string Message = work + " Successful";
                return Message;
            }
            catch (Exception ex)
            {
                cn.Close();
                string Message = work + " Failed";
                return Message;

            }

        }

        public string FindField(string tblName, string fieldName, string value, string ReqField)
        {
            query = "select * from " + tblName + " where " + fieldName + "='" + value + "'";
            da = new SqlDataAdapter(query, cn);
            ds = new DataSet();
            da.Fill(ds, "tab");
            return ds.Tables["tab"].Rows[0][ReqField].ToString();
        }

        public string FindField(string tblName, string fieldName, int value, string ReqField)
        {
            query = "select * from " + tblName + " where " + fieldName + "=" + value + "";
            da = new SqlDataAdapter(query, cn);
            ds = new DataSet();
            da.Fill(ds, "tab");
            return ds.Tables["tab"].Rows[0][ReqField].ToString();
        }
    }
}
