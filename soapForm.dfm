object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 328
  ClientWidth = 745
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 16
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object Memo1: TMemo
    Left = 152
    Top = 8
    Width = 585
    Height = 312
    TabOrder = 0
  end
  object procesoUnificado: TButton
    Left = 24
    Top = 112
    Width = 115
    Height = 33
    Caption = 'SoapProcess'
    TabOrder = 1
    OnClick = procesoUnificadoClick
  end
  object sincronizacionCodigoBtn: TButton
    Left = 24
    Top = 168
    Width = 115
    Height = 25
    Caption = 'Sincronizacion cod'
    TabOrder = 2
    OnClick = sincronizacionCodigoBtnClick
  end
  object firmadoXmlBtn: TButton
    Left = 24
    Top = 214
    Width = 115
    Height = 25
    Caption = 'firmadoEjemplo'
    TabOrder = 3
    OnClick = firmadoXmlBtnClick
  end
  object shaGZIP: TButton
    Left = 24
    Top = 248
    Width = 75
    Height = 25
    Caption = 'shaGZIP'
    TabOrder = 4
    OnClick = shaGZIPClick
  end
  object CodigosFact: THTTPRIO
    OnAfterExecute = CodigosFactAfterExecute
    WSDLLocation = 
      'https://pilotosiatservicios.impuestos.gob.bo/v2/FacturacionCodig' +
      'os?wsdl'
    Service = 'ServicioFacturacionCodigos'
    Port = 'ServicioFacturacionCodigosPort'
    HTTPWebNode.OnBeforePost = HTTPRIO1HTTPWebNode1BeforePost
    Converter.Options = [soSendMultiRefObj, soTryAllSchema, soRootRefNodesToBody, soCacheMimeResponse, soUTF8EncodeXML]
    Left = 184
    Top = 32
  end
  object HTTPReqResp1: THTTPReqResp
    URL = 
      'https://pilotosiatservicios.impuestos.gob.bo/v2/FacturacionCodig' +
      'os?wsdl'
    Left = 96
    Top = 48
  end
  object SincronizacionCatalogos: THTTPRIO
    OnAfterExecute = SincronizacionCatalogosAfterExecute
    WSDLLocation = 
      'https://pilotosiatservicios.impuestos.gob.bo/v2/FacturacionSincr' +
      'onizacion?wsdl'
    Service = 'ServicioFacturacionSincronizacion'
    Port = 'ServicioFacturacionSincronizacionPort'
    HTTPWebNode.OnBeforePost = HTTPRIO2HTTPWebNode1BeforePost
    Converter.Options = [soSendMultiRefObj, soTryAllSchema, soRootRefNodesToBody, soCacheMimeResponse, soUTF8EncodeXML]
    Left = 272
    Top = 80
  end
  object sbxXMLSigner1: TsbxXMLSigner
    HashAlgorithm = 'SHA256'
    InputFile = 'factura/factura.xml'
    OutputFile = 'factura/facturafimada.xml'
    Left = 240
    Top = 184
  end
  object CompraVenta: THTTPRIO
    OnAfterExecute = CompraVentaAfterExecute
    WSDLLocation = 
      'https://pilotosiatservicios.impuestos.gob.bo/v2/ServicioFacturac' +
      'ionCompraVenta?wsdl'
    Service = 'ServicioFacturacion'
    Port = 'ServicioFacturacionPort'
    Converter.Options = [soSendMultiRefObj, soTryAllSchema, soRootRefNodesToBody, soCacheMimeResponse, soUTF8EncodeXML]
    Left = 368
    Top = 32
  end
end
