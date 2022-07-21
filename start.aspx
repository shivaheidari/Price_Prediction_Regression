<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="start.aspx.cs" Inherits="DXWebApplication1.start" %>

<%@ Register Assembly="DevExpress.Web.ASPxGauges.v17.1, Version=17.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxGauges" TagPrefix="dx" %>


<%@ Register Assembly="DevExpress.Web.ASPxGauges.v17.1, Version=17.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxGauges.Gauges" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.ASPxGauges.v17.1, Version=17.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxGauges.Gauges.Linear" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.ASPxGauges.v17.1, Version=17.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxGauges.Gauges.Circular" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.ASPxGauges.v17.1, Version=17.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxGauges.Gauges.State" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.ASPxGauges.v17.1, Version=17.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxGauges.Gauges.Digital" TagPrefix="dx" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .textbox {
            padding: 5px;
            border-radius: 6px;
            background-color: aliceblue;
            border: solid 1px orange;
        }

        .bt {
            padding: 5px;
            border-radius: 6px;
            font-size: large;
            background-color: orange;
            border: none;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <table>
                            <tr>
                                <td style="text-align: center; font-weight: 600;">old</td>
                                <td style="text-align: center; font-weight: 600;">new</td>
                            </tr>
                            <tr>
                                <td style="padding: 10px;">
                                    <div>
                                        <label>y : </label>
                                        <asp:TextBox runat="server" CssClass="textbox" ID="tby"></asp:TextBox>
                                    </div>
                                    <br />
                                    <div>
                                        <label>x1 : </label>
                                        <asp:TextBox runat="server" CssClass="textbox" ID="tbx1"></asp:TextBox>
                                    </div>
                                    <br />
                                    <div>
                                        <label>x2 : </label>
                                        <asp:TextBox runat="server" CssClass="textbox" ID="tbx2"></asp:TextBox>
                                    </div>
                                    <br />
                                    <div>
                                        <label>x3 : </label>
                                        <asp:TextBox runat="server" CssClass="textbox" ID="tbx3"></asp:TextBox>
                                    </div>
                                    <br />
                                    <div>
                                        <label>x4 : </label>
                                        <asp:TextBox runat="server" CssClass="textbox" ID="tbx4"></asp:TextBox>
                                    </div>
                                    <br />
                                    <div>
                                        <label>x5 : </label>
                                        <asp:TextBox runat="server" CssClass="textbox" ID="tbx5"></asp:TextBox>
                                    </div>
                                    <br />
                                </td>
                                <td style="padding: 10px;">
                                    <div>
                                        <label>y : </label>
                                        <asp:TextBox runat="server" CssClass="textbox" ID="tbynew"></asp:TextBox>
                                    </div>
                                    <br />
                                    <div>
                                        <label>x1 : </label>
                                        <asp:TextBox runat="server" Enabled="false" CssClass="textbox" ID="tb1new"></asp:TextBox>
                                    </div>
                                    <br />
                                    <div>
                                        <label>x2 : </label>
                                        <asp:TextBox runat="server" Enabled="false" CssClass="textbox" ID="tb2new"></asp:TextBox>
                                    </div>
                                    <br />
                                    <div>
                                        <label>x3 : </label>
                                        <asp:TextBox runat="server" Enabled="false" CssClass="textbox" ID="tb3new"></asp:TextBox>
                                    </div>
                                    <br />
                                    <div>
                                        <label>x4 : </label>
                                        <asp:TextBox runat="server" Enabled="false" CssClass="textbox" ID="tb4new"></asp:TextBox>
                                    </div>
                                    <br />
                                    <div>
                                        <label>x5 : </label>
                                        <asp:TextBox runat="server" Enabled="false" CssClass="textbox" ID="tb5new"></asp:TextBox>
                                    </div>
                                    <br />
                                </td>
                            </tr>
                        </table>
                        <asp:Button runat="server" ID="btcalc" CssClass="bt" Text="calculate y old" OnClick="btcalc_Click" />
                        <asp:Button runat="server" OnClick="btsubmit_Click" ID="btsubmit" Text="submit linear" CssClass="bt" />
                        <br/>
                        <asp:Button runat="server" ID="btcalcnotl" CssClass="bt" Text="calculate y old notlinear" OnClick="btcalcnotl_Click" />
                        <asp:Button runat="server" OnClick="btsubmitnotl_Click" ID="btsubmitnotl" Text="submit notlinear" CssClass="bt" />
                    </td>
                    <td>
                        <dx:ASPxGaugeControl ID="ASPxGaugeControl1" runat="server" Height="400px" Width="700px" BackColor="White" Value="0" LayoutInterval="6">
                            <Gauges>
                                <dx:CircularGauge Bounds="6, 6, 248, 248" Name="cGauge1">
                                    <scales>
                                        <dx:ArcScaleComponent AcceptOrder="0" AppearanceTickmarkText-Font="Tahoma, 8.25pt, style=Bold" AppearanceTickmarkText-TextBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:Silver&quot;/&gt;" Center="125, 125" EndAngle="60" MajorTickmark-FormatString="{0:F0}" MajorTickmark-ShapeOffset="-9.5" MajorTickmark-ShapeScale="1.05, 1" MajorTickmark-ShapeType="Circular_Style8_5" MajorTickmark-TextOffset="-20" MajorTickmark-TextOrientation="LeftToRight" MaxValue="100" MinorTickCount="4" MinorTickmark-ShapeOffset="-9.5" MinorTickmark-ShapeType="Circular_Style8_4" Name="scale1" RadiusX="98" RadiusY="98" StartAngle="-240">
                                        </dx:ArcScaleComponent>
                                    </scales>
                                    <backgroundlayers>
                                        <dx:ArcScaleBackgroundLayerComponent AcceptOrder="-1000" ArcScale="" Name="bg1" ScaleID="scale1" ShapeType="CircularFull_Style8" ZOrder="1000" />
                                    </backgroundlayers>
                                    <effectlayers>
                                        <dx:ArcScaleEffectLayerComponent AcceptOrder="1000" ArcScale="" Name="effect1" ScaleID="scale1" Shader="&lt;ShaderObject Type=&quot;Opacity&quot; Data=&quot;Opacity[0.25]&quot;/&gt;" ShapeType="CircularFull_Style8" Size="196, 90" ZOrder="-1000" />
                                    </effectlayers>
                                    <needles>
                                        <dx:ArcScaleNeedleComponent AcceptOrder="50" ArcScale="" Name="needle1" ScaleID="scale1" ShapeType="CircularFull_Style8" ZOrder="-50" />
                                    </needles>
                                    <spindlecaps>
                                        <dx:ArcScaleSpindleCapComponent AcceptOrder="100" ArcScale="" Name="cap1" ScaleID="scale1" ShapeType="CircularFull_Style8" Size="35, 35" ZOrder="-100" />
                                    </spindlecaps>
                                </dx:CircularGauge>
                                <dx:CircularGauge Bounds="6, 6, 248, 248" Name="cGauge1">
                                    <scales>
                                        <dx:ArcScaleComponent AcceptOrder="0" AppearanceTickmarkText-Font="Tahoma, 8.25pt, style=Bold" AppearanceTickmarkText-TextBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:Silver&quot;/&gt;" Center="125, 125" EndAngle="60" MajorTickmark-FormatString="{0:F0}" MajorTickmark-ShapeOffset="-9.5" MajorTickmark-ShapeScale="1.05, 1" MajorTickmark-ShapeType="Circular_Style8_5" MajorTickmark-TextOffset="-20" MajorTickmark-TextOrientation="LeftToRight" MaxValue="100" MinorTickCount="4" MinorTickmark-ShapeOffset="-9.5" MinorTickmark-ShapeType="Circular_Style8_4" Name="scale1" RadiusX="98" RadiusY="98" StartAngle="-240">
                                        </dx:ArcScaleComponent>
                                    </scales>
                                    <backgroundlayers>
                                        <dx:ArcScaleBackgroundLayerComponent AcceptOrder="-1000" ArcScale="" Name="bg1" ScaleID="scale1" ShapeType="CircularFull_Style8" ZOrder="1000" />
                                    </backgroundlayers>
                                    <effectlayers>
                                        <dx:ArcScaleEffectLayerComponent AcceptOrder="1000" ArcScale="" Name="effect1" ScaleID="scale1" Shader="&lt;ShaderObject Type=&quot;Opacity&quot; Data=&quot;Opacity[0.25]&quot;/&gt;" ShapeType="CircularFull_Style8" Size="196, 90" ZOrder="-1000" />
                                    </effectlayers>
                                    <needles>
                                        <dx:ArcScaleNeedleComponent AcceptOrder="50" ArcScale="" Name="needle1" ScaleID="scale1" ShapeType="CircularFull_Style8" ZOrder="-50" />
                                    </needles>
                                    <spindlecaps>
                                        <dx:ArcScaleSpindleCapComponent AcceptOrder="100" ArcScale="" Name="cap1" ScaleID="scale1" ShapeType="CircularFull_Style8" Size="35, 35" ZOrder="-100" />
                                    </spindlecaps>
                                </dx:CircularGauge>
                                <dx:CircularGauge Bounds="6, 6, 248, 248" Name="cGauge1">
                                    <scales>
                                        <dx:ArcScaleComponent AcceptOrder="0" AppearanceTickmarkText-Font="Tahoma, 8.25pt, style=Bold" AppearanceTickmarkText-TextBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:Silver&quot;/&gt;" Center="125, 125" EndAngle="60" MajorTickmark-FormatString="{0:F0}" MajorTickmark-ShapeOffset="-9.5" MajorTickmark-ShapeScale="1.05, 1" MajorTickmark-ShapeType="Circular_Style8_5" MajorTickmark-TextOffset="-20" MajorTickmark-TextOrientation="LeftToRight" MaxValue="100" MinorTickCount="4" MinorTickmark-ShapeOffset="-9.5" MinorTickmark-ShapeType="Circular_Style8_4" Name="scale1" RadiusX="98" RadiusY="98" StartAngle="-240">
                                        </dx:ArcScaleComponent>
                                    </scales>
                                    <backgroundlayers>
                                        <dx:ArcScaleBackgroundLayerComponent AcceptOrder="-1000" ArcScale="" Name="bg1" ScaleID="scale1" ShapeType="CircularFull_Style8" ZOrder="1000" />
                                    </backgroundlayers>
                                    <effectlayers>
                                        <dx:ArcScaleEffectLayerComponent AcceptOrder="1000" ArcScale="" Name="effect1" ScaleID="scale1" Shader="&lt;ShaderObject Type=&quot;Opacity&quot; Data=&quot;Opacity[0.25]&quot;/&gt;" ShapeType="CircularFull_Style8" Size="196, 90" ZOrder="-1000" />
                                    </effectlayers>
                                    <needles>
                                        <dx:ArcScaleNeedleComponent AcceptOrder="50" ArcScale="" Name="needle1" ScaleID="scale1" ShapeType="CircularFull_Style8" ZOrder="-50" />
                                    </needles>
                                    <spindlecaps>
                                        <dx:ArcScaleSpindleCapComponent AcceptOrder="100" ArcScale="" Name="cap1" ScaleID="scale1" ShapeType="CircularFull_Style8" Size="35, 35" ZOrder="-100" />
                                    </spindlecaps>
                                </dx:CircularGauge>
                                <dx:CircularGauge Bounds="6, 6, 248, 248" Name="cGauge1">
                                    <scales>
                                        <dx:ArcScaleComponent AcceptOrder="0" AppearanceTickmarkText-Font="Tahoma, 8.25pt, style=Bold" AppearanceTickmarkText-TextBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:Silver&quot;/&gt;" Center="125, 125" EndAngle="60" MajorTickmark-FormatString="{0:F0}" MajorTickmark-ShapeOffset="-9.5" MajorTickmark-ShapeScale="1.05, 1" MajorTickmark-ShapeType="Circular_Style8_5" MajorTickmark-TextOffset="-20" MajorTickmark-TextOrientation="LeftToRight" MaxValue="100" MinorTickCount="4" MinorTickmark-ShapeOffset="-9.5" MinorTickmark-ShapeType="Circular_Style8_4" Name="scale1" RadiusX="98" RadiusY="98" StartAngle="-240">
                                        </dx:ArcScaleComponent>
                                    </scales>
                                    <backgroundlayers>
                                        <dx:ArcScaleBackgroundLayerComponent AcceptOrder="-1000" ArcScale="" Name="bg1" ScaleID="scale1" ShapeType="CircularFull_Style8" ZOrder="1000" />
                                    </backgroundlayers>
                                    <effectlayers>
                                        <dx:ArcScaleEffectLayerComponent AcceptOrder="1000" ArcScale="" Name="effect1" ScaleID="scale1" Shader="&lt;ShaderObject Type=&quot;Opacity&quot; Data=&quot;Opacity[0.25]&quot;/&gt;" ShapeType="CircularFull_Style8" Size="196, 90" ZOrder="-1000" />
                                    </effectlayers>
                                    <needles>
                                        <dx:ArcScaleNeedleComponent AcceptOrder="50" ArcScale="" Name="needle1" ScaleID="scale1" ShapeType="CircularFull_Style8" ZOrder="-50" />
                                    </needles>
                                    <spindlecaps>
                                        <dx:ArcScaleSpindleCapComponent AcceptOrder="100" ArcScale="" Name="cap1" ScaleID="scale1" ShapeType="CircularFull_Style8" Size="35, 35" ZOrder="-100" />
                                    </spindlecaps>
                                </dx:CircularGauge>
                                <dx:CircularGauge Bounds="6, 6, 248, 248" Name="cGauge1">
                                    <scales>
                                        <dx:ArcScaleComponent AcceptOrder="0" AppearanceTickmarkText-Font="Tahoma, 8.25pt, style=Bold" AppearanceTickmarkText-TextBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:Silver&quot;/&gt;" Center="125, 125" EndAngle="60" MajorTickmark-FormatString="{0:F0}" MajorTickmark-ShapeOffset="-9.5" MajorTickmark-ShapeScale="1.05, 1" MajorTickmark-ShapeType="Circular_Style8_5" MajorTickmark-TextOffset="-20" MajorTickmark-TextOrientation="LeftToRight" MaxValue="100" MinorTickCount="4" MinorTickmark-ShapeOffset="-9.5" MinorTickmark-ShapeType="Circular_Style8_4" Name="scale1" RadiusX="98" RadiusY="98" StartAngle="-240">
                                        </dx:ArcScaleComponent>
                                    </scales>
                                    <backgroundlayers>
                                        <dx:ArcScaleBackgroundLayerComponent AcceptOrder="-1000" ArcScale="" Name="bg1" ScaleID="scale1" ShapeType="CircularFull_Style8" ZOrder="1000" />
                                    </backgroundlayers>
                                    <effectlayers>
                                        <dx:ArcScaleEffectLayerComponent AcceptOrder="1000" ArcScale="" Name="effect1" ScaleID="scale1" Shader="&lt;ShaderObject Type=&quot;Opacity&quot; Data=&quot;Opacity[0.25]&quot;/&gt;" ShapeType="CircularFull_Style8" Size="196, 90" ZOrder="-1000" />
                                    </effectlayers>
                                    <needles>
                                        <dx:ArcScaleNeedleComponent AcceptOrder="50" ArcScale="" Name="needle1" ScaleID="scale1" ShapeType="CircularFull_Style8" ZOrder="-50" />
                                    </needles>
                                    <spindlecaps>
                                        <dx:ArcScaleSpindleCapComponent AcceptOrder="100" ArcScale="" Name="cap1" ScaleID="scale1" ShapeType="CircularFull_Style8" Size="35, 35" ZOrder="-100" />
                                    </spindlecaps>
                                </dx:CircularGauge>
                            </Gauges>
                            <LayoutPadding All="6" Left="6" Top="6" Right="6" Bottom="6"></LayoutPadding>
                        </dx:ASPxGaugeControl>
                        <%--<label>range1:</label>
                        <asp:TextBox runat="server" ID="tbr1"></asp:TextBox>
                        
                        <label>range1:</label>
                        <asp:TextBox runat="server" ID="tbr2"></asp:TextBox>--%>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
