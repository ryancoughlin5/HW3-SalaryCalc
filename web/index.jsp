<%-- 
    Document   : index
    Created on : Sep 25, 2017, 3:06:44 PM
    Author     : Ryan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Simple Salary Calculator</title>
        <link rel = 'stylesheet' type = 'text/css' href = 'HW3style.css'/>
    </head>
    <body>
        <h1>Simple Salary Calculator</h1><hr><br><br>

        <form name='Salary Calculator' action='results.jsp' method='post'>
        
        <table class="center">
            <tbody class="align">
            
                <tr>
                    <td>Hours Worked:</td>
                    <td><input type='text' name='hours worked' value='' size=''</td>
                </tr>
                
                <tr>
                    <td>Hourly Pay:</td>
                    <td><input type='text' name='hourly pay' value='' size=''</td>
                </tr>
                
                <tr>
                    <td>Pre-tax Deduct:</td>
                    <td><input type='text' name='pre_tax_deduction' value='' size=''</td>
                </tr>
                
                <tr>
                    <td>Post-tax Deduct:</td>
                    <td><input type='text' name='post_tax_deduction' value='' size=''</td>
                </tr>
            </tbody>
            
        </table>
            
            <div id="buttonholder"><br>
            <input type='reset' value='Clear' id='clear'>
            <input type='submit' value='Submit' id='submit'>
            </div>

        </form>
    </body>
</html>