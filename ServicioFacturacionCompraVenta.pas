// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : https://pilotosiatservicios.impuestos.gob.bo/v2/ServicioFacturacionCompraVenta?wsdl
//  >Import : https://pilotosiatservicios.impuestos.gob.bo/v2/ServicioFacturacionCompraVenta?wsdl=ServicioFacturacion.wsdl
//  >Import : https://pilotosiatservicios.impuestos.gob.bo/v2/ServicioFacturacionCompraVenta?wsdl=ServicioFacturacion.wsdl>0
// Encoding : UTF-8
// Version  : 1.0
// (12/07/2023 09:22:16 a. m. - - $Rev: 103843 $)
// ************************************************************************ //

unit ServicioFacturacionCompraVenta;

interface

uses Soap.InvokeRegistry, Soap.SOAPHTTPClient, System.Types, Soap.XSBuiltIns;

const
  IS_OPTN = $0001;
  IS_UNBD = $0002;
  IS_NLBL = $0004;
  IS_UNQL = $0008;


type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Embarcadero types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:int             - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:base64Binary    - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:long            - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"[Gbl]

  model                = class;                 { "https://siat.impuestos.gob.bo/"[GblCplx] }
  modelDto             = class;                 { "https://siat.impuestos.gob.bo/"[GblCplx] }
  ventaAnexo           = class;                 { "https://siat.impuestos.gob.bo/"[GblCplx] }
  solicitudRecepcion   = class;                 { "https://siat.impuestos.gob.bo/"[GblCplx] }
  solicitudRecepcionAnexos = class;             { "https://siat.impuestos.gob.bo/"[GblCplx] }
  solicitudAnulacion   = class;                 { "https://siat.impuestos.gob.bo/"[GblCplx] }
  solicitudValidacionRecepcion = class;         { "https://siat.impuestos.gob.bo/"[GblCplx] }
  solicitudVerificacionEstado = class;          { "https://siat.impuestos.gob.bo/"[GblCplx] }
  solicitudRecepcionFactura = class;            { "https://siat.impuestos.gob.bo/"[GblCplx] }
  solicitudRecepcionMasiva = class;             { "https://siat.impuestos.gob.bo/"[GblCplx] }
  solicitudRecepcionPaquete = class;            { "https://siat.impuestos.gob.bo/"[GblCplx] }
  mensajeServicio      = class;                 { "https://siat.impuestos.gob.bo/"[GblCplx] }
  respuestaComunicacion = class;                { "https://siat.impuestos.gob.bo/"[GblCplx] }
  respuestaRecepcion   = class;                 { "https://siat.impuestos.gob.bo/"[GblCplx] }
  mensajeRecepcion     = class;                 { "https://siat.impuestos.gob.bo/"[GblCplx] }

  Array_Of_mensajeRecepcion = array of mensajeRecepcion;   { "https://siat.impuestos.gob.bo/"[GblUbnd] }
  Array_Of_mensajeServicio = array of mensajeServicio;   { "https://siat.impuestos.gob.bo/"[GblUbnd] }
  Array_Of_ventaAnexo = array of ventaAnexo;    { "https://siat.impuestos.gob.bo/"[GblUbnd] }


  // ************************************************************************ //
  // XML       : model, global, <complexType>
  // Namespace : https://siat.impuestos.gob.bo/
  // ************************************************************************ //
  model = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : modelDto, global, <complexType>
  // Namespace : https://siat.impuestos.gob.bo/
  // ************************************************************************ //
  modelDto = class(model)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : ventaAnexo, global, <complexType>
  // Namespace : https://siat.impuestos.gob.bo/
  // ************************************************************************ //
  ventaAnexo = class(modelDto)
  private
    Fcodigo: string;
    FcodigoProducto: string;
    FcodigoProductoSin: Int64;
    FtipoCodigo: string;
  published
    property codigo:            string  Index (IS_UNQL) read Fcodigo write Fcodigo;
    property codigoProducto:    string  Index (IS_UNQL) read FcodigoProducto write FcodigoProducto;
    property codigoProductoSin: Int64   Index (IS_UNQL) read FcodigoProductoSin write FcodigoProductoSin;
    property tipoCodigo:        string  Index (IS_UNQL) read FtipoCodigo write FtipoCodigo;
  end;



  // ************************************************************************ //
  // XML       : solicitudRecepcion, global, <complexType>
  // Namespace : https://siat.impuestos.gob.bo/
  // ************************************************************************ //
  solicitudRecepcion = class(modelDto)
  private
    FcodigoAmbiente: Integer;
    FcodigoDocumentoSector: Integer;
    FcodigoEmision: Integer;
    FcodigoModalidad: Integer;
    FcodigoPuntoVenta: Integer;
    FcodigoPuntoVenta_Specified: boolean;
    FcodigoSistema: string;
    FcodigoSucursal: Integer;
    Fcufd: string;
    Fcuis: string;
    Fnit: Int64;
    FtipoFacturaDocumento: Integer;
    procedure SetcodigoPuntoVenta(Index: Integer; const AInteger: Integer);
    function  codigoPuntoVenta_Specified(Index: Integer): boolean;
  published
    property codigoAmbiente:        Integer  Index (IS_UNQL) read FcodigoAmbiente write FcodigoAmbiente;
    property codigoDocumentoSector: Integer  Index (IS_UNQL) read FcodigoDocumentoSector write FcodigoDocumentoSector;
    property codigoEmision:         Integer  Index (IS_UNQL) read FcodigoEmision write FcodigoEmision;
    property codigoModalidad:       Integer  Index (IS_UNQL) read FcodigoModalidad write FcodigoModalidad;
    property codigoPuntoVenta:      Integer  Index (IS_OPTN or IS_UNQL) read FcodigoPuntoVenta write SetcodigoPuntoVenta stored codigoPuntoVenta_Specified;
    property codigoSistema:         string   Index (IS_UNQL) read FcodigoSistema write FcodigoSistema;
    property codigoSucursal:        Integer  Index (IS_UNQL) read FcodigoSucursal write FcodigoSucursal;
    property cufd:                  string   Index (IS_UNQL) read Fcufd write Fcufd;
    property cuis:                  string   Index (IS_UNQL) read Fcuis write Fcuis;
    property nit:                   Int64    Index (IS_UNQL) read Fnit write Fnit;
    property tipoFacturaDocumento:  Integer  Index (IS_UNQL) read FtipoFacturaDocumento write FtipoFacturaDocumento;
  end;



  // ************************************************************************ //
  // XML       : solicitudRecepcionAnexos, global, <complexType>
  // Namespace : https://siat.impuestos.gob.bo/
  // ************************************************************************ //
  solicitudRecepcionAnexos = class(solicitudRecepcion)
  private
    FanexosList: Array_Of_ventaAnexo;
    Fcuf: string;
  public
    destructor Destroy; override;
  published
    property anexosList: Array_Of_ventaAnexo  Index (IS_UNBD or IS_UNQL) read FanexosList write FanexosList;
    property cuf:        string               Index (IS_UNQL) read Fcuf write Fcuf;
  end;



  // ************************************************************************ //
  // XML       : solicitudAnulacion, global, <complexType>
  // Namespace : https://siat.impuestos.gob.bo/
  // ************************************************************************ //
  solicitudAnulacion = class(solicitudRecepcion)
  private
    FcodigoMotivo: Integer;
    Fcuf: string;
  published
    property codigoMotivo: Integer  Index (IS_UNQL) read FcodigoMotivo write FcodigoMotivo;
    property cuf:          string   Index (IS_UNQL) read Fcuf write Fcuf;
  end;



  // ************************************************************************ //
  // XML       : solicitudValidacionRecepcion, global, <complexType>
  // Namespace : https://siat.impuestos.gob.bo/
  // ************************************************************************ //
  solicitudValidacionRecepcion = class(solicitudRecepcion)
  private
    FcodigoRecepcion: string;
  published
    property codigoRecepcion: string  Index (IS_UNQL) read FcodigoRecepcion write FcodigoRecepcion;
  end;



  // ************************************************************************ //
  // XML       : solicitudVerificacionEstado, global, <complexType>
  // Namespace : https://siat.impuestos.gob.bo/
  // ************************************************************************ //
  solicitudVerificacionEstado = class(solicitudRecepcion)
  private
    Fcuf: string;
  published
    property cuf: string  Index (IS_UNQL) read Fcuf write Fcuf;
  end;



  // ************************************************************************ //
  // XML       : solicitudRecepcionFactura, global, <complexType>
  // Namespace : https://siat.impuestos.gob.bo/
  // ************************************************************************ //
  solicitudRecepcionFactura = class(solicitudRecepcion)
  private
    Farchivo: TByteSOAPArray;
    FfechaEnvio: string;
    FhashArchivo: string;
  published
    property archivo:     TByteSOAPArray  Index (IS_UNQL) read Farchivo write Farchivo;
    property fechaEnvio:  string          Index (IS_UNQL) read FfechaEnvio write FfechaEnvio;
    property hashArchivo: string          Index (IS_UNQL) read FhashArchivo write FhashArchivo;
  end;



  // ************************************************************************ //
  // XML       : solicitudRecepcionMasiva, global, <complexType>
  // Namespace : https://siat.impuestos.gob.bo/
  // ************************************************************************ //
  solicitudRecepcionMasiva = class(solicitudRecepcionFactura)
  private
    FcantidadFacturas: Integer;
  published
    property cantidadFacturas: Integer  Index (IS_UNQL) read FcantidadFacturas write FcantidadFacturas;
  end;



  // ************************************************************************ //
  // XML       : solicitudRecepcionPaquete, global, <complexType>
  // Namespace : https://siat.impuestos.gob.bo/
  // ************************************************************************ //
  solicitudRecepcionPaquete = class(solicitudRecepcionFactura)
  private
    Fcafc: string;
    Fcafc_Specified: boolean;
    FcantidadFacturas: Integer;
    FcodigoEvento: Int64;
    procedure Setcafc(Index: Integer; const Astring: string);
    function  cafc_Specified(Index: Integer): boolean;
  published
    property cafc:             string   Index (IS_OPTN or IS_UNQL) read Fcafc write Setcafc stored cafc_Specified;
    property cantidadFacturas: Integer  Index (IS_UNQL) read FcantidadFacturas write FcantidadFacturas;
    property codigoEvento:     Int64    Index (IS_UNQL) read FcodigoEvento write FcodigoEvento;
  end;



  // ************************************************************************ //
  // XML       : mensajeServicio, global, <complexType>
  // Namespace : https://siat.impuestos.gob.bo/
  // ************************************************************************ //
  mensajeServicio = class(modelDto)
  private
    Fcodigo: Integer;
    Fcodigo_Specified: boolean;
    Fdescripcion: string;
    Fdescripcion_Specified: boolean;
    procedure Setcodigo(Index: Integer; const AInteger: Integer);
    function  codigo_Specified(Index: Integer): boolean;
    procedure Setdescripcion(Index: Integer; const Astring: string);
    function  descripcion_Specified(Index: Integer): boolean;
  published
    property codigo:      Integer  Index (IS_OPTN or IS_UNQL) read Fcodigo write Setcodigo stored codigo_Specified;
    property descripcion: string   Index (IS_OPTN or IS_UNQL) read Fdescripcion write Setdescripcion stored descripcion_Specified;
  end;



  // ************************************************************************ //
  // XML       : respuestaComunicacion, global, <complexType>
  // Namespace : https://siat.impuestos.gob.bo/
  // ************************************************************************ //
  respuestaComunicacion = class(modelDto)
  private
    FmensajesList: Array_Of_mensajeServicio;
    FmensajesList_Specified: boolean;
    Ftransaccion: Boolean;
    Ftransaccion_Specified: boolean;
    procedure SetmensajesList(Index: Integer; const AArray_Of_mensajeServicio: Array_Of_mensajeServicio);
    function  mensajesList_Specified(Index: Integer): boolean;
    procedure Settransaccion(Index: Integer; const ABoolean: Boolean);
    function  transaccion_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property mensajesList: Array_Of_mensajeServicio  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FmensajesList write SetmensajesList stored mensajesList_Specified;
    property transaccion:  Boolean                   Index (IS_OPTN or IS_UNQL) read Ftransaccion write Settransaccion stored transaccion_Specified;
  end;



  // ************************************************************************ //
  // XML       : respuestaRecepcion, global, <complexType>
  // Namespace : https://siat.impuestos.gob.bo/
  // ************************************************************************ //
  respuestaRecepcion = class(modelDto)
  private
    FcodigoDescripcion: string;
    FcodigoDescripcion_Specified: boolean;
    FcodigoEstado: Integer;
    FcodigoEstado_Specified: boolean;
    FcodigoRecepcion: string;
    FcodigoRecepcion_Specified: boolean;
    FmensajesList: Array_Of_mensajeRecepcion;
    FmensajesList_Specified: boolean;
    Ftransaccion: Boolean;
    Ftransaccion_Specified: boolean;
    procedure SetcodigoDescripcion(Index: Integer; const Astring: string);
    function  codigoDescripcion_Specified(Index: Integer): boolean;
    procedure SetcodigoEstado(Index: Integer; const AInteger: Integer);
    function  codigoEstado_Specified(Index: Integer): boolean;
    procedure SetcodigoRecepcion(Index: Integer; const Astring: string);
    function  codigoRecepcion_Specified(Index: Integer): boolean;
    procedure SetmensajesList(Index: Integer; const AArray_Of_mensajeRecepcion: Array_Of_mensajeRecepcion);
    function  mensajesList_Specified(Index: Integer): boolean;
    procedure Settransaccion(Index: Integer; const ABoolean: Boolean);
    function  transaccion_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property codigoDescripcion: string                     Index (IS_OPTN or IS_UNQL) read FcodigoDescripcion write SetcodigoDescripcion stored codigoDescripcion_Specified;
    property codigoEstado:      Integer                    Index (IS_OPTN or IS_UNQL) read FcodigoEstado write SetcodigoEstado stored codigoEstado_Specified;
    property codigoRecepcion:   string                     Index (IS_OPTN or IS_UNQL) read FcodigoRecepcion write SetcodigoRecepcion stored codigoRecepcion_Specified;
    property mensajesList:      Array_Of_mensajeRecepcion  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FmensajesList write SetmensajesList stored mensajesList_Specified;
    property transaccion:       Boolean                    Index (IS_OPTN or IS_UNQL) read Ftransaccion write Settransaccion stored transaccion_Specified;
  end;



  // ************************************************************************ //
  // XML       : mensajeRecepcion, global, <complexType>
  // Namespace : https://siat.impuestos.gob.bo/
  // ************************************************************************ //
  mensajeRecepcion = class(mensajeServicio)
  private
    Fadvertencia: Boolean;
    Fadvertencia_Specified: boolean;
    FnumeroArchivo: Integer;
    FnumeroArchivo_Specified: boolean;
    FnumeroDetalle: Integer;
    FnumeroDetalle_Specified: boolean;
    procedure Setadvertencia(Index: Integer; const ABoolean: Boolean);
    function  advertencia_Specified(Index: Integer): boolean;
    procedure SetnumeroArchivo(Index: Integer; const AInteger: Integer);
    function  numeroArchivo_Specified(Index: Integer): boolean;
    procedure SetnumeroDetalle(Index: Integer; const AInteger: Integer);
    function  numeroDetalle_Specified(Index: Integer): boolean;
  published
    property advertencia:   Boolean  Index (IS_OPTN or IS_UNQL) read Fadvertencia write Setadvertencia stored advertencia_Specified;
    property numeroArchivo: Integer  Index (IS_OPTN or IS_UNQL) read FnumeroArchivo write SetnumeroArchivo stored numeroArchivo_Specified;
    property numeroDetalle: Integer  Index (IS_OPTN or IS_UNQL) read FnumeroDetalle write SetnumeroDetalle stored numeroDetalle_Specified;
  end;


  // ************************************************************************ //
  // Namespace : https://siat.impuestos.gob.bo/
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : ServicioFacturacionSoapBinding
  // service   : ServicioFacturacion
  // port      : ServicioFacturacionPort
  // URL       : https://pilotosiatservicios.impuestos.gob.bo/v2/ServicioFacturacionCompraVenta
  // ************************************************************************ //
  ServicioFacturacion = interface(IInvokable)
  ['{9C91BFBB-A757-8E23-9236-C78B9AC9B7CB}']
    function  recepcionPaqueteFactura(const SolicitudServicioRecepcionPaquete: solicitudRecepcionPaquete): respuestaRecepcion; stdcall;
    function  verificarComunicacion: respuestaComunicacion; stdcall;
    function  recepcionFactura(const SolicitudServicioRecepcionFactura: solicitudRecepcionFactura): respuestaRecepcion; stdcall;
    function  validacionRecepcionMasivaFactura(const SolicitudServicioValidacionRecepcionMasiva: solicitudValidacionRecepcion): respuestaRecepcion; stdcall;
    function  recepcionAnexos(const SolicitudRecepcionAnexos: solicitudRecepcionAnexos): respuestaRecepcion; stdcall;
    function  recepcionMasivaFactura(const SolicitudServicioRecepcionMasiva: solicitudRecepcionMasiva): respuestaRecepcion; stdcall;
    function  verificacionEstadoFactura(const SolicitudServicioVerificacionEstadoFactura: solicitudVerificacionEstado): respuestaRecepcion; stdcall;
    function  validacionRecepcionPaqueteFactura(const SolicitudServicioValidacionRecepcionPaquete: solicitudValidacionRecepcion): respuestaRecepcion; stdcall;
    function  anulacionFactura(const SolicitudServicioAnulacionFactura: solicitudAnulacion): respuestaRecepcion; stdcall;
  end;

function GetServicioFacturacion(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): ServicioFacturacion;


implementation
  uses System.SysUtils;

function GetServicioFacturacion(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): ServicioFacturacion;
const
  defWSDL = 'https://pilotosiatservicios.impuestos.gob.bo/v2/ServicioFacturacionCompraVenta?wsdl';
  defURL  = 'https://pilotosiatservicios.impuestos.gob.bo/v2/ServicioFacturacionCompraVenta';
  defSvc  = 'ServicioFacturacion';
  defPrt  = 'ServicioFacturacionPort';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as ServicioFacturacion);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


procedure solicitudRecepcion.SetcodigoPuntoVenta(Index: Integer; const AInteger: Integer);
begin
  FcodigoPuntoVenta := AInteger;
  FcodigoPuntoVenta_Specified := True;
end;

function solicitudRecepcion.codigoPuntoVenta_Specified(Index: Integer): boolean;
begin
  Result := FcodigoPuntoVenta_Specified;
end;

destructor solicitudRecepcionAnexos.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FanexosList)-1 do
    System.SysUtils.FreeAndNil(FanexosList[I]);
  System.SetLength(FanexosList, 0);
  inherited Destroy;
end;

procedure solicitudRecepcionPaquete.Setcafc(Index: Integer; const Astring: string);
begin
  Fcafc := Astring;
  Fcafc_Specified := True;
end;

function solicitudRecepcionPaquete.cafc_Specified(Index: Integer): boolean;
begin
  Result := Fcafc_Specified;
end;

procedure mensajeServicio.Setcodigo(Index: Integer; const AInteger: Integer);
begin
  Fcodigo := AInteger;
  Fcodigo_Specified := True;
end;

function mensajeServicio.codigo_Specified(Index: Integer): boolean;
begin
  Result := Fcodigo_Specified;
end;

procedure mensajeServicio.Setdescripcion(Index: Integer; const Astring: string);
begin
  Fdescripcion := Astring;
  Fdescripcion_Specified := True;
end;

function mensajeServicio.descripcion_Specified(Index: Integer): boolean;
begin
  Result := Fdescripcion_Specified;
end;

destructor respuestaComunicacion.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FmensajesList)-1 do
    System.SysUtils.FreeAndNil(FmensajesList[I]);
  System.SetLength(FmensajesList, 0);
  inherited Destroy;
end;

procedure respuestaComunicacion.SetmensajesList(Index: Integer; const AArray_Of_mensajeServicio: Array_Of_mensajeServicio);
begin
  FmensajesList := AArray_Of_mensajeServicio;
  FmensajesList_Specified := True;
end;

function respuestaComunicacion.mensajesList_Specified(Index: Integer): boolean;
begin
  Result := FmensajesList_Specified;
end;

procedure respuestaComunicacion.Settransaccion(Index: Integer; const ABoolean: Boolean);
begin
  Ftransaccion := ABoolean;
  Ftransaccion_Specified := True;
end;

function respuestaComunicacion.transaccion_Specified(Index: Integer): boolean;
begin
  Result := Ftransaccion_Specified;
end;

destructor respuestaRecepcion.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FmensajesList)-1 do
    System.SysUtils.FreeAndNil(FmensajesList[I]);
  System.SetLength(FmensajesList, 0);
  inherited Destroy;
end;

procedure respuestaRecepcion.SetcodigoDescripcion(Index: Integer; const Astring: string);
begin
  FcodigoDescripcion := Astring;
  FcodigoDescripcion_Specified := True;
end;

function respuestaRecepcion.codigoDescripcion_Specified(Index: Integer): boolean;
begin
  Result := FcodigoDescripcion_Specified;
end;

procedure respuestaRecepcion.SetcodigoEstado(Index: Integer; const AInteger: Integer);
begin
  FcodigoEstado := AInteger;
  FcodigoEstado_Specified := True;
end;

function respuestaRecepcion.codigoEstado_Specified(Index: Integer): boolean;
begin
  Result := FcodigoEstado_Specified;
end;

procedure respuestaRecepcion.SetcodigoRecepcion(Index: Integer; const Astring: string);
begin
  FcodigoRecepcion := Astring;
  FcodigoRecepcion_Specified := True;
end;

function respuestaRecepcion.codigoRecepcion_Specified(Index: Integer): boolean;
begin
  Result := FcodigoRecepcion_Specified;
end;

procedure respuestaRecepcion.SetmensajesList(Index: Integer; const AArray_Of_mensajeRecepcion: Array_Of_mensajeRecepcion);
begin
  FmensajesList := AArray_Of_mensajeRecepcion;
  FmensajesList_Specified := True;
end;

function respuestaRecepcion.mensajesList_Specified(Index: Integer): boolean;
begin
  Result := FmensajesList_Specified;
end;

procedure respuestaRecepcion.Settransaccion(Index: Integer; const ABoolean: Boolean);
begin
  Ftransaccion := ABoolean;
  Ftransaccion_Specified := True;
end;

function respuestaRecepcion.transaccion_Specified(Index: Integer): boolean;
begin
  Result := Ftransaccion_Specified;
end;

procedure mensajeRecepcion.Setadvertencia(Index: Integer; const ABoolean: Boolean);
begin
  Fadvertencia := ABoolean;
  Fadvertencia_Specified := True;
end;

function mensajeRecepcion.advertencia_Specified(Index: Integer): boolean;
begin
  Result := Fadvertencia_Specified;
end;

procedure mensajeRecepcion.SetnumeroArchivo(Index: Integer; const AInteger: Integer);
begin
  FnumeroArchivo := AInteger;
  FnumeroArchivo_Specified := True;
end;

function mensajeRecepcion.numeroArchivo_Specified(Index: Integer): boolean;
begin
  Result := FnumeroArchivo_Specified;
end;

procedure mensajeRecepcion.SetnumeroDetalle(Index: Integer; const AInteger: Integer);
begin
  FnumeroDetalle := AInteger;
  FnumeroDetalle_Specified := True;
end;

function mensajeRecepcion.numeroDetalle_Specified(Index: Integer): boolean;
begin
  Result := FnumeroDetalle_Specified;
end;

initialization
  { ServicioFacturacion }
  InvRegistry.RegisterInterface(TypeInfo(ServicioFacturacion), 'https://siat.impuestos.gob.bo/', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(ServicioFacturacion), '');
  InvRegistry.RegisterInvokeOptions(TypeInfo(ServicioFacturacion), ioDocument);
  { ServicioFacturacion.recepcionPaqueteFactura }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicioFacturacion), 'recepcionPaqueteFactura', '',
                                 '[ReturnName="RespuestaServicioFacturacion"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacion), 'recepcionPaqueteFactura', 'SolicitudServicioRecepcionPaquete', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacion), 'recepcionPaqueteFactura', 'RespuestaServicioFacturacion', '',
                                '', IS_UNQL);
  { ServicioFacturacion.verificarComunicacion }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicioFacturacion), 'verificarComunicacion', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacion), 'verificarComunicacion', 'return', '',
                                '', IS_UNQL);
  { ServicioFacturacion.recepcionFactura }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicioFacturacion), 'recepcionFactura', '',
                                 '[ReturnName="RespuestaServicioFacturacion"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacion), 'recepcionFactura', 'SolicitudServicioRecepcionFactura', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacion), 'recepcionFactura', 'RespuestaServicioFacturacion', '',
                                '', IS_UNQL);
  { ServicioFacturacion.validacionRecepcionMasivaFactura }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicioFacturacion), 'validacionRecepcionMasivaFactura', '',
                                 '[ReturnName="RespuestaServicioFacturacion"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacion), 'validacionRecepcionMasivaFactura', 'SolicitudServicioValidacionRecepcionMasiva', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacion), 'validacionRecepcionMasivaFactura', 'RespuestaServicioFacturacion', '',
                                '', IS_UNQL);
  { ServicioFacturacion.recepcionAnexos }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicioFacturacion), 'recepcionAnexos', '',
                                 '[ReturnName="RespuestaRecepcionAnexos"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacion), 'recepcionAnexos', 'SolicitudRecepcionAnexos', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacion), 'recepcionAnexos', 'RespuestaRecepcionAnexos', '',
                                '', IS_UNQL);
  { ServicioFacturacion.recepcionMasivaFactura }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicioFacturacion), 'recepcionMasivaFactura', '',
                                 '[ReturnName="RespuestaServicioFacturacion"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacion), 'recepcionMasivaFactura', 'SolicitudServicioRecepcionMasiva', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacion), 'recepcionMasivaFactura', 'RespuestaServicioFacturacion', '',
                                '', IS_UNQL);
  { ServicioFacturacion.verificacionEstadoFactura }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicioFacturacion), 'verificacionEstadoFactura', '',
                                 '[ReturnName="RespuestaServicioFacturacion"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacion), 'verificacionEstadoFactura', 'SolicitudServicioVerificacionEstadoFactura', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacion), 'verificacionEstadoFactura', 'RespuestaServicioFacturacion', '',
                                '', IS_UNQL);
  { ServicioFacturacion.validacionRecepcionPaqueteFactura }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicioFacturacion), 'validacionRecepcionPaqueteFactura', '',
                                 '[ReturnName="RespuestaServicioFacturacion"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacion), 'validacionRecepcionPaqueteFactura', 'SolicitudServicioValidacionRecepcionPaquete', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacion), 'validacionRecepcionPaqueteFactura', 'RespuestaServicioFacturacion', '',
                                '', IS_UNQL);
  { ServicioFacturacion.anulacionFactura }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicioFacturacion), 'anulacionFactura', '',
                                 '[ReturnName="RespuestaServicioFacturacion"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacion), 'anulacionFactura', 'SolicitudServicioAnulacionFactura', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacion), 'anulacionFactura', 'RespuestaServicioFacturacion', '',
                                '', IS_UNQL);
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_mensajeRecepcion), 'https://siat.impuestos.gob.bo/', 'Array_Of_mensajeRecepcion');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_mensajeServicio), 'https://siat.impuestos.gob.bo/', 'Array_Of_mensajeServicio');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_ventaAnexo), 'https://siat.impuestos.gob.bo/', 'Array_Of_ventaAnexo');
  RemClassRegistry.RegisterXSClass(model, 'https://siat.impuestos.gob.bo/', 'model');
  RemClassRegistry.RegisterXSClass(modelDto, 'https://siat.impuestos.gob.bo/', 'modelDto');
  RemClassRegistry.RegisterXSClass(ventaAnexo, 'https://siat.impuestos.gob.bo/', 'ventaAnexo');
  RemClassRegistry.RegisterXSClass(solicitudRecepcion, 'https://siat.impuestos.gob.bo/', 'solicitudRecepcion');
  RemClassRegistry.RegisterXSClass(solicitudRecepcionAnexos, 'https://siat.impuestos.gob.bo/', 'solicitudRecepcionAnexos');
  RemClassRegistry.RegisterXSClass(solicitudAnulacion, 'https://siat.impuestos.gob.bo/', 'solicitudAnulacion');
  RemClassRegistry.RegisterXSClass(solicitudValidacionRecepcion, 'https://siat.impuestos.gob.bo/', 'solicitudValidacionRecepcion');
  RemClassRegistry.RegisterXSClass(solicitudVerificacionEstado, 'https://siat.impuestos.gob.bo/', 'solicitudVerificacionEstado');
  RemClassRegistry.RegisterXSClass(solicitudRecepcionFactura, 'https://siat.impuestos.gob.bo/', 'solicitudRecepcionFactura');
  RemClassRegistry.RegisterXSClass(solicitudRecepcionMasiva, 'https://siat.impuestos.gob.bo/', 'solicitudRecepcionMasiva');
  RemClassRegistry.RegisterXSClass(solicitudRecepcionPaquete, 'https://siat.impuestos.gob.bo/', 'solicitudRecepcionPaquete');
  RemClassRegistry.RegisterXSClass(mensajeServicio, 'https://siat.impuestos.gob.bo/', 'mensajeServicio');
  RemClassRegistry.RegisterXSClass(respuestaComunicacion, 'https://siat.impuestos.gob.bo/', 'respuestaComunicacion');
  RemClassRegistry.RegisterXSClass(respuestaRecepcion, 'https://siat.impuestos.gob.bo/', 'respuestaRecepcion');
  RemClassRegistry.RegisterXSClass(mensajeRecepcion, 'https://siat.impuestos.gob.bo/', 'mensajeRecepcion');

end.