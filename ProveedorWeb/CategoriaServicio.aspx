<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Main.master" CodeBehind="CategoriaServicio.aspx.cs" Inherits="ProveedorWeb._CategoriaServicio" %>


<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContent" >
    <table style="width: 100%;">
        <tr>
            <td style="width: 3%">&nbsp;</td>
            <td width="46%">
                <dx:ASPxLabel ID="Label1" runat="server" AssociatedControlID="Label1" ClientInstanceName="Label1" OnDataBound="Label1_DataBound" Text="0">
                </dx:ASPxLabel>
            </td>
            <td width="3%">&nbsp;</td>
            <td width="45%">&nbsp;</td>
            <td width="3%">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 3%">&nbsp;</td>
            <td>
                <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="Id" Width="100%">
                    <ClientSideEvents CustomButtonClick="function(s, e) {
	var key = s.GetRowKey(e.visibleIndex);&nbsp;
Label1.SetText(key.toString() );
}" RowClick="function(s, e) {
	var key = s.GetRowKey(e.visibleIndex);&nbsp;
Label1.SetText(key.toString() );
}" />
                    <SettingsEditing Mode="PopupEditForm">
                    </SettingsEditing>
                    <Settings ShowFilterRow="True" ShowGroupPanel="True" />
                    <SettingsBehavior ConfirmDelete="True" AllowSelectByRowClick="True" />
                    <SettingsSearchPanel Visible="True" />
                    <Columns>
                        <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowInCustomizationForm="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                        </dx:GridViewCommandColumn>
                        <dx:GridViewDataTextColumn FieldName="Id" ReadOnly="True" Visible="False" VisibleIndex="1" ShowInCustomizationForm="True">
                            <EditFormSettings Visible="False" />
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="Nombre de la Categoría" FieldName="Nombre" VisibleIndex="2" ShowInCustomizationForm="True">
                        </dx:GridViewDataTextColumn>
                    </Columns>
                </dx:ASPxGridView>
            </td>
            <td>&nbsp;</td>
            <td>
                <dx:ASPxGridView ID="ASPxGridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" KeyFieldName="Id" Width="100%">
                    <SettingsEditing Mode="PopupEditForm">
                    </SettingsEditing>
                    <Settings ShowFilterRow="True" ShowGroupPanel="True" />
                    <SettingsBehavior ConfirmDelete="True" />
                    <SettingsSearchPanel Visible="True" />
                    <Columns>
                        <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                        </dx:GridViewCommandColumn>
                        <dx:GridViewDataTextColumn FieldName="Id" ReadOnly="True" Visible="False" VisibleIndex="1">
                            <EditFormSettings Visible="False" />
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="Nombre de Servicio" FieldName="Nombre" VisibleIndex="2">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="Id de Categoría" FieldName="Categoria_fk" VisibleIndex="3">
                        </dx:GridViewDataTextColumn>
                    </Columns>
                </dx:ASPxGridView>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 3%">&nbsp;</td>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Categoria] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Categoria] ([Nombre]) VALUES (@Nombre)" SelectCommand="SELECT [Id], [Nombre] FROM [Categoria]" UpdateCommand="UPDATE [Categoria] SET [Nombre] = @Nombre WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Nombre" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Nombre" Type="String" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
            <td>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Servicio] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Servicio] ([Nombre], [Categoria_fk]) VALUES (@Nombre, @Categoria_fk)" SelectCommand="SELECT [Id], [Nombre], [Categoria_fk] FROM [Servicio] WHERE ([Categoria_fk] = @Categoria_fk)" UpdateCommand="UPDATE [Servicio] SET [Nombre] = @Nombre, [Categoria_fk] = @Categoria_fk WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Nombre" Type="String" />
                        <asp:ControlParameter ControlID="Label1" DefaultValue="0" Name="Categoria_fk" PropertyName="Text" Type="Int32" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Label1" DefaultValue="0" Name="Categoria_fk" PropertyName="Text" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Nombre" Type="String" />
                        <asp:Parameter Name="Categoria_fk" Type="Int32" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 3%">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 3%">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
