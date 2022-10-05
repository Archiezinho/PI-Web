﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="horarios.aspx.cs" Inherits="Happy_Mind.pages.horarios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Horarios</title>
    <style>
    body{
        width: 250px;
        margin: 0 auto;
    }
    body::-webkit-scrollbar{
        background-color: hsl(260, 18%, 10%);
    }
    body::-webkit-scrollbar-thumb{
        background-color: rgba(255, 255, 255, 0.050);
    }
    table.horario {
        width:100%;
        border: 1px solid black;
        border-collapse: collapse;
        width:250px;
        font-family: sans-serif;
    }
    table.horario tr {
        border: 1px solid black;
    }
    table.horario td,
    table.horario th{
        border: 1px solid black;
        padding: 15px;
        cursor: pointer;
    }
    table.horario th {
        text-align: center;
    }
    table.horario thead th,
    table.horario tbody th{
        background-color: hsl(260, 18%, 10%);
        color: #9b98e7;
        font-weight: normal;
        padding: 5px;
        border:none;
    }
    table.horario tr:nth-child(even){
        background-color:#9f9de0;
    }
    table.horario tr:nth-child(odd){
        background-color:#8f8ce9;
    }
    table.horario p{
        display: inline;
        text-align: center;
    }
    table.horario p.disp{
        color: rgb(0, 235, 0);
    }
    table.horario p.indisp{
        color: red;
    }
    th:hover ~ td, td:hover{
        background-color: rgba(255, 255, 255, 0.6);
    }
    th.active ~ td{
        background-color: rgba(255, 255, 255, 0.6);
    }
    </style>
</head>
<body>
    <table class="horario">
        <thead>
            <tr>
                <th>Horários</th>
                <th>Disponibilidade</th>
            </tr>
        </thead>
        <tbody>
            <tr  onclick="active('0')"> 
                <th id="h0">00:00</th>  
                <td><p></p></td>                        
            </tr>
            <tr  onclick="active('1')">
                <th id="h1">01:00</th>
                <td><p></p></td>                        
            </tr>
            <tr  onclick="active('2')">
                <th  id="h2">02:00</th>  
                <td><p></p></td>                         
            </tr>
            <tr  onclick="active('3')">
                <th id="h3">03:00</th>  
                <td><p></p></td>                        
            </tr>
            <tr  onclick="active('4')">
                <th id="h4">04:00</th>  
                <td><p></p></td>                       
            </tr>
            <tr onclick="active('5')">
                <th id="h5">05:00</th> 
                <td><p></p></td>                          
            </tr>
             <tr onclick="active('6')">
                <th id="h6">06:00</th>
                <td><p></p></td>                          
            </tr>
            <tr onclick="active('7')">
                <th id="h7">07:00</th>  
                <td><p></p></td>                        
            </tr>
            <tr onclick="active('8')">
                <th id="h8">08:00</th>  
                <td><p></p></td>              
            </tr>
            <tr onclick="active('9')">
                <th id="h9">09:00</th>
                <td><p></p></td>                     
            </tr>
            <tr onclick="active('10')">
                <th id="h10">10:00</th> 
                <td><p></p></td>                    
            </tr>
            <tr onclick="active('11')">
                <th id="h11">11:00</th>  
                <td><p></p></td>                
            </tr>
            <tr onclick="active('12')">
                <th id="h12">12:00</th>   
                <td><p></p></td>             
            </tr>
            <tr onclick="active('13')">
                <th  id="h13">13:00</th>    
                <td><p></p></td>                   
            </tr>
            <tr onclick="active('14')">
                <th id="h14">14:00</th>   
                <td><p></p></td>                   
            </tr>
            <tr onclick="active('15')">
                <th id="h15">15:00</th>  
                <td><p></p></td>                      
            </tr>
            <tr onclick="active('16')">
                <th id="h16">16:00</th>  
                <td><p></p></td>                        
            </tr>
            <tr onclick="active('17')">
                <th id="h17">17:00</th>  
                <td><p></p></td>                 
            </tr>
            <tr onclick="active('18')">
                <th id="h18">18:00</th> 
                <td><p></p></td>                    
            </tr>
            <tr onclick="active('19')">
                <th id="h19">19:00</th>  
                <td><p></p></td>                 
            </tr>
            <tr onclick="active('20')">
                <th>20:00</th>  
                <td><p id="h20"></p></td>                   
            </tr>
            <tr onclick="active('21')">
                <th id="h21">21:00</th> 
                <td><p></p></td>                     
            </tr>
            <tr onclick="active('22')">
                <th id="h22">22:00</th>   
                <td><p></p></td>     
            </tr>
            <tr onclick="active('23')">
                <th id="h23">23:00</th>     
                <td><p></p></td>                 
            </tr>
        </tbody>
    </table>

<script>
    let conthora = 0;
    function horarios(){
        while(conthora <24){
            if(document.getElementById('h'+conthora).textContent == 'Disponivel'){
                document.getElementById('h'+conthora).classList.add('disp');
            }
            else{
                document.getElementById('h'+conthora).classList.add('indisp');
            }
            conthora ++;
        }
    }
    let varhora = 24;
    function active(hora) {
        if (varhora != 24) {
            document.getElementById('h'+ varhora).classList.remove('active');
        }
        document.getElementById('h'+ hora).classList.toggle('active');
        varhora = hora;
    }
</script>
</body>
</html>
