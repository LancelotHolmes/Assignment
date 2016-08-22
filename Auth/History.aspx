<%@ Page Title="History" Language="C#" MasterPageFile="~/MasterPage_user.master" AutoEventWireup="true" CodeFile="History.aspx.cs" Inherits="History" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainBody" Runat="Server">

     <!--grumble CSS-->
    <link href="css/grumble.min.css" rel="stylesheet" type="text/css" />

     <div class="padding100" id="blog">
        <div id="div_history" class="container">
           <!--bread crump-->
            <div id="div_bread">
            <asp:SiteMapPath ID="SiteMapPath1" runat="server" Font-Names="Verdana" Font-Size="0.8em" PathSeparator=" : ">
                <CurrentNodeStyle ForeColor="#333333" />
                <NodeStyle Font-Bold="True" ForeColor="#7C6F57" />
                <PathSeparatorStyle Font-Bold="True" ForeColor="#5D7B9D" />
                <PathSeparatorTemplate>
                    -->
                </PathSeparatorTemplate>
                <RootNodeStyle Font-Bold="True" ForeColor="#5D7B9D" />
            </asp:SiteMapPath>
                </div>
            <!-- Page Heading -->
            <div class="row">
                <div class="col-lg-12">
                    <h2 class="background double animated wow fadeInUp" data-wow-delay="0.2s">
                        <span><strong>History</strong></span></h2>
                </div>
            </div>
            <!-- /.row -->
            <!-- Project One -->
            <div class="row">
                <div class="col-md-12 animated wow fadeInUpBig" data-wow-delay="0.2s">
                    <h3><strong>Trip & Shoot</strong></h3>                 
                    <p>
                        Trip & Shoot is a website made by Lancelot and Sen where you may share your original photos 
                        and also a place to record the moment your heart miss a beat.
                    </p>
                </div>
            </div>

        </div>
    </div>

    <script src="http://cdn.bootcss.com/jquery/1.7.2/jquery.min.js"></script>
         <!--grumble js-->
        <script src="js/jquery.grumble.min.js?v=6"></script>
        <script src="js/Bubble.js" type="text/javascript"></script>     
        <script type="text/javascript">
            $('#div_history').grumble({
                text: 'history page of this website',
                angle: 120,
                distance: -50,
                showAfter: 2000,
                hideAfter: false,
                hasHideButton: true,
                buttonHideText: 'Pop!'
            });

            $('#div_bread').grumble({
                text: 'site map path of this website',
                angle: 90,
                distance: -350,
                showAfter: 2000,
                hideAfter: false,
                hasHideButton: true,
                buttonHideText: 'Pop!'
            });

        </script>

</asp:Content>

