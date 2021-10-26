<%-- 
    Document   : DetailFeedback
    Created on : Oct 25, 2021, 4:24:38 AM
    Author     : HP
--%>

<%@page import="models.Cart"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">       
        <link href="https://use.fontawesome.com/releases/v5.0.4/css/all.css" rel="stylesheet">    
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">
        </script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js">
        </script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
        <style>
            body {
                margin-top: 20px;padding: 0;
                background: #FFFFFF;
                text-align: justify;
                font-family: "Helvetica Neue", "Lucida Grande", "Segoe UI", Arial, Helvetica, Verdana, sans-serif;
                font-size:  0.875em;
                color: #616161;	/*xám*/
            }

            h1 {
                padding-top: 10px;
                padding-bottom: 50px;
                padding-left: 50px;
                color: #000000;
                font-weight: normal;
                font-size: 2em;
            }

            p {
                font-size: 14px; 
                font-weight: bold;
            }

            /* Menu */

            #menuContaniner {
                width: 500px;
                float: right;
                margin: -60px 0 0 0;
                background-color:#FFFFFF;/* trắng */
            }
            ul.main_nav {
                margin: 0 auto;
                margin-left: -150px;	
                padding: 0;
                list-style: none;
                height: 50px;
            }

            ul.main_nav li {
                border-right: 1px solid #BCBCBC;
                float: left;
                position: relative;
                text-align: center;
                margin: 0;padding: 0;
                display: inline;
                height: 45px;
                padding-top: 5px;
            }
            ul.main_nav li a {
                color: #000000;
                width: 100px;
                padding: 10px;
                text-decoration: none;
                display: block;
            }

            /* Content */

            #mainContainer {
                width: 1200px;
                height:100%;
                margin: 60px auto;
                padding: 20px 5px;
                background: #FFFACD;
                boder:10px solid black;
            }

            /* about */
            div.about {
                text-align: center;
            }

        </style>

        <%
            HttpSession s = request.getSession(true);
            String us = (String) s.getAttribute("username");
            String admin = (String) s.getAttribute("admin");

            ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart_list");

            if (cart_list != null) {
                request.setAttribute("cart_list", cart_list);
            }
        %>
    </head>
    <body>
        <!-- START HEADER -->
        <div id="header" style="width: 1000px; height: 100px; margin: 0 auto; background-color:#FFFFFF; border: none solid #8C0209;">
            <div>
                <h1 style="float:left; margin-left:15px; font-size:40px;">
                    <span style=""><a href="home" style="text-decoration: none;color:#DAA520">LapTop</a> </span><span style=""><a href="home" style="text-decoration: none;color:#000000">Gaming</a></span>
                </h1>
                <p style="float:left;margin-top: 70px;font-weight: 900px;margin-left: 5px;word-spacing: 2px;color:black;font-size:15px;">
                    LapTopGaming Store
                </p>
            </div>
        </div>


        <!-- END HEADER -->

        <!-- START MENU -->
        <section id="menuContaniner">
            <ul class="main_nav">

                <% if (us != null) {%>
                <li ><a  href="about" >About</a></li>
                <li ><a  href="userinfo">Account</a></li>

                <% if (admin != null) {%>
                <li ><a  href="ListPostServlet">Manager Post</a></li>
                <li ><a  href="OrderList">Manager Order</a></li>
                <li ><a  href="manager" style="color:green;">Manager account</a></li>
                <li ><a  href="manageritem">Manager Product</a></li>
                <li ><a  href="FeedbackListServlet">Manager Feedback</a></li>
                    <%} else {%>
                <li ><a  href="ListPostServlet">Post</a></li>
                <li ><a  href="mycart">Cart<span class="badge badge-danger">${cart_list.size()}</span></a></li>
                <li ><a  href="shop">Shop</a></li>
                <li ><a  href="myorder">My Order</a></li><%}%>
                <li ><a  href="logout">Logout</a></li>
                    <%} else {%>
                <li ><a  href="about">About </a></li>
                <li ><a  href="shop" style="color:green;">Shop</a></li>
                <li ><a  href="login">Login</a></li>
                <li ><a  href="register">Register</a></li>
                <li ><a  href="contact">Contact</a></li>
                    <%}%>
            </ul>
        </section>		
        <!-- END MENU -->

        <!-- START CONTENT PAGE -->
        <section id="mainContainer">
            <div class="about" >
                <h2 style="font-size:50px;font-family:Time New Roman">Feed back của "${userDetail.username}"</h2>

                <div class="container">
                    <div class="row">
                        <div class="col-sm">
                            <h3>Người dùng:</h3>
                        </div>
                        <div class="col-sm info">
                            <p style="color: #32CD32; font-size: 16px">${userDetail.username}</p>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm">
                            <h3>Email:</h3>
                        </div>
                        <div class="col-sm info">
                            <p style="color: #32CD32; font-size: 16px">${userDetail.email}</p>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm">
                            <h3>Phone:</h3>
                        </div>
                        <div class="col-sm info">
                            <p style="color: #32CD32; font-size: 16px">${userDetail.phone}</p>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm">
                            <h3>Gender</h3>
                        </div>
                        <div class="col-sm info">
                            <p style="color: #32CD32; font-size: 16px">${userDetail.gender}</p>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm">
                            <h3>Address</h3>
                        </div>
                        <div class="col-sm info">
                            <p style="color: #32CD32; font-size: 16px">${userDetail.address}</p>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm">
                            <h3 >Nội dung:</h3>
                        </div>
                        <div class="col-sm info">
                            <p style="color: red; font-size: 20px">${feedback.message}</p>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm">
                            <h3>Ngày gửi:</h3>
                        </div>
                        <div class="col-sm info">
                            <p style="color: #8C0209; font-size: 16px">${feedback.createAt}</p>
                        </div>
                    </div>

                </div>

            </div>
        </section>
        <!-- end page -->

        <!-- start Footer-->
        <div id="footer" style="height: 250px; margin: 0 auto;padding: 0 20px;
             background-color: #D3D3D3; border: none solid #8C0209;">
            <p style="float:left; margin:70px; font-size:60px;"> <span style="color:#DAA520">LapTop</span><span style="color:#000000">Gaming</span>
            </p>

            <p style="float:left;margin-top:170px;margin-left:-350px;">
                <a href="https://www.instagram.com/clongcena11/"><img src="src/ins.png" style="width:65px; height:65px;"></img>
                    <a href="https://www.facebook.com/long.chu.71653"><img src="src/fb.png" style="width:65px; height:65px;"></img>

                        </p>
                        <p style="float:right;margin:40px;text-align:left;font-size:15px;margin-right:190px;">
                            <b>Our Story</b><br /><br />
                            <span style="color:#556B2F;">LapTopGaming not only brings customers the latest and highest quality genuine products, but <br/>
                                also a place for customers to experience products comfortably under the advice of trained staff and technicians. repertoires. . The difference of LapTopGaming is also separate after-sales policies such as Gold Warranty: 
                                <br />  Warranty for both drops, water damage, 1-for-1 policy within 30 days <br/>   
                            </span>
                            </div>
                            <!-- end page -->
                            </body>
                            </html>
