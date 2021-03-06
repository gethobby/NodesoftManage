package webController;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONException;

import model.GirdfileList;
import model.ResultSetConverter;
import model.mySQLConnector;

/**
 * Servlet implementation class GetModellist
 */
@WebServlet("/GetModellist")
public class GetModellist extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetModellist() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		
		if(request.getParameter("objId")==null){
			GirdfileList gf = new GirdfileList();
			List list = gf.getObjectModelList();
			if (list != null) {
				// System.out.println(list);
				request.setAttribute("Modellist", list);
				try {
					request.getRequestDispatcher("/Webfront/ModelList.jsp").forward(request,
							response);
				} catch (ServletException e) {
					e.printStackTrace();
				}
				//System.out.println("success");
			} else {
				request.setAttribute("Modellist", 0);
				try {
					request.getRequestDispatcher("/Webfront/ModelList.jsp").forward(request,
							response);
				} catch (ServletException e) {
					e.printStackTrace();
				}
			}
		}
		else{
			int targetObjModelID=Integer.parseInt(request.getParameter("objId"));
			mySQLConnector con=new mySQLConnector();
			String filesummaryinfoSql="select fileID,模型文件,来源,简介 from geomodel.fileinfo where 目标=?";
			con.readyPreparedStatement(filesummaryinfoSql);
			con.setInt(1, targetObjModelID);
			JSONArray Modelfiles=null;
			try {
				Modelfiles=ResultSetConverter.convert(con.executeQuery());
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (JSONException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			finally{
				con.close();
			}
			if(Modelfiles!=null)
			{
				response.setCharacterEncoding("utf-8");
				response.setContentType("application/json");
				
				// Get the printwriter object from response to write the required json object to the output stream      
				PrintWriter out = response.getWriter();
				// Assuming your json object is **jsonObject**, perform the following, it will return your json object  
				out.print(Modelfiles);
				out.flush();
			}
			
		}
	}

}
