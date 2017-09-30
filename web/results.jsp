

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Results</title>
        <link rel = 'stylesheet' type = 'text/css' href = 'HW3style.css'/>
    </head>
    
    <%
        double hrs_worked = Double.parseDouble(request.getParameter("hrs_worked"));
        double hr_pay = Double.parseDouble(request.getParameter("hr_pay"));
        double pre_tax_deduction = Double.parseDouble(request.getParameter("pre_tax_deduction"));
        double post_tax_deduction = Double.parseDouble(request.getParameter("post_tax_deduction"));
        
        double ot_hrs = 1.0;
        double ot_pay_rate = 1.0;
        double ot_pay = 1.0;
        double reg_pay = 1.0;
        double gross_pay = 1.0;
        double tax_amt = 1.0;
        double taxable_pay = 1.0;
        double post_tax_pay = 1.0;
        double net_pay = 1.0;
        
        if (hrs_worked > 40){
            double reg_hrs = 40.0;
            ot_hrs = hrs_worked - 40.0;
            ot_pay_rate = hr_pay *1.5;
            ot_pay = ot_hrs * ot_pay_rate;
            reg_pay = reg_hrs * hr_pay;
            gross_pay = reg_pay + ot_pay;
        }
        else{
            gross_pay = hrs_worked * hr_pay;
        }
        
        taxable_pay = gross_pay - pre_tax_deduction;
        
        if (gross_pay < 500){
            tax_amt = taxable_pay * .18;
        }
        else{
            tax_amt = taxable_pay * .22;
        }
        
        post_tax_pay = taxable_pay - tax_amt;
        net_pay = post_tax_pay = post_tax_deduction;
        
            
        %>
    
    <body>
        <h1>Salary Results</h1>
        
                <table>
            <tbody>
                <tr>
                    <td>Total Hours Worked:</td>
                    <td><%= hrs_worked%></td>
                </tr>
                
                <tr>
                    <td>Hourly Pay:</td>
                    <td><%= hr_pay%></td>
                </tr>

                <tr>
                    <td>Number of Hours Overtime:</td>
                    <td><%= ot_hrs%></td>
                </tr>
                
                <tr>
                    <td>Overtime Hourly Rate:</td>
                    <td><%= ot_pay_rate%></td>
                </tr>
                
                <tr>
                    <td>Gross Pay:</td>
                    <td><%= gross_pay%></td>
                </tr>
                                <tr>
                    <td>Pre-tax Deduct:</td>
                    <td><%= pre_tax_deduction%></td>
                </tr>
                
                <tr>
                    <td>Pre-tax Pay:</td>
                    <td><%= taxable_pay%></td>
                </tr>
                
                <tr>
                    <td>Tax Amount:</td>
                    <td><%= tax_amt%></td>
                </tr>
                
                <tr>
                    <td>Post-tax Pay</td>
                    <td><%= post_tax_pay%></td>
                </tr>-->--%>
                
                <tr>
                    <td>Post-tax Deduct:</td>
                    <td><%= post_tax_deduction%></td>
                </tr>
                
                <tr>
                    <td>Net Pay:</td>
                    <td><%= net_pay%></td>
                </tr

            </tbody>
        </table>
        
        
    </body>
</html>
