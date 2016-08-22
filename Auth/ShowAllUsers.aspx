<%@ Page Title="All Users List" Language="C#" MasterPageFile="~/MasterPage_user.master" AutoEventWireup="true" CodeFile="ShowAllUsers.aspx.cs" Inherits="Auth_ShowAllUsers" %>
<asp:Content ID="loginConten" ContentPlaceHolderID="MainBody" runat="Server">
    <link href="../css/gridview.css" rel="stylesheet" type="text/css" />
     <!--grumble CSS-->
    <link href="css/grumble.min.css" rel="stylesheet" type="text/css" />

    <div id="div_showall" class="padding100 container" style="">
    <p><asp:label runat="server" Font-Size="XX-Large">The following is all users</asp:label></p>
    <asp:AccessDataSource ID="UserShow" runat="server" DataFile="~/App_Data/database.accdb" SelectCommand="SELECT * FROM [user]"></asp:AccessDataSource>
    <asp:GridView runat="server" ID="gvuser" CssClass="GridViewStyle" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="UserShow" OnRowCommand="Dispalyuser">
        <FooterStyle CssClass="GridViewFooterStyle" />
        <RowStyle CssClass="GridViewRowStyle" />   
        <SelectedRowStyle CssClass="GridViewSelectedRowStyle" />
        <PagerStyle CssClass="GridViewPagerStyle" />
        <AlternatingRowStyle CssClass="GridViewAlternatingRowStyle" />
        <HeaderStyle CssClass="GridViewHeaderStyle" HorizontalAlign="Center" />
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" InsertVisible="False" SortExpression="ID"></asp:BoundField>
            <asp:BoundField DataField="username" HeaderText="username" SortExpression="username"></asp:BoundField>
            <asp:BoundField DataField="password" HeaderText="password" SortExpression="password"></asp:BoundField>
            <asp:BoundField DataField="phoneno" HeaderText="phoneno" SortExpression="phoneno"></asp:BoundField>
            <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender"></asp:BoundField>
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email"></asp:BoundField>
            <asp:BoundField DataField="degree" HeaderText="degree" SortExpression="degree"></asp:BoundField>
            <asp:BoundField DataField="homepage" HeaderText="homepage" SortExpression="homepage"></asp:BoundField>
            <asp:BoundField DataField="hobby" HeaderText="hobby" SortExpression="hobby"></asp:BoundField>
            <asp:ButtonField ButtonType="Link" HeaderText="Operation" Text="Display" ItemStyle-ForeColor="Blue"/>
        </Columns>
    </asp:GridView>
    <br /><hr />
    <asp:Label ID="lbdisplay" Font-Size="Larger" runat="server" />
    </div>


    <script src="http://cdn.bootcss.com/jquery/1.7.2/jquery.min.js"></script>
         <!--grumble js-->
        <script src="js/jquery.grumble.min.js?v=6"></script>
        <script src="js/Bubble.js" type="text/javascript"></script>     
        <script type="text/javascript">
            $('#div_showall').grumble({
                text: 'here show all the users registered',
                angle: 120,
                distance: 350,
                showAfter: 2000,
                hideAfter: false,
                hasHideButton: true,
                buttonHideText: 'Pop!'
            });

        </script>
</asp:Content>