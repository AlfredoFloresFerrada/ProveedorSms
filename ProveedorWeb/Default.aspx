<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Main.master" CodeBehind="Default.aspx.cs" Inherits="ProveedorWeb._Default" %>


<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">
    <%-- DXCOMMENT: Configure ASPxGridView control --%>
<dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" ClientInstanceName="ASPxGridView1"
    Width="100%" KeyFieldName="Id">
    <%-- DXCOMMENT: Configure ASPxGridView's columns in accordance with datasource fields --%>
    <SettingsAdaptivity AdaptivityMode="HideDataCells" />
    <SettingsPager PageSize="50" />
    <SettingsEditing Mode="PopupEditForm">
    </SettingsEditing>
    <Settings ShowFilterRow="True" ShowGroupPanel="True" />
    <SettingsBehavior ConfirmDelete="True" />
    <SettingsSearchPanel Visible="True" />
    <Columns>
        <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
        </dx:GridViewCommandColumn>
        <dx:GridViewDataTextColumn FieldName="Id" VisibleIndex="1" ReadOnly="True">
            <EditFormSettings Visible="False" />
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Nombre" VisibleIndex="2">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Fono" VisibleIndex="3">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Correo" VisibleIndex="4">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Contacto" VisibleIndex="5">
        </dx:GridViewDataTextColumn>
    </Columns>
    <Paddings Padding="0px" />
    <Border BorderWidth="0px" />
    <BorderBottom BorderWidth="1px" />
</dx:ASPxGridView>


<%-- DXCOMMENT: Configure your datasource for ASPxGridView --%>


    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Proveedor] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Proveedor] ([Nombre], [Fono], [Correo], [Contacto]) VALUES (@Nombre, @Fono, @Correo, @Contacto)" SelectCommand="SELECT [Id], [Nombre], [Fono], [Correo], [Contacto] FROM [Proveedor]" UpdateCommand="UPDATE [Proveedor] SET [Nombre] = @Nombre, [Fono] = @Fono, [Correo] = @Correo, [Contacto] = @Contacto WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Nombre" Type="String" />
            <asp:Parameter Name="Fono" Type="String" />
            <asp:Parameter Name="Correo" Type="String" />
            <asp:Parameter Name="Contacto" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Nombre" Type="String" />
            <asp:Parameter Name="Fono" Type="String" />
            <asp:Parameter Name="Correo" Type="String" />
            <asp:Parameter Name="Contacto" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>


</asp:Content>