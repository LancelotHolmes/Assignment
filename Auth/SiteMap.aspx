<%@ Page Title="SiteMap" Language="C#" MasterPageFile="~/MasterPage_user.master" AutoEventWireup="true" CodeFile="SiteMap.aspx.cs" Inherits="SiteMap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainBody" runat="Server">

     <!--grumble CSS-->
    <link href="css/grumble.min.css" rel="stylesheet" type="text/css" />

    <div class="padding100" id="blog">
        <div class="container">
            <!--bread crump-->
            <asp:SiteMapPath ID="SiteMapPath1" runat="server" Font-Names="Verdana" Font-Size="0.8em" PathSeparator=" : ">
                <CurrentNodeStyle ForeColor="#333333" />
                <NodeStyle Font-Bold="True" ForeColor="#7C6F57" />
                <PathSeparatorStyle Font-Bold="True" ForeColor="#5D7B9D" />
                <PathSeparatorTemplate>
                    -->
                </PathSeparatorTemplate>
                <RootNodeStyle Font-Bold="True" ForeColor="#5D7B9D" />
            </asp:SiteMapPath>

            <!-- Page Heading -->
            <div class="row">
                <div class="col-lg-12">
                    <h2 class="background double animated wow fadeInUp" data-wow-delay="0.2s">
                        <span><strong>Site Map</strong></span></h2>
                </div>
            </div>
            <!-- /.row -->
            <!-- Project One -->
            <div class="row">
                <div id="div_calendar" class="col-md-6">
                    <%--<a href="#">
                        <img class="img-responsive animated wow fadeInLeft" data-wow-delay="0.2s" src="img/sitemap.jpg"
                            alt="">
                    </a>--%>
                    <asp:SqlDataSource ID="dsEvent" runat="server" ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\db_events.accdb;Persist Security Info=True" ProviderName="System.Data.OleDb"></asp:SqlDataSource>

                    <asp:Calendar ID="Calendar1" runat="server" CssClass="myCalendar" DayNameFormat="Short" Font-Names="Tahoma" Font-Size="18px"  CellPadding="0" OnDayRender="Calendar1_DayRender" OnInit="Calendar1_Init" OnSelectionChanged="Calendar1_SelectionChanged" Height="271px" Width="391px" NextMonthText="." PrevMonthText="." SelectMonthText=">>" SelectWeekText=">">
                        <OtherMonthDayStyle ForeColor="#b0b0b0" />
                        <DayStyle ForeColor="#2d3338" CssClass="myCalendarDay" />
                        <DayHeaderStyle ForeColor="#2d3338" CssClass="myCalendarDayHeader" />
                        <SelectedDayStyle  Font-Bold="true" Font-Size="19px" CssClass="myCalendarSelector" />
                        <TodayDayStyle CssClass="myCalendarToday" />
                        <SelectorStyle CssClass="myCalendarSelector" />
                        <NextPrevStyle CssClass="myCalendarNextPrev" />
                        <TitleStyle CssClass="myCalendarTitle"/>
                    </asp:Calendar>
                    <br />
                    <asp:Label ID="displayEvent" runat="server" Text="" Font-Bold="true" Font-Size="Large" Font-Names="Arial"></asp:Label>

                </div>
                <div id="div_treeview" class="col-md-6 animated wow fadeInRight" data-wow-delay="0.4s">

                    <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />

                    <asp:TreeView ID="TreeView1" runat="server" DataSourceID="SiteMapDataSource1" ImageSet="BulletedList4" Height="443px" Width="466px" Font-Size="Larger" ShowExpandCollapse="False">

                        <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
                        <NodeStyle Font-Names="Tahoma" Font-Size="20pt" ForeColor="Black" HorizontalPadding="5px" NodeSpacing="5px" VerticalPadding="0px" />
                        <ParentNodeStyle Font-Bold="False" />
                        <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" HorizontalPadding="0px" VerticalPadding="0px" />
                    </asp:TreeView>

                </div>
            </div>

        </div>
    </div>


     <script src="http://cdn.bootcss.com/jquery/1.7.2/jquery.min.js"></script>
         <!--grumble js-->
        <script src="js/jquery.grumble.min.js?v=6"></script>
        <script src="js/Bubble.js" type="text/javascript"></script>     
        <script type="text/javascript">
            $('#div_calendar').grumble({
                text: 'calendar show the events to do',
                angle: 120,
                distance: -50,
                showAfter: 2000,
                hideAfter: false,
                hasHideButton: true,
                buttonHideText: 'Pop!'
            });

            $('#div_treeview').grumble({
                text: 'tree view of the site map show a skeleton',
                angle: 120,
                distance: -550,
                showAfter: 2000,
                hideAfter: false,
                hasHideButton: true,
                buttonHideText: 'Pop!'
            });

        </script>

</asp:Content>

