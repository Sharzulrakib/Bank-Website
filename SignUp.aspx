<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="SharzulWeb.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #container {
            height:500px;
            width:100%;
            background-color:white;
            padding: 0 400px;
            text-align:center;
            display:flex;
            justify-content:center;
            align-items:center;
            flex-direction: column;
        }
            #container label {
                margin: 10px 0;
                height: 20px;
                color: orangered;
            }
            #container input {
                margin: 10px 0;
                height: 50px;
                border-radius:5px;
                border: 1px solid blue;
                padding:10px;
                width: 400px;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="container">
        <p style="display:none; color: red" id="Invalid" runat="server">You Do Not Have Any Account In Our Bank. Please Go To Nearest AB Bank Branch And Open An Account</p>
        <label>Enter Your Email</label>
        <input id="email" runat="server" type="text" placeholder="Email"/>
        <label>Enter Your Account No.</label>
        <input id="accNo" runat="server" type="text" placeholder="Account No."/>
        <label>Enter New Password</label>
        <input id="pass" runat="server" type="password" placeholder="New Passoword"/>
        <input runat="server" onserverclick="signup" style="width:200px; cursor:pointer; float:right" type="submit" value="Sign Up"/>
    </div>
</asp:Content>
