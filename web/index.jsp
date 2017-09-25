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
        <title>Salary Calculator</title>
    </head>
    <body>
        <h1>Salary Calculator</h1>
        
        <form name='Salary Calculator' action='results.jsp' method='post'>
        <table>
            <tbody>
                <tr>
                    <td>Hours Worked:</td>
                    <td><input type='text' name='hours worked' value='' size=''</td>
                </tr>
                
                <tr>
                    <td>Hourly Pay:</td>
                    <td><input type='text' name='hourly pay' value='' size=''</td>
                </tr>
                
                <tr>
                    <td>Pre-tax Deduct</td>
                    <td><input type='text' name='pre-tax deduction' value='' size=''</td>
                </tr>
                
                <tr>
                    <td>Post-tax Deduct:</td>
                    <td><input type='text' name='post-tax deduction' value='' size=''</td>
                </tr>
            </tbody>
        </table>
            
            <input type='reset' value='Clear' id='clear'>
            <input type='submit' value='Submit' id='submit'>
        </form>
    </body>
</html>
