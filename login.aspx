<%@ Page Title="Login" Language="C#" MasterPageFile="~/MasterPage_user.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="preview_dotnet_templates_the_big_picture_login" %>

<asp:Content ID="loginConten" ContentPlaceHolderID="MainBody" runat="Server">
    <asp:AccessDataSource ID="UserLogin" runat="server" DataFile="~/App_Data/database.accdb" SelectCommand="SELECT * FROM [user]" OnSelected="CheckLogin" />
    <!-- Bootstrap Core CSS -->
    <link href="css/css/bootstrap1.min.css" rel="stylesheet" />
    <!-- Custom CSS -->
    <link href="css/css/the-big-picture.css" rel="stylesheet" />
    <link href="css/css/font-icon.css" rel="stylesheet" type="text/css" />
    <link href="css/css/main.css" rel="stylesheet" type="text/css" />
    <link href="css/css/responsive.css" rel="stylesheet" type="text/css" />
    <!-- ============ Google fonts ============ -->
    <link href='http://fonts.googleapis.com/css?family=EB+Garamond' rel='stylesheet'
        type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700,300,800'
        rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" />

     <!--grumble CSS-->
    <link href="css/grumble.min.css" rel="stylesheet" type="text/css" />

    <div class="container padding100 full">

        <div id="div_login" class="col-lg-offset-3 col-lg-6 col-lg-offset-3 col-xs-offset-0 col-xs-12 col-xs-offset-0 padding-top50">

           <div class="registrationform">
                <asp:Login ID="Login" runat="server" OnAuthenticate="Login_Authenticate">
                    <LayoutTemplate>
                        <h1 class="text-left">Log in to your app</h1>             
                            <div class="form-group">
                                <asp:TextBox ID="UserName" CssClass="form-control" runat="server" placeholder="User name"></asp:TextBox>
                                <span class="icon fa fa-user fa-lg"></span>
                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="ctl02" />
                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="Password" CssClass="form-control" runat="server" TextMode="Password" placeholder="password"></asp:TextBox>
                                <span class="icon fa fa-unlock fa-lg"></span>
                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="ctl02" />
                            </div>
                            <div class="form-group text-left">
                                <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                            </div>
                            <div class="form-group">
                                <asp:Button ID="LoginButton" runat="server" CssClass="btn btn-default" CommandName="Login" Text="Log In" ValidationGroup="ctl02" />
                        
                            </div>
                    </LayoutTemplate>
                </asp:Login>

            </div>
        </div>
    </div>

    <script src="http://cdn.bootcss.com/jquery/1.7.2/jquery.min.js"></script>
         <!--grumble js-->
        <script src="js/jquery.grumble.min.js?v=6"></script>
        <script src="js/Bubble.js" type="text/javascript"></script>     
        <script type="text/javascript">
            $('#div_login').grumble({
                text: 'This is the Login form of our website',
                angle: 120,
                distance: 3,
                showAfter: 2000,
                hideAfter: false,
                hasHideButton: true,
                buttonHideText: 'Pop!'
            });

        </script>

</asp:Content>
