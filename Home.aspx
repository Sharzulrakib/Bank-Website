<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="SharzulWeb.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/Home.css" rel="stylesheet" type="text/css"/> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="SlideContainer">
			<div id="Slide">
				<img src="Images/slide1.jpg">
				<img src="Images/slide2.jpg">
				<img src="Images/slide3.jpg">
			</div> 
            <div class="loginContainer" id="loginContainer" runat="server">
                <p style="color:red; display:none" id="Invalid" runat="server">You Don't Have Any Account.Please Sign Up</p>
                <h1>Login</h1>
                <label>Email</label>
                <input id="Email" runat="server" type="text" placeholder="Enter your Email"/>
                <label>Password</label>
                <input id="Password" runat="server" type="password" placeholder="Enter your password"/>
                <input onserverclick="Login" runat="server" type="submit" value="Login"/>
            </div>
            <div class="DetailsContainer" id="DetailsContainer" runat="server">
                <h1 id="Name" runat="server">Name</h1>
                <h1 id="Branch" runat="server">Branch</h1>
                <label id="Balance" runat="server">Balance</label>
                <h1 id="Amount" runat="server">Amount</h1>
                <input  onserverclick="Logout" runat="server" type="submit" value="Log Out"/>
            </div>
		</div>
		
		<div id="Welcome">
			<div id="CardContainer">
				<a style="background-color: rgba(51, 102, 255, 0.7)" class="Cards"> 
				</a>
				<a style="background-color: rgba(51, 153, 255, 0.7)" class="Cards">
				</a>
				<a style="background-color: rgba(51, 102, 255, 0.7)" class="Cards">
				</a>
				<a style="background-color: rgba(51, 153, 255, 0.7)" class="Cards">
				</a>
			</div>
			<h1>WELCOME TO YES BANK</h1>
			<div style="height:7px; width: 100px; background-color:#0066ff; margin: 10px 0;"></div>
				<p>Bangladesh Krishi Bank, the largest specialized bank of the country, was established under the President Order No. 27 of 1973 to finance climate-dependent uncertain and risky agriculture sector. Bangladesh Krishi Bank (BKB) performs all sorts of banking activities including deposit, loan and foreign exchange transactions. Nearly 295 out of its 1031 branches are online and through 388 automated branches it delivers foreign remittance received from the expatriates of any country to their dear one’s doorsteps rapidly. It offers round the clock banking service in Dhaka, Chittagong, Sylhet, Khulna and Mymensingh divisional city through its 06 ATM booths. Besides Bank’s own ATM booths, BKB Debit Card can easily be used to withdraw money from ATM booths of any bank and any Point Of Sales for shopping. Krishi Bank’s own mobile banking service named ‘Bangla Cash’ is to commence very soon under Mobile Financial Services (MFS). Bangladesh Krishi Bank is steps advanced in digitalization in order to offer modern and up to the mark banking facilities.
				<br><br>
				The Head Office of BKB is located at Krishi Bank Bhaban,83-85 Motijheel Commercial Area, Dhaka-1000, Bangladesh.</p>	
			</div>
			<div id="Notice">
				<h1>Notice & Circular</h1>
				<div id="Notice-container">
					<div class="Notices">
						<h3>Yes Bank</h3>
						<p>Bangladesh Krishi Bank, the largest specialized bank of the country, was established under the President Order No. 27 of 1973 to finance climate-dependent uncertain and risky agriculture sector. Bangladesh Krishi Bank (BKB) performs all sorts of banking activities including deposit, loan and foreign exchange transactions. Nearly 295 out of its 1031</p>
						<a href="">Read More</a>
					</div>
					<div class="Notices">
						<h3>Title</h3>
						<p>Description</p>
						<a href="">Read More</a>
					</div>
					<div class="Notices">
						<h3>Title</h3>
						<p>Description</p>
						<a href="">Read More</a>
					</div>
					<div class="Notices">
						<h3>Title</h3>
						<p>Description</p>
						<a href="">Read More</a>
					</div>

				</div>
			</div>
    <script src="Javascript/Home.js"></script>
</asp:Content>
