<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Manage_Subject.aspx.cs" Inherits="bdonfrsh.Manage_Subject" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head> 
           
<body>
    <form id="form1" runat="server">
        <div style="padding-top:100px">
            <center>
               <asp:Button ID="btnAddNewSubject" runat="server" Text="Add New Subject" OnClick="btnAddNewSubject_Click1"></asp:Button>
              <asp:GridView ID="grdDisplySubject" runat="server" OnRowCommand ="grdDisplaySubjets_RowCommand" OnSelectedIndexChanged="grdDisplaySubjets_SelectedIndexChanged">
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
