<%-- 
    Document   : index
    Created on : 15 Feb, 2020, 12:20:18 PM
    Author     : Nagarajan
--%>

<%@page import="database.HtmlContent"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Microlevel Analysis</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
            <script
        src="https://code.jquery.com/jquery-3.4.1.min.js"
        integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
        crossorigin="anonymous"></script>
        <style>
        .box-main{
        box-shadow: 5px 5px 10px #afafaf;
    }
    .box-padding{
            padding: 6rem 0px 50px 50px;
        }
        .header-padding{
          padding: 6rem 0 0 2.75rem;
        }
      </style>
      
      <script>
          $(document).on('change', '[id^="sem"]', function () {
                var sem = $("select#sem").val();
                var dept = $("select#dept").val();
                var batch = $("select#batch").val();
                var ayear = $("select#ayear").val();

                if (dept !== 'null' && batch !== 'null' && ayear !== 'null')
                {

                    $.get('${pageContext.request.contextPath}/jsonServlet', {
                        semester: sem,
                        department: dept,
                        batch: batch,
                        ayear: ayear

                    }, function (response) {

                        var select = $('#subject');
                        select.find('option').remove();
                        $.each(response, function (index, value) {
                            console.log(value);
                            $('<option>').val(value).text(value).appendTo(select);
                        });
                     
                    });
                }
                else{
                         console.log("Error");
                     }


            });

          
      </script>
      </head>
    <body>
         <%@include file="header.jsp" %>
      <div class="row ">
        <div class="col-md-12 text-center jumbotron">
            <div class="">
          <h3>MODEL MICROLEVEL ANALYSIS - MODEL</h3>
            </div>
        </div>
      </div>
        <div class="row box-padding">
            <div class="col-sm-3"></div>
            <div class="col-sm-6">
               <div class="row">
                 <div class="col-sm-2"></div>
                 <div class="col-sm-8 box-main">
                     <form action="Markentry.jsp">
                    <div class="form-group w-75 pt-5">
                      <label for="batch">Batch : </label>
                      <select class="form-control" name="batch" id="batch">
                          <option value="2017-2021">2017-2021</option>
                      </select>
                      <label for="acyear" class="pt-3">Academic Year : </label>
                      <select class="form-control" name="acyear" id="ayear">
                         <option value="Select" id="acyear" selected>Select</option>
                         <%=HtmlContent.getHTMLContent()%>
                      </select>
                      
                       <label for="dept" class="pt-3">Subject : </label>
                      <select class="form-control" name="dept" id="dept">
                          <option value="cse">CSE</option>
                      </select>
                       
                      <label for="sem" class="pt-3">Semester : </label>
                      <select class="form-control" id="sem" name="sem">
                          <option disabled selected>Select</option>
                          <option value="01">1</option>
                          <option value="02">2</option>
                          <option value="03">3</option>
                          <option value="04">4</option>
                          <option value="05">5</option>
                          <option value="06">6</option>
                          <option value="07">7</option>
                          <option value="08">8</option>
                      </select>
                      
                      <label for="section" class="pt-3">Section : </label>
                      <select class="form-control" id="section" >
                          <option disabled selected>Select</option>
                          <option value="a">A</option>
                          <option value="b">B</option>
                          <option value="c">C</option>
                          <option value="d">D</option>
                      </select>
                      <label for="sub" class="pt-3">Subject : </label>
                      <select class="form-control" name="subject" id="subject">
                        <option>Select</option>
                      </select>
                    </div>
                    <div class="text-center pt-2 pb-3" > <button type="submit" class="btn btn-primary header">Submit</button></div>
                   
                  </form>
                 </div>
                 <div class="col-sm-2"></div>
               </div>
            </div>
            <div class="col-sm-3"></div>
        </div>
                <%@include file="footer.jsp" %>
    </body>
</html>
