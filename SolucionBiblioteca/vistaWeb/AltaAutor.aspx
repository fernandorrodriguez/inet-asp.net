<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AltaAutor.aspx.cs" Inherits="vistaWeb.AltaAutor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br />

    <div>
        <h3>Ingreso de nuevo autor</h3>
        <br />
        <p>*Datos obligatorios</p>
        <p>
            <table style="width:50%;" class="table-bordered">
                <tr>
                    <td>
                        <asp:Label ID="lblApellido" runat="server" Text="*Apellido"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvApellido" runat="server" ErrorMessage="(1)El apellido es obligatorio" CssClass="alert-danger" ControlToValidate="txtApellido" Text="(1)Campo obligatorio"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblNombre" runat="server" Text="*Nombre"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                    </td>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="(2)El nombre es obligatorio" CssClass="alert-danger" ControlToValidate="txtNombre"  Text="(2)Campo obligatorio"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblFecha" runat="server" Text="*Fecha de nacimiento"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtFecha" runat="server"></asp:TextBox>
                        <ajaxToolkit:CalendarExtender ID="txtFecha_CalendarExtender" runat="server" BehaviorID="txtFecha_CalendarExtender" TargetControlID="txtFecha" />
                    </td>
                    <td><asp:CompareValidator ID="cvFechaNacimiento" runat="server" ControlToValidate="txtFecha" ErrorMessage="(3)Fecha no valida" CssClass="alert-danger" Operator="DataTypeCheck" Type="Date" Display="Dynamic" Text="(3)Formato de fecha erroneo"></asp:CompareValidator>
                    <asp:RequiredFieldValidator ID="rfvFechaNacimiento" runat="server" Text="(3)Campo obligatorio" CssClass="alert-danger" ControlToValidate="txtFecha" Display="Dynamic" ErrorMessage="(3)La fecha es obligatoria"></asp:RequiredFieldValidator>
                    </td> 
                    <!-- datatype check indica que tipo de datos queremos comparar, type indica el tipo a comparar-->
                    <!--el CompareValidator compara pero no controla que no se ingrese nada, por eso se usa un requiredfilevalidator-->
                    <!--display acomoda los validadores prolijamente, los hace dinamicos-->
                    
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblPais" runat="server" Text="*Pais de nacimiento"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlPaises" runat="server">
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnConfirmar" runat="server" Text="Confirmar" CssClass="btn-success" OnClick="btnConfirmar_Click" />
                    </td>
                    <td><asp:Label ID="lblMensaje" runat="server" Text=""></asp:Label></td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </p>


    </div>
    <div>
        <asp:ValidationSummary ID="vsSumario" runat="server" HeaderText="Lista de errores: " ShowMessageBox="true"  />
    </div>
</asp:Content>
