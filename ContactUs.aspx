<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="SharzulWeb.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/ContactUs.css" rel="stylesheet" type="text/css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="Title-container">
			<h1>Vision & Mission</h1>
		</div>
    <div style="height:600px; width: 100%;background-color:white;">
        <div class="contactcontainer">
            <h1>Contact Details</h1>
            <p>
                Head Office
                Bangladesh Krishi Bank
                Krishi Bank Bhaban
                83-85 Motijheel Commercial Area
                Dhaka – 1000, Bangladesh
            </p>
            <p>
                Hunting Number: (+88 02) 956 0021
            </p>
            <p>
                FAX: (+88 02) 956 1211
            </p>
            <p>
                cipc@krishibank.org.bd
            </p>
        </div>
        <div class="contactcontainer">
            <h1>Get In Touch With Us</h1>
            <input type="text" placeholder="Your name"/>
            <input type="text" placeholder="Email"/>
            <input type="text" placeholder="Phone Number"/>
            <input style="height:100px;" type="text" placeholder="Massage"/>
            <input style="width:100px;cursor:pointer" type="submit" placeholder="Submit"/>
        </div>
    </div>
</asp:Content>
