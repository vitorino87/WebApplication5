<%-- 
    Document   : index
    Created on : 10/11/2016, 09:59:24
    Author     : tiago.lucas

--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            //serve para pegar o caminho 
            out.println("Working Directory = " +
              System.getProperty("user.home"));
            String a =  System.getProperty("user.dir");
            //serve para pegar o caminho similar ao de cima, mas utiliza o prompt de comando do Windows
            Process b;
            b = Runtime.getRuntime().exec("cmd /C cd");
            java.io.BufferedReader in = new java.io.BufferedReader(
                    new java.io.InputStreamReader(b.getInputStream()));
            String line = null;
            while((line=in.readLine())!=null)
            {
                System.out.println(line);
            }
            //serve para pegar o caminho similar ao de cima
            try {
			System.out.println("/  -> " + new java.io.File("/").getCanonicalPath());
			System.out.println(".. -> " + new java.io.File("..").getCanonicalPath());
			System.out.println(".  -> " + new java.io.File(".").getCanonicalPath());
		} catch (java.io.IOException e) {
			e.printStackTrace();
		}
            b = Runtime.getRuntime().exec("cmd /C \"C:\\Program Files (x86)\\Mozilla Firefox\\firefox.exe\" http://localhost:8080");
            org.openide.filesystems.FileObject file;
           // file = ;
          //  file.getFileSystem().toString();
            
        %>
        <input type="text" name="test" size="20"/> 
        <p>Caminho: <%=a%></p>
    </body>
</html>
