// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : https://pilotosiatservicios.impuestos.gob.bo/v2/ServicioRecepcionCompras?wsdl
//  >Import : https://pilotosiatservicios.impuestos.gob.bo/v2/ServicioRecepcionCompras?wsdl=ServicioFacturacion.wsdl
//  >Import : https://pilotosiatservicios.impuestos.gob.bo/v2/ServicioRecepcionCompras?wsdl=ServicioFacturacion.wsdl>0
// Encoding : UTF-8
// Version  : 1.0
// (17/05/2023 11:02:42 a. m. - - $Rev: 103843 $)
// ************************************************************************ //

unit ServicioRecepcionCompras;

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
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:int             - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:base64Binary    - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:dateTime        - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:long            - "http://www.w3.org/2001/XMLSchema"[Gbl]

  model                = class;                 { "https://siat.impuestos.gob.bo/"[GblCplx] }
  modelDto             = class;                 { "https://siat.impuestos.gob.bo/"[GblCplx] }
  respuestaComunicacion = class;                { "https://siat.impuestos.gob.bo/"[GblCplx] }
  mensajeServicio      = class;                 { "https://siat.impuestos.gob.bo/"[GblCplx] }
  mensajeRecepcion     = class;                 { "https://siat.impuestos.gob.bo/"[GblCplx] }
  respuestaRecepcion   = class;                 { "https://siat.impuestos.gob.bo/"[GblCplx] }
  respuestaConsultaCompras = class;             { "https://siat.impuestos.gob.bo/"[GblCplx] }
  solicitudCompras     = class;                 { "https://siat.impuestos.gob.bo/"[GblCplx] }
  solicitudRecepcionCompras = class;            { "https://siat.impuestos.gob.bo/"[GblCplx] }
  solicitudValidacionRecepcionCompras = class;   { "https://siat.impuestos.gob.bo/"[GblCplx] }
  solicitudAnulacionCompra = class;             { "https://siat.impuestos.gob.bo/"[GblCplx] }
  solicitudConsultaCompras = class;             { "https://siat.impuestos.gob.bo/"[GblCplx] }



  // ************************************************************************ //
  // XML       : model, global, <complexType>
  // Namespace : https://siat.impuestos.gob.bo/
  // ************************************************************************ //
  model = class(TRemotable)
  private
  published
  end;

  Array_Of_mensajeRecepcion = array of mensajeRecepcion;   { "https://siat.impuestos.gob.bo/"[GblUbnd] }
  Array_Of_mensajeServicio = array of mensajeServicio;   { "https://siat.impuestos.gob.bo/"[GblUbnd] }


  // ************************************************************************ //
  // XML       : modelDto, global, <complexType>
  // Namespace : https://siat.impuestos.gob.bo/
  // ************************************************************************ //
  modelDto = class(model)
  private
  published
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
  // XML       : respuestaConsultaCompras, global, <complexType>
  // Namespace : https://siat.impuestos.gob.bo/
  // ************************************************************************ //
  respuestaConsultaCompras = class(modelDto)
  private
    Farchivo: TByteSOAPArray;
    Farchivo_Specified: boolean;
    FmensajesList: Array_Of_mensajeRecepcion;
    FmensajesList_Specified: boolean;
    Ftransaccion: Boolean;
    Ftransaccion_Specified: boolean;
    procedure Setarchivo(Index: Integer; const ATByteSOAPArray: TByteSOAPArray);
    function  archivo_Specified(Index: Integer): boolean;
    procedure SetmensajesList(Index: Integer; const AArray_Of_mensajeRecepcion: Array_Of_mensajeRecepcion);
    function  mensajesList_Specified(Index: Integer): boolean;
    procedure Settransaccion(Index: Integer; const ABoolean: Boolean);
    function  transaccion_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property archivo:      TByteSOAPArray             Index (IS_OPTN or IS_UNQL) read Farchivo write Setarchivo stored archivo_Specified;
    property mensajesList: Array_Of_mensajeRecepcion  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FmensajesList write SetmensajesList stored mensajesList_Specified;
    property transaccion:  Boolean                    Index (IS_OPTN or IS_UNQL) read Ftransaccion write Settransaccion stored transaccion_Specified;
  end;



  // ************************************************************************ //
  // XML       : solicitudCompras, global, <complexType>
  // Namespace : https://siat.impuestos.gob.bo/
  // ************************************************************************ //
  solicitudCompras = class(modelDto)
  private
    FcodigoAmbiente: Integer;
    FcodigoPuntoVenta: Integer;
    FcodigoSistema: string;
    FcodigoSucursal: Integer;
    Fcufd: string;
    Fcuis: string;
    Fnit: Int64;
  published
    property codigoAmbiente:   Integer  Index (IS_UNQL) read FcodigoAmbiente write FcodigoAmbiente;
    property codigoPuntoVenta: Integer  Index (IS_UNQL) read FcodigoPuntoVenta write FcodigoPuntoVenta;
    property codigoSistema:    string   Index (IS_UNQL) read FcodigoSistema write FcodigoSistema;
    property codigoSucursal:   Integer  Index (IS_UNQL) read FcodigoSucursal write FcodigoSucursal;
    property cufd:             string   Index (IS_UNQL) read Fcufd write Fcufd;
    property cuis:             string   Index (IS_UNQL) read Fcuis write Fcuis;
    property nit:              Int64    Index (IS_UNQL) read Fnit write Fnit;
  end;



  // ************************************************************************ //
  // XML       : solicitudRecepcionCompras, global, <complexType>
  // Namespace : https://siat.impuestos.gob.bo/
  // ************************************************************************ //
  solicitudRecepcionCompras = class(solicitudCompras)
  private
    Farchivo: TByteSOAPArray;
    FcantidadFacturas: Integer;
    FfechaEnvio: TXSDateTime;
    Fgestion: Integer;
    FhashArchivo: string;
    Fperiodo: Integer;
  public
    destructor Destroy; override;
  published
    property archivo:          TByteSOAPArray  Index (IS_UNQL) read Farchivo write Farchivo;
    property cantidadFacturas: Integer         Index (IS_UNQL) read FcantidadFacturas write FcantidadFacturas;
    property fechaEnvio:       TXSDateTime     Index (IS_UNQL) read FfechaEnvio write FfechaEnvio;
    property gestion:          Integer         Index (IS_UNQL) read Fgestion write Fgestion;
    property hashArchivo:      string          Index (IS_UNQL) read FhashArchivo write FhashArchivo;
    property periodo:          Integer         Index (IS_UNQL) read Fperiodo write Fperiodo;
  end;



  // ************************************************************************ //
  // XML       : solicitudValidacionRecepcionCompras, global, <complexType>
  // Namespace : https://siat.impuestos.gob.bo/
  // ************************************************************************ //
  solicitudValidacionRecepcionCompras = class(solicitudCompras)
  private
    FcodigoRecepcion: string;
  published
    property codigoRecepcion: string  Index (IS_UNQL) read FcodigoRecepcion write FcodigoRecepcion;
  end;



  // ************************************************************************ //
  // XML       : solicitudAnulacionCompra, global, <complexType>
  // Namespace : https://siat.impuestos.gob.bo/
  // ************************************************************************ //
  solicitudAnulacionCompra = class(solicitudCompras)
  private
    FcodAutorizacion: string;
    FnitProveedor: Int64;
    FnroDuiDim: string;
    FnroFactura: Int64;
  published
    property codAutorizacion: string  Index (IS_UNQL) read FcodAutorizacion write FcodAutorizacion;
    property nitProveedor:    Int64   Index (IS_UNQL) read FnitProveedor write FnitProveedor;
    property nroDuiDim:       string  Index (IS_UNQL) read FnroDuiDim write FnroDuiDim;
    property nroFactura:      Int64   Index (IS_UNQL) read FnroFactura write FnroFactura;
  end;



  // ************************************************************************ //
  // XML       : solicitudConsultaCompras, global, <complexType>
  // Namespace : https://siat.impuestos.gob.bo/
  // ************************************************************************ //
  solicitudConsultaCompras = class(solicitudCompras)
  private
    Ffecha: TXSDateTime;
  public
    destructor Destroy; override;
  published
    property fecha: TXSDateTime  Index (IS_UNQL) read Ffecha write Ffecha;
  end;


  // ************************************************************************ //
  // Namespace : https://siat.impuestos.gob.bo/
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : ServicioRecepcionComprasSoapBinding
  // service   : ServicioRecepcionCompras
  // port      : ServicioFacturacionPort
  // URL       : https://pilotosiatservicios.impuestos.gob.bo/v2/ServicioRecepcionCompras
  // ************************************************************************ //
  ServicioFacturacion = interface(IInvokable)
  ['{C96901DC-2798-4221-9FEC-A2BD8BC62B7C}']
    function  verificarComunicacion: respuestaComunicacion; stdcall;
    function  validacionRecepcionPaqueteCompras(const SolicitudValidacionRecepcionCompras: solicitudValidacionRecepcionCompras): respuestaRecepcion; stdcall;
    function  recepcionPaqueteCompras(const SolicitudRecepcionCompras: solicitudRecepcionCompras): respuestaRecepcion; stdcall;
    function  anulacionCompra(const SolicitudAnulacionCompra: solicitudAnulacionCompra): respuestaRecepcion; stdcall;
    function  confirmacionCompras(const SolicitudConfirmacionCompras: solicitudRecepcionCompras): respuestaRecepcion; stdcall;
    function  consultaCompras(const SolicitudConsultaCompras: solicitudConsultaCompras): respuestaConsultaCompras; stdcall;
  end;

function GetServicioFacturacion(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): ServicioFacturacion;


implementation
  uses System.SysUtils;

function GetServicioFacturacion(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): ServicioFacturacion;
const
  defWSDL = 'https://pilotosiatservicios.impuestos.gob.bo/v2/ServicioRecepcionCompras?wsdl';
  defURL  = 'https://pilotosiatservicios.impuestos.gob.bo/v2/ServicioRecepcionCompras';
  defSvc  = 'ServicioRecepcionCompras';
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

destructor respuestaConsultaCompras.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FmensajesList)-1 do
    System.SysUtils.FreeAndNil(FmensajesList[I]);
  System.SetLength(FmensajesList, 0);
  inherited Destroy;
end;

procedure respuestaConsultaCompras.Setarchivo(Index: Integer; const ATByteSOAPArray: TByteSOAPArray);
begin
  Farchivo := ATByteSOAPArray;
  Farchivo_Specified := True;
end;

function respuestaConsultaCompras.archivo_Specified(Index: Integer): boolean;
begin
  Result := Farchivo_Specified;
end;

procedure respuestaConsultaCompras.SetmensajesList(Index: Integer; const AArray_Of_mensajeRecepcion: Array_Of_mensajeRecepcion);
begin
  FmensajesList := AArray_Of_mensajeRecepcion;
  FmensajesList_Specified := True;
end;

function respuestaConsultaCompras.mensajesList_Specified(Index: Integer): boolean;
begin
  Result := FmensajesList_Specified;
end;

procedure respuestaConsultaCompras.Settransaccion(Index: Integer; const ABoolean: Boolean);
begin
  Ftransaccion := ABoolean;
  Ftransaccion_Specified := True;
end;

function respuestaConsultaCompras.transaccion_Specified(Index: Integer): boolean;
begin
  Result := Ftransaccion_Specified;
end;

destructor solicitudRecepcionCompras.Destroy;
begin
  System.SysUtils.FreeAndNil(FfechaEnvio);
  inherited Destroy;
end;

destructor solicitudConsultaCompras.Destroy;
begin
  System.SysUtils.FreeAndNil(Ffecha);
  inherited Destroy;
end;

initialization
  { ServicioFacturacion }
  InvRegistry.RegisterInterface(TypeInfo(ServicioFacturacion), 'https://siat.impuestos.gob.bo/', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(ServicioFacturacion), '');
  InvRegistry.RegisterInvokeOptions(TypeInfo(ServicioFacturacion), ioDocument);
  { ServicioFacturacion.verificarComunicacion }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicioFacturacion), 'verificarComunicacion', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacion), 'verificarComunicacion', 'return', '',
                                '', IS_UNQL);
  { ServicioFacturacion.validacionRecepcionPaqueteCompras }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicioFacturacion), 'validacionRecepcionPaqueteCompras', '',
                                 '[ReturnName="RespuestaServicioFacturacion"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacion), 'validacionRecepcionPaqueteCompras', 'SolicitudValidacionRecepcionCompras', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacion), 'validacionRecepcionPaqueteCompras', 'RespuestaServicioFacturacion', '',
                                '', IS_UNQL);
  { ServicioFacturacion.recepcionPaqueteCompras }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicioFacturacion), 'recepcionPaqueteCompras', '',
                                 '[ReturnName="RespuestaServicioFacturacion"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacion), 'recepcionPaqueteCompras', 'SolicitudRecepcionCompras', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacion), 'recepcionPaqueteCompras', 'RespuestaServicioFacturacion', '',
                                '', IS_UNQL);
  { ServicioFacturacion.anulacionCompra }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicioFacturacion), 'anulacionCompra', '',
                                 '[ReturnName="RespuestaServicioFacturacion"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacion), 'anulacionCompra', 'SolicitudAnulacionCompra', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacion), 'anulacionCompra', 'RespuestaServicioFacturacion', '',
                                '', IS_UNQL);
  { ServicioFacturacion.confirmacionCompras }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicioFacturacion), 'confirmacionCompras', '',
                                 '[ReturnName="RespuestaServicioFacturacion"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacion), 'confirmacionCompras', 'SolicitudConfirmacionCompras', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacion), 'confirmacionCompras', 'RespuestaServicioFacturacion', '',
                                '', IS_UNQL);
  { ServicioFacturacion.consultaCompras }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicioFacturacion), 'consultaCompras', '',
                                 '[ReturnName="RespuestaServicioFacturacion"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacion), 'consultaCompras', 'SolicitudConsultaCompras', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacion), 'consultaCompras', 'RespuestaServicioFacturacion', '',
                                '', IS_UNQL);
  RemClassRegistry.RegisterXSClass(model, 'https://siat.impuestos.gob.bo/', 'model');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_mensajeRecepcion), 'https://siat.impuestos.gob.bo/', 'Array_Of_mensajeRecepcion');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_mensajeServicio), 'https://siat.impuestos.gob.bo/', 'Array_Of_mensajeServicio');
  RemClassRegistry.RegisterXSClass(modelDto, 'https://siat.impuestos.gob.bo/', 'modelDto');
  RemClassRegistry.RegisterXSClass(respuestaComunicacion, 'https://siat.impuestos.gob.bo/', 'respuestaComunicacion');
  RemClassRegistry.RegisterXSClass(mensajeServicio, 'https://siat.impuestos.gob.bo/', 'mensajeServicio');
  RemClassRegistry.RegisterXSClass(mensajeRecepcion, 'https://siat.impuestos.gob.bo/', 'mensajeRecepcion');
  RemClassRegistry.RegisterXSClass(respuestaRecepcion, 'https://siat.impuestos.gob.bo/', 'respuestaRecepcion');
  RemClassRegistry.RegisterXSClass(respuestaConsultaCompras, 'https://siat.impuestos.gob.bo/', 'respuestaConsultaCompras');
  RemClassRegistry.RegisterXSClass(solicitudCompras, 'https://siat.impuestos.gob.bo/', 'solicitudCompras');
  RemClassRegistry.RegisterXSClass(solicitudRecepcionCompras, 'https://siat.impuestos.gob.bo/', 'solicitudRecepcionCompras');
  RemClassRegistry.RegisterXSClass(solicitudValidacionRecepcionCompras, 'https://siat.impuestos.gob.bo/', 'solicitudValidacionRecepcionCompras');
  RemClassRegistry.RegisterXSClass(solicitudAnulacionCompra, 'https://siat.impuestos.gob.bo/', 'solicitudAnulacionCompra');
  RemClassRegistry.RegisterXSClass(solicitudConsultaCompras, 'https://siat.impuestos.gob.bo/', 'solicitudConsultaCompras');

end.