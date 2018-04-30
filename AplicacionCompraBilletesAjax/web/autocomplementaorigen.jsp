<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String textMuni = request.getParameter("textMuni");
    String driver = "com.mysql.jdbc.Driver";
    String url = "jdbc:mysql://localhost:3306/andalucia";
    Connection con = null;
    String buscaMunicipiosSQL = "SELECT * FROM municipios m WHERE nombre LIKE '" + textMuni + "%';";

    try {
        Class.forName(driver);
        con = DriverManager.getConnection(url, "root", "trebujena");
        Statement stmt = con.createStatement();

        ResultSet rs = stmt.executeQuery(buscaMunicipiosSQL);
        if (rs.next()) {
            out.print("[\"" + rs.getString("nombre") + "\"");
            while (rs.next()) {
                out.print(", \"" + rs.getString("nombre") + "\"");
            }
            out.print("]");
        } else {
            out.print("[]");
        }
    } catch (ClassNotFoundException ex) {
        out.println("Controlador JDBC no encontrado: " + ex.toString());
    } catch (SQLException ex) {
        out.println("Excepcion capturada de SQL: " + ex.toString());
    } finally {
        try {
            if (con != null) {
                con.close();
            }
        } catch (SQLException ex) {
            out.println("No se puede cerrar la conexion: " + ex.toString());
        }
    }
%>