<%-- 
    Document   : PerDisp
    Created on : 15 Feb, 2020, 12:21:16 PM
    Author     : Nagarajan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Percentage Display</title>
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
</head>
<body>
    <div class="row ">
        <div class="col-md-12 text-center jumbotron">
            <div class="">
          <h3>MODEL MICROLEVEL ANALYSIS - MODEL</h3>
            </div>
        </div>
      </div>    
    <div class="row text-center  ">
        <div class="col-md-2"></div>
        <div class="col-sm-8 box-padding">
            <h3>CO - Calculation</h3>
        </div>
        <div class="col-md-2"></div>
    </div>

    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-sm-8 box-main" >
            <div class="table-responsive">
            <table class="table table-bordered text-center table-sm">
                <thead class="thead-light">
                    <tr>
                        <th>CO-1 (%)</th>
                        <th>CO-2 (%)</th>
                        <th>CO-3 (%)</th>
                        <th>CO-4 (%)</th>
                        <th>CO-5 (%)</th>
                     </tr>
                    
                </thead>
                <tbody>
                    <tr>
                        <th>${unit1}</th>
                        <th>${unit2}</th>
                        <th>${unit3}</th>
                        <th>${unit4}</th>
                        <th>${unit5}</th>
                    </tr>
                </tbody>
            </table>
        </div>
        </div>
        <div class="col-md-2"></div>
    </div>
</body>
</html>
