<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManagePosts.aspx.cs" Inherits="bdonfrsh.ManagePosts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>

<body>

    <form id="form1" runat="server">
        <div style="padding-top:100px">
            <center>
                <p>
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" style="height: 26px" />
               </p>

        <asp:GridView ID="grdpost" runat="server" OnRowCommand="grdpost_RowCommand" OnSelectedIndexChanged="grdpost_SelectedIndexChanged">
             <Columns>
                   <asp:TemplateField>
                      <ItemTemplate>
                        <asp:Button Text="Manage" runat="server" CommandName="Manage" CommandArgument="<%# Container.DataItemIndex %>" />
                      </ItemTemplate>
                   </asp:TemplateField>
                </Columns>
        </asp:GridView>
            </center>
            </div>
    </form>

</body>
</html>
