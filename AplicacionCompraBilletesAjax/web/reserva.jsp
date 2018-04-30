<!DOCTYPE html>
<html>
    <head>
        <title>Renfe</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <%
            String origen = request.getParameter("origen");
            String destino = request.getParameter("destino");
            String salida = request.getParameter("salida");
            String hSalida = request.getParameter("hSalida");
            if (hSalida.equals("Manana")) {
                hSalida = "Mañana";
            }
            String regreso = request.getParameter("regreso");
            String hRegreso = request.getParameter("hRegreso");
            if (hRegreso.equals("Manana")) {
                hRegreso = "Mañana";
            }
            String adultos = request.getParameter("adultos");
            String ninos13 = request.getParameter("ninos13");
            String ninos4 = request.getParameter("ninos4");
        %>
        <style type="text/css">
            body {font-family: Arial, Helvetica, sans-serif;}
            #sugerenciasOrigen {width: 200px; border: 1px solid black; background-color: #FFFFFF; display: none; position: fixed;}
            #sugerenciasOrigen ul {list-style: none; margin: 0; padding: 0; font-size: .85em;}
            #sugerenciasOrigen ul li {padding: .2em; border-bottom: 1px solid silver;}
            #sugerenciasDestino {width: 200px; border: 1px solid black; background-color: #FFFFFF; display: none; position: fixed;}
            #sugerenciasDestino ul {list-style: none; margin: 0; padding: 0; font-size: .85em;}
            #sugerenciasDestino ul li {padding: .2em; border-bottom: 1px solid silver;}
            .seleccionado {font-weight: bold; background-color: #8a0072; color: #FFFFFF}
        </style>
    </head>
    <body bgcolor="#e1e2d8">
        <table border="0" align="center" style="border-width: 0px; border-spacing: 5px;">
            <tr>
                <td align="center" bgcolor="white" style="border-radius: 7px;"><img src="images/Titulo.png" /></td>
            </tr>
            <tr>
                <td align="center" bgcolor="white" style="border-radius: 7px; padding: 5px 15px;">
                    <table width="100%" border="0" align="center">
                        <tr>
                            <td><b>ORIGEN</b></td>
                            <td align="center">
                                <%= origen%>
                            </td>
                        </tr>
                        <tr>
                            <td><b>DESTINO</b></td>
                            <td align="center">
                                <%= destino%>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td bgcolor="white" style="border-radius: 7px; padding: 5px 15px;">
                    <table width="100%" border="1" align="center" style="border-width: 0px;">
                        <tr>
                            <td colspan="2" style="border-width: 0px 2px 0px 0px; border-style: dotted;"><b>FECHA DEL VIAJE</b></td>
                            <td colspan="3" style="border-width: 0px;"><b>HORARIOS</b></td>
                        </tr>
                        <tr>
                            <td colspan="5" style="border-width: 2px 0px 0px 0px; border-style: dotted;"></td>
                        </tr>
                        <tr>
                            <td rowspan="2" align="right" style="border-width: 0px;"><b>SALIDA</b></td>
                            <td rowspan="2" align="center" style="border-width: 0px;"><%= salida%></td>
                            <td align="center" style="border-width: 0px;"></td>
                            <td align="center" style="border-width: 0px;"></td>
                            <td align="center" style="border-width: 0px;"></td>
                        </tr>
                        <tr>
                            <td align="center" style="border-width: 0px;"></td>
                            <td align="center" style="border-width: 0px;"><%= hSalida%></td>
                            <td align="center" style="border-width: 0px;"></td>
                        </tr>
                        <tr>
                            <td colspan="5" style="border-width: 2px 0px 0px 0px; border-style: dotted;"></td>
                        </tr>
                        <tr>
                            <td rowspan="2" align="right" style="border-width: 0px;"><b>REGRESO</b></td>
                            <td rowspan="2" align="center" style="border-width: 0px;"><%= regreso%></td>
                            <td align="center" style="border-width: 0px;"></td>
                            <td align="center" style="border-width: 0px;"></td>
                            <td align="center" style="border-width: 0px;"></td>
                        </tr>
                        <tr>
                            <td align="center" style="border-width: 0px;"></td>
                            <td align="center" style="border-width: 0px;"><%= hRegreso%></td>
                            <td align="center" style="border-width: 0px;"></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td bgcolor="white" style="border-radius: 7px; padding: 5px 15px;">
                    <table width="100%" border="1" align="center" style="border-width: 0px; border-collapse: collapse;">
                        <tr>
                            <td colspan="2" align="center" style="border-width: 0px 2px 0px 0px; border-style: dotted;"><b>ADULTOS</b></td>
                            <td colspan="2" align="center" style="border-width: 0px 2px 0px 0px; border-style: dotted;"><b>NIÑOS 4-13</b></td>
                            <td colspan="2" align="center" style="border-width: 0px;"><b>NIÑOS &lt;4</b></td>
                        </tr>
                        <tr>
                            <td align="right" style="border-width: 0px;"><img src="images/Adultos.png" /></td>
                            <td align="center" style="border-width: 0px 2px 0px 0px; border-style: dotted;">
                                <%= adultos%>
                            </td>
                            <td align="right" style="border-width: 0px"><img src="images/Ninios13.png" /></td>
                            <td align="center" style="border-width: 0px 2px 0px 0px; border-style: dotted;">
                                <%= ninos13%>
                            </td>
                            <td align="right" style="border-width: 0px"><img src="images/Ninios4.png" /></td>
                            <td align="center" style="border-width: 0px;">
                                <%= ninos4%>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </body>
</html>