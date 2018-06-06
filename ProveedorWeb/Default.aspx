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
    <Settings ShowFilterRow="True" ShowGroupPanel="True" ShowFilterRowMenu="True" />
    <SettingsBehavior ConfirmDelete="True" />
    <SettingsPopup>
        <EditForm VerticalAlign="WindowCenter" />
    </SettingsPopup>
    <SettingsSearchPanel Visible="True" />
    <Columns>
        <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
        </dx:GridViewCommandColumn>
        <dx:GridViewDataTextColumn FieldName="Id" VisibleIndex="1" ReadOnly="True" Visible="False">
            <EditFormSettings Visible="False" />
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Vendor" VisibleIndex="2">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Nombre" VisibleIndex="3" Caption="Nombre del Proveedor">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Contacto" VisibleIndex="4">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Fono" VisibleIndex="5">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Correo" VisibleIndex="6">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Servicio" VisibleIndex="7" Caption="Tipo de Servicio o Suministro">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Categoria" VisibleIndex="8" Caption="Categoría o Descripción">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Lugar" VisibleIndex="9">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Cobertura" VisibleIndex="10">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Contrato" VisibleIndex="11">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn Caption="Web / URL" FieldName="Url" VisibleIndex="12">
        </dx:GridViewDataTextColumn>
    </Columns>
    <Paddings Padding="0px" />
    <Border BorderWidth="0px" />
    <BorderBottom BorderWidth="1px" />
</dx:ASPxGridView>


<%-- DXCOMMENT: Configure your datasource for ASPxGridView --%>


    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Proveedor] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Proveedor] ([Vendor], [Nombre], [Contacto], [Fono], [Correo], [Servicio], [Categoria], [Lugar], [Cobertura], [Contrato], [Url]) VALUES (@Vendor, @Nombre, @Contacto, @Fono, @Correo, @Servicio, @Categoria, @Lugar, @Cobertura, @Contrato, @Url)" SelectCommand="SELECT [Id], [Vendor], [Nombre], [Contacto], [Fono], [Correo], [Servicio], [Categoria], [Lugar], [Cobertura], [Contrato], [Url] FROM [Proveedor]" UpdateCommand="UPDATE [Proveedor] SET [Vendor] = @Vendor, [Nombre] = @Nombre, [Contacto] = @Contacto, [Fono] = @Fono, [Correo] = @Correo, [Servicio] = @Servicio, [Categoria] = @Categoria, [Lugar] = @Lugar, [Cobertura] = @Cobertura, [Contrato] = @Contrato, [Url] = @Url WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Vendor" Type="Int32" />
            <asp:Parameter Name="Nombre" Type="String" />
            <asp:Parameter Name="Contacto" Type="String" />
            <asp:Parameter Name="Fono" Type="String" />
            <asp:Parameter Name="Correo" Type="String" />
            <asp:Parameter Name="Servicio" Type="String" />
            <asp:Parameter Name="Categoria" Type="String" />
            <asp:Parameter Name="Lugar" Type="String" />
            <asp:Parameter Name="Cobertura" Type="String" />
            <asp:Parameter Name="Contrato" Type="String" />
            <asp:Parameter Name="Url" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Vendor" Type="Int32" />
            <asp:Parameter Name="Nombre" Type="String" />
            <asp:Parameter Name="Contacto" Type="String" />
            <asp:Parameter Name="Fono" Type="String" />
            <asp:Parameter Name="Correo" Type="String" />
            <asp:Parameter Name="Servicio" Type="String" />
            <asp:Parameter Name="Categoria" Type="String" />
            <asp:Parameter Name="Lugar" Type="String" />
            <asp:Parameter Name="Cobertura" Type="String" />
            <asp:Parameter Name="Contrato" Type="String" />
            <asp:Parameter Name="Url" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>


</asp:Content>