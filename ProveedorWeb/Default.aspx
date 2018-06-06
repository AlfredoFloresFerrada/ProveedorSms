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
        <dx:GridViewDataTextColumn FieldName="Rut" VisibleIndex="2">
            <PropertiesTextEdit MaxLength="8">
            </PropertiesTextEdit>
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Dv" VisibleIndex="3" Caption="Dig. Verif">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Codigo" VisibleIndex="4" Caption="Código">
            <PropertiesTextEdit MaxLength="50">
            </PropertiesTextEdit>
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Nombre" VisibleIndex="5">
            <PropertiesTextEdit MaxLength="50">
            </PropertiesTextEdit>
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Contacto" VisibleIndex="6">
            <PropertiesTextEdit MaxLength="50">
            </PropertiesTextEdit>
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Fono" VisibleIndex="7">
            <PropertiesTextEdit MaxLength="50">
            </PropertiesTextEdit>
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Email" VisibleIndex="8">
            <PropertiesTextEdit MaxLength="50">
            </PropertiesTextEdit>
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn Caption="Otro Proveedor" FieldName="OtroPv" VisibleIndex="11">
            <PropertiesTextEdit MaxLength="50">
            </PropertiesTextEdit>
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Comentario" VisibleIndex="13">
            <PropertiesTextEdit MaxLength="150">
            </PropertiesTextEdit>
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn Caption="Web / URL" FieldName="Url" VisibleIndex="14">
            <PropertiesTextEdit MaxLength="150">
            </PropertiesTextEdit>
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataComboBoxColumn Caption="Crítico" FieldName="Critico" VisibleIndex="12">
            <PropertiesComboBox>
                <Items>
                    <dx:ListEditItem Selected="True" Text="No" Value="2" />
                    <dx:ListEditItem Text="Cuello de Botella" Value="3" />
                    <dx:ListEditItem Text="Estratégico" Value="4" />
                    <dx:ListEditItem Text="Leverage" Value="5" />
                </Items>
            </PropertiesComboBox>
        </dx:GridViewDataComboBoxColumn>
        <dx:GridViewDataComboBoxColumn FieldName="Vigencia" VisibleIndex="9">
            <PropertiesComboBox>
                <Items>
                    <dx:ListEditItem Selected="True" Text="Si" Value="1" />
                    <dx:ListEditItem Text="No" Value="2" />
                </Items>
            </PropertiesComboBox>
        </dx:GridViewDataComboBoxColumn>
        <dx:GridViewDataComboBoxColumn Caption="Envío de correo" FieldName="EnvioMail" VisibleIndex="10">
            <PropertiesComboBox>
                <Items>
                    <dx:ListEditItem Selected="True" Text="Si" Value="1" />
                    <dx:ListEditItem Text="No" Value="2" />
                </Items>
            </PropertiesComboBox>
        </dx:GridViewDataComboBoxColumn>
    </Columns>
    <Paddings Padding="0px" />
    <Border BorderWidth="0px" />
    <BorderBottom BorderWidth="1px" />
</dx:ASPxGridView>


<%-- DXCOMMENT: Configure your datasource for ASPxGridView --%>


    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Proveedor] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Proveedor] ([Rut], [Dv], [Codigo], [Nombre], [Contacto], [Fono], [Email], [Vigencia], [EnvioMail], [OtroPv], [Critico], [Comentario], [Url]) VALUES (@Rut, @Dv, @Codigo, @Nombre, @Contacto, @Fono, @Email, @Vigencia, @EnvioMail, @OtroPv, @Critico, @Comentario, @Url)" SelectCommand="SELECT [Id], [Rut], [Dv], [Codigo], [Nombre], [Contacto], [Fono], [Email], [Vigencia], [EnvioMail], [OtroPv], [Critico], [Comentario], [Url] FROM [Proveedor]" UpdateCommand="UPDATE [Proveedor] SET [Rut] = @Rut, [Dv] = @Dv, [Codigo] = @Codigo, [Nombre] = @Nombre, [Contacto] = @Contacto, [Fono] = @Fono, [Email] = @Email, [Vigencia] = @Vigencia, [EnvioMail] = @EnvioMail, [OtroPv] = @OtroPv, [Critico] = @Critico, [Comentario] = @Comentario, [Url] = @Url WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Rut" Type="Int32" />
            <asp:Parameter Name="Dv" Type="String" />
            <asp:Parameter Name="Codigo" Type="String" />
            <asp:Parameter Name="Nombre" Type="String" />
            <asp:Parameter Name="Contacto" Type="String" />
            <asp:Parameter Name="Fono" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Vigencia" Type="Int32" />
            <asp:Parameter Name="EnvioMail" Type="Int32" />
            <asp:Parameter Name="OtroPv" Type="String" />
            <asp:Parameter Name="Critico" Type="Int32" />
            <asp:Parameter Name="Comentario" Type="String" />
            <asp:Parameter Name="Url" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Rut" Type="Int32" />
            <asp:Parameter Name="Dv" Type="String" />
            <asp:Parameter Name="Codigo" Type="String" />
            <asp:Parameter Name="Nombre" Type="String" />
            <asp:Parameter Name="Contacto" Type="String" />
            <asp:Parameter Name="Fono" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Vigencia" Type="Int32" />
            <asp:Parameter Name="EnvioMail" Type="Int32" />
            <asp:Parameter Name="OtroPv" Type="String" />
            <asp:Parameter Name="Critico" Type="Int32" />
            <asp:Parameter Name="Comentario" Type="String" />
            <asp:Parameter Name="Url" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>


</asp:Content>