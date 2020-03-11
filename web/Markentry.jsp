<%-- 
    Document   : Markentry
    Created on : 15 Feb, 2020, 12:20:52 PM
    Author     : Nagarajan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <title>Mark Entry</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
    <style>
        .box-padding{
            padding: 50px 0px 50px 50px;
        }
        .box-main{
        box-shadow: 5px 5px 10px #afafaf;
        }
        
    </style>
    
    <script>
        function changetxt() {
            var txt = document.getElementById('section').value;
            console.log(txt);
        }
        $('.alert').alert()
        function test() {
            var regex = /^[0-9]{12}$/;
            var regNo = document.getElementById('registerNo').value;

            if (regex.test(regNo) !== true) {
                window.alert("Enter Correct Register Number !");
                console.log(regNo);
            }
            else
                document.getElementById('markEntry').submit();
        }
    </script>
</head>

<body>  
    <div class="row ">
        <div class="col-md-12 text-center jumbotron">
            <div class="">
          <h3>MODEL MICROLEVEL ANALYSIS - MODEL</h3>
            </div>
        </div>
      </div>
 
    
    <form id="markEntry" action="PerDisp" method="post">
        <div class="row box-padding">
        <div class="col-sm-3"></div>
        <div class="col-sm-6">
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-8">
  <%    String batch = request.getParameter("batch");
        String ayear = request.getParameter("ayear");
        String sem = request.getParameter("sem");
        String dept = request.getParameter("dept");
        String sub =request.getParameter("subject");
        String parts[] = sub.split("-");
        String subcode = parts[0];
        String subname = parts[1];
        //System.out.println(sem+subname+subcode);
        request.setAttribute("sem",sem);
        request.setAttribute("subcode",subcode);
        request.setAttribute("subname",subname);
  %>
                    
                        <div class="form-group">

                            <label for="registerNo">Register Number :</label>
                            <input type="number" class="form-control" id="registerNo" 
                                placeholder="Enter Register Number" name="registerNo" required>
<!--                             <div class="alert alert-info alert-dismissible fade show" role="alert">
                               Enter Correct <strong>Register Number</strong> 
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                  <span aria-hidden="true">&times;</span>
                                </button>
                              </div>-->
                               <input type="hidden" name="sem" value="<%=sem%>" >
                               <input type="hidden" name="subcode" value="<%=subcode%>">
                               <input type="hidden" name="subname" value="<%=subname%>">
                        </div>
                   
                </div>
                <div class="col-sm-2"></div>
            </div>
        </div>
        <div class="col-sm-3"></div>
    </div>
    <div class="row">
        <div class="col-sm-6 box-padding">
            <div class="row">
                <div class="col-sm-3"></div>
                <div class="col-sm-8 ">
                    <h2>Part A (2 Marks)</h2>
                    
                        <table class="table">
                            <thead class="thead-light">
                                <tr>
                                    <th>Question No</th>
                                    <th>Enter Marks</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>1</th>
                                    <th><input type="number" id="1" name="1" required></th>
                                </tr>
                                <tr>
                                    <th>2</th>
                                    <th><input type="number" id="2" name="2" required></th>
                                </tr>
                                <tr>
                                    <th>3</th>
                                    <th><input type="number" id="3" name="3" required></th>
                                </tr>
                                <tr>
                                    <th>4</th>
                                    <th><input type="number" id="4" name="4" required></th>
                                </tr>
                                <tr>
                                    <th>5</th>
                                    <th><input type="number" id="5" name="5" required></th>
                                </tr>
                                <tr>
                                    <th>6</th>
                                    <th><input type="number" id="6" name="6" required></th>
                                </tr>
                                <tr>
                                    <th>7</th>
                                    <th><input type="number" id="7" name="7" required></th>
                                </tr>
                                <tr>
                                    <th>8</th>
                                    <th><input type="number" id="8" name="8" required></th>
                                </tr>
                                <tr>
                                    <th>9</th>
                                    <th><input type="number" id="9" name="9" required></th>
                                </tr>
                                <tr>
                                    <th>10</th>
                                    <th><input type="number" id="10" name="10" required></th>
                                </tr>
                            </tbody>
                        </table>
                        
                    

                </div>
                <div class="col-sm-1"></div>
            </div>
        </div>
        <div class="col-sm-6 box-padding">
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-8 ">
                    <h2>Part B (13 Marks)</h2>
                    
                        <table class="table">
                            <thead class="thead-light">
                                <tr>
                                    <th>Question No</th>
                                    <th>Enter Marks</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>11</th>
                                    <th><input type="number" id="11" name="11" required></th>
                                </tr>
                                <tr>
                                    <th>12</th>
                                    <th><input type="number" id="12" name="12" required></th>
                                </tr>
                                <tr>
                                    <th>13</th>
                                    <th><input type="number" id="13" name="13" required></th>
                                </tr>
                                <tr>
                                    <th>14</th>
                                    <th><input type="number" id="14" name="14" required></th>
                                </tr>
                                <tr>
                                    <th>15</th>
                                    <th><input type="number" id="15" name="15" required></th>
                                </tr>
                               
                                <tr>
                                    <th>16 (Part C)</th>
                                    <th>
                                        <select id="optional" name="optional" required>
                                            <option disabled selected>select</option>
                                            <option value="u1">Unit 1</option>
                                            <option value="u2">Unit 2</option>
                                            <option value="u3">Unit 3</option>
                                            <option value="u4">Unit 4</option>
                                            <option value="u5">Unit 5</option>

                                        </select>
                                        <input type="number" id="16" name="16" required>
                                    </th>
                                </tr>

                            </tbody>
                        </table>
                        <div class="text-center" >
                            <button type="button" class="btn btn-primary btn-block" style="padding-bottom: 5px" onclick="test()">Submit</button>
                        </div>
                </div>
                <div class="col-sm-3"></div>
            </div>
        </div>

    
</form>
</body>

</html>