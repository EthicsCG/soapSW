// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : https://pilotosiatservicios.impuestos.gob.bo/v2/FacturacionSincronizacion?wsdl
//  >Import : https://pilotosiatservicios.impuestos.gob.bo/v2/FacturacionSincronizacion?wsdl=ServicioFacturacionSincronizacion.wsdl
//  >Import : https://pilotosiatservicios.impuestos.gob.bo/v2/FacturacionSincronizacion?wsdl=ServicioFacturacionSincronizacion.wsdl>0
// Encoding : UTF-8
// Version  : 1.0
// (16/05/2023 11:14:32 a. m. - - $Rev: 103843 $)
// ************************************************************************ //

unit FacturacionSincronizacion;

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
  // !:long            - "http://www.w3.org/2001/XMLSchema"[Gbl]

  parametricasDto      = class;                 { "https://siat.impuestos.gob.bo/"[GblCplx] }
  solicitudSincronizacion = class;              { "https://siat.impuestos.gob.bo/"[GblCplx] }
  model                = class;                 { "https://siat.impuestos.gob.bo/"[GblCplx] }
  modelDto             = class;                 { "https://siat.impuestos.gob.bo/"[GblCplx] }
  respuestaConfiguracion = class;               { "https://siat.impuestos.gob.bo/"[GblCplx] }
  respuestaListaParametricas = class;           { "https://siat.impuestos.gob.bo/"[GblCplx] }
  mensajeServicio      = class;                 { "https://siat.impuestos.gob.bo/"[GblCplx] }
  respuestaListaActividadesDocumentoSector = class;   { "https://siat.impuestos.gob.bo/"[GblCplx] }
  actividadesDocumentoSectorDto = class;        { "https://siat.impuestos.gob.bo/"[GblCplx] }
  respuestaComunicacion = class;                { "https://siat.impuestos.gob.bo/"[GblCplx] }
  respuestaListaProductos = class;              { "https://siat.impuestos.gob.bo/"[GblCplx] }
  productosDto         = class;                 { "https://siat.impuestos.gob.bo/"[GblCplx] }
  respuestaListaActividades = class;            { "https://siat.impuestos.gob.bo/"[GblCplx] }
  actividadesDto       = class;                 { "https://siat.impuestos.gob.bo/"[GblCplx] }
  respuestaFechaHora   = class;                 { "https://siat.impuestos.gob.bo/"[GblCplx] }
  respuestaListaParametricasLeyendas = class;   { "https://siat.impuestos.gob.bo/"[GblCplx] }
  parametricaLeyendasDto = class;               { "https://siat.impuestos.gob.bo/"[GblCplx] }

  Array_Of_actividadesDocumentoSectorDto = array of actividadesDocumentoSectorDto;   { "https://siat.impuestos.gob.bo/"[GblUbnd] }
  Array_Of_productosDto = array of productosDto;   { "https://siat.impuestos.gob.bo/"[GblUbnd] }
  Array_Of_parametricasDto = array of parametricasDto;   { "https://siat.impuestos.gob.bo/"[GblUbnd] }
  Array_Of_mensajeServicio = array of mensajeServicio;   { "https://siat.impuestos.gob.bo/"[GblUbnd] }
  Array_Of_actividadesDto = array of actividadesDto;   { "https://siat.impuestos.gob.bo/"[GblUbnd] }
  Array_Of_parametricaLeyendasDto = array of parametricaLeyendasDto;   { "https://siat.impuestos.gob.bo/"[GblUbnd] }


  // ************************************************************************ //
  // XML       : parametricasDto, global, <complexType>
  // Namespace : https://siat.impuestos.gob.bo/
  // ************************************************************************ //
  parametricasDto = class(TRemotable)
  private
    FcodigoClasificador: Integer;
    FcodigoClasificador_Specified: boolean;
    Fdescripcion: string;
    Fdescripcion_Specified: boolean;
    procedure SetcodigoClasificador(Index: Integer; const AInteger: Integer);
    function  codigoClasificador_Specified(Index: Integer): boolean;
    procedure Setdescripcion(Index: Integer; const Astring: string);
    function  descripcion_Specified(Index: Integer): boolean;
  published
    property codigoClasificador: Integer  Index (IS_OPTN or IS_UNQL) read FcodigoClasificador write SetcodigoClasificador stored codigoClasificador_Specified;
    property descripcion:        string   Index (IS_OPTN or IS_UNQL) read Fdescripcion write Setdescripcion stored descripcion_Specified;
  end;

  Array_Of_string = array of string;            { "http://www.w3.org/2001/XMLSchema"[GblUbnd] }


  // ************************************************************************ //
  // XML       : solicitudSincronizacion, global, <complexType>
  // Namespace : https://siat.impuestos.gob.bo/
  // ************************************************************************ //
  solicitudSincronizacion = class(TRemotable)
  private
    FcodigoAmbiente: Integer;
    FcodigoPuntoVenta: Integer;
    FcodigoPuntoVenta_Specified: boolean;
    FcodigoSistema: string;
    FcodigoSucursal: Integer;
    Fcuis: string;
    Fnit: Int64;
    procedure SetcodigoPuntoVenta(Index: Integer; const AInteger: Integer);
    function  codigoPuntoVenta_Specified(Index: Integer): boolean;
  published
    property codigoAmbiente:   Integer  Index (IS_UNQL) read FcodigoAmbiente write FcodigoAmbiente;
    property codigoPuntoVenta: Integer  Index (IS_OPTN or IS_NLBL or IS_UNQL) read FcodigoPuntoVenta write SetcodigoPuntoVenta stored codigoPuntoVenta_Specified;
    property codigoSistema:    string   Index (IS_UNQL) read FcodigoSistema write FcodigoSistema;
    property codigoSucursal:   Integer  Index (IS_UNQL) read FcodigoSucursal write FcodigoSucursal;
    property cuis:             string   Index (IS_UNQL) read Fcuis write Fcuis;
    property nit:              Int64    Index (IS_UNQL) read Fnit write Fnit;
  end;



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
  // XML       : respuestaConfiguracion, global, <complexType>
  // Namespace : https://siat.impuestos.gob.bo/
  // ************************************************************************ //
  respuestaConfiguracion = class(modelDto)
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
  // XML       : respuestaListaParametricas, global, <complexType>
  // Namespace : https://siat.impuestos.gob.bo/
  // ************************************************************************ //
  respuestaListaParametricas = class(respuestaConfiguracion)
  private
    FlistaCodigos: Array_Of_parametricasDto;
    FlistaCodigos_Specified: boolean;
    procedure SetlistaCodigos(Index: Integer; const AArray_Of_parametricasDto: Array_Of_parametricasDto);
    function  listaCodigos_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property listaCodigos: Array_Of_parametricasDto  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FlistaCodigos write SetlistaCodigos stored listaCodigos_Specified;
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
  // XML       : respuestaListaActividadesDocumentoSector, global, <complexType>
  // Namespace : https://siat.impuestos.gob.bo/
  // ************************************************************************ //
  respuestaListaActividadesDocumentoSector = class(respuestaConfiguracion)
  private
    FlistaActividadesDocumentoSector: Array_Of_actividadesDocumentoSectorDto;
    FlistaActividadesDocumentoSector_Specified: boolean;
    procedure SetlistaActividadesDocumentoSector(Index: Integer; const AArray_Of_actividadesDocumentoSectorDto: Array_Of_actividadesDocumentoSectorDto);
    function  listaActividadesDocumentoSector_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property listaActividadesDocumentoSector: Array_Of_actividadesDocumentoSectorDto  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FlistaActividadesDocumentoSector write SetlistaActividadesDocumentoSector stored listaActividadesDocumentoSector_Specified;
  end;



  // ************************************************************************ //
  // XML       : actividadesDocumentoSectorDto, global, <complexType>
  // Namespace : https://siat.impuestos.gob.bo/
  // ************************************************************************ //
  actividadesDocumentoSectorDto = class(modelDto)
  private
    FcodigoActividad: string;
    FcodigoActividad_Specified: boolean;
    FcodigoDocumentoSector: Integer;
    FcodigoDocumentoSector_Specified: boolean;
    FtipoDocumentoSector: string;
    FtipoDocumentoSector_Specified: boolean;
    procedure SetcodigoActividad(Index: Integer; const Astring: string);
    function  codigoActividad_Specified(Index: Integer): boolean;
    procedure SetcodigoDocumentoSector(Index: Integer; const AInteger: Integer);
    function  codigoDocumentoSector_Specified(Index: Integer): boolean;
    procedure SettipoDocumentoSector(Index: Integer; const Astring: string);
    function  tipoDocumentoSector_Specified(Index: Integer): boolean;
  published
    property codigoActividad:       string   Index (IS_OPTN or IS_UNQL) read FcodigoActividad write SetcodigoActividad stored codigoActividad_Specified;
    property codigoDocumentoSector: Integer  Index (IS_OPTN or IS_UNQL) read FcodigoDocumentoSector write SetcodigoDocumentoSector stored codigoDocumentoSector_Specified;
    property tipoDocumentoSector:   string   Index (IS_OPTN or IS_UNQL) read FtipoDocumentoSector write SettipoDocumentoSector stored tipoDocumentoSector_Specified;
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
  // XML       : respuestaListaProductos, global, <complexType>
  // Namespace : https://siat.impuestos.gob.bo/
  // ************************************************************************ //
  respuestaListaProductos = class(respuestaConfiguracion)
  private
    FlistaCodigos: Array_Of_productosDto;
    FlistaCodigos_Specified: boolean;
    procedure SetlistaCodigos(Index: Integer; const AArray_Of_productosDto: Array_Of_productosDto);
    function  listaCodigos_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property listaCodigos: Array_Of_productosDto  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FlistaCodigos write SetlistaCodigos stored listaCodigos_Specified;
  end;



  // ************************************************************************ //
  // XML       : productosDto, global, <complexType>
  // Namespace : https://siat.impuestos.gob.bo/
  // ************************************************************************ //
  productosDto = class(TRemotable)
  private
    FcodigoActividad: string;
    FcodigoActividad_Specified: boolean;
    FcodigoProducto: Int64;
    FcodigoProducto_Specified: boolean;
    FdescripcionProducto: string;
    FdescripcionProducto_Specified: boolean;
    Fnandina: Array_Of_string;
    Fnandina_Specified: boolean;
    procedure SetcodigoActividad(Index: Integer; const Astring: string);
    function  codigoActividad_Specified(Index: Integer): boolean;
    procedure SetcodigoProducto(Index: Integer; const AInt64: Int64);
    function  codigoProducto_Specified(Index: Integer): boolean;
    procedure SetdescripcionProducto(Index: Integer; const Astring: string);
    function  descripcionProducto_Specified(Index: Integer): boolean;
    procedure Setnandina(Index: Integer; const AArray_Of_string: Array_Of_string);
    function  nandina_Specified(Index: Integer): boolean;
  published
    property codigoActividad:     string           Index (IS_OPTN or IS_UNQL) read FcodigoActividad write SetcodigoActividad stored codigoActividad_Specified;
    property codigoProducto:      Int64            Index (IS_OPTN or IS_UNQL) read FcodigoProducto write SetcodigoProducto stored codigoProducto_Specified;
    property descripcionProducto: string           Index (IS_OPTN or IS_UNQL) read FdescripcionProducto write SetdescripcionProducto stored descripcionProducto_Specified;
    property nandina:             Array_Of_string  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Fnandina write Setnandina stored nandina_Specified;
  end;



  // ************************************************************************ //
  // XML       : respuestaListaActividades, global, <complexType>
  // Namespace : https://siat.impuestos.gob.bo/
  // ************************************************************************ //
  respuestaListaActividades = class(respuestaConfiguracion)
  private
    FlistaActividades: Array_Of_actividadesDto;
    FlistaActividades_Specified: boolean;
    procedure SetlistaActividades(Index: Integer; const AArray_Of_actividadesDto: Array_Of_actividadesDto);
    function  listaActividades_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property listaActividades: Array_Of_actividadesDto  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FlistaActividades write SetlistaActividades stored listaActividades_Specified;
  end;



  // ************************************************************************ //
  // XML       : actividadesDto, global, <complexType>
  // Namespace : https://siat.impuestos.gob.bo/
  // ************************************************************************ //
  actividadesDto = class(TRemotable)
  private
    FcodigoCaeb: string;
    FcodigoCaeb_Specified: boolean;
    Fdescripcion: string;
    Fdescripcion_Specified: boolean;
    FtipoActividad: string;
    FtipoActividad_Specified: boolean;
    procedure SetcodigoCaeb(Index: Integer; const Astring: string);
    function  codigoCaeb_Specified(Index: Integer): boolean;
    procedure Setdescripcion(Index: Integer; const Astring: string);
    function  descripcion_Specified(Index: Integer): boolean;
    procedure SettipoActividad(Index: Integer; const Astring: string);
    function  tipoActividad_Specified(Index: Integer): boolean;
  published
    property codigoCaeb:    string  Index (IS_OPTN or IS_UNQL) read FcodigoCaeb write SetcodigoCaeb stored codigoCaeb_Specified;
    property descripcion:   string  Index (IS_OPTN or IS_UNQL) read Fdescripcion write Setdescripcion stored descripcion_Specified;
    property tipoActividad: string  Index (IS_OPTN or IS_UNQL) read FtipoActividad write SettipoActividad stored tipoActividad_Specified;
  end;



  // ************************************************************************ //
  // XML       : respuestaFechaHora, global, <complexType>
  // Namespace : https://siat.impuestos.gob.bo/
  // ************************************************************************ //
  respuestaFechaHora = class(respuestaConfiguracion)
  private
    FfechaHora: string;
    FfechaHora_Specified: boolean;
    procedure SetfechaHora(Index: Integer; const Astring: string);
    function  fechaHora_Specified(Index: Integer): boolean;
  published
    property fechaHora: string  Index (IS_OPTN or IS_UNQL) read FfechaHora write SetfechaHora stored fechaHora_Specified;
  end;



  // ************************************************************************ //
  // XML       : respuestaListaParametricasLeyendas, global, <complexType>
  // Namespace : https://siat.impuestos.gob.bo/
  // ************************************************************************ //
  respuestaListaParametricasLeyendas = class(respuestaConfiguracion)
  private
    FlistaLeyendas: Array_Of_parametricaLeyendasDto;
    FlistaLeyendas_Specified: boolean;
    procedure SetlistaLeyendas(Index: Integer; const AArray_Of_parametricaLeyendasDto: Array_Of_parametricaLeyendasDto);
    function  listaLeyendas_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property listaLeyendas: Array_Of_parametricaLeyendasDto  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FlistaLeyendas write SetlistaLeyendas stored listaLeyendas_Specified;
  end;



  // ************************************************************************ //
  // XML       : parametricaLeyendasDto, global, <complexType>
  // Namespace : https://siat.impuestos.gob.bo/
  // ************************************************************************ //
  parametricaLeyendasDto = class(TRemotable)
  private
    FcodigoActividad: string;
    FcodigoActividad_Specified: boolean;
    FdescripcionLeyenda: string;
    FdescripcionLeyenda_Specified: boolean;
    procedure SetcodigoActividad(Index: Integer; const Astring: string);
    function  codigoActividad_Specified(Index: Integer): boolean;
    procedure SetdescripcionLeyenda(Index: Integer; const Astring: string);
    function  descripcionLeyenda_Specified(Index: Integer): boolean;
  published
    property codigoActividad:    string  Index (IS_OPTN or IS_UNQL) read FcodigoActividad write SetcodigoActividad stored codigoActividad_Specified;
    property descripcionLeyenda: string  Index (IS_OPTN or IS_UNQL) read FdescripcionLeyenda write SetdescripcionLeyenda stored descripcionLeyenda_Specified;
  end;


  // ************************************************************************ //
  // Namespace : https://siat.impuestos.gob.bo/
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : ServicioFacturacionSincronizacionSoapBinding
  // service   : ServicioFacturacionSincronizacion
  // port      : ServicioFacturacionSincronizacionPort
  // URL       : https://pilotosiatservicios.impuestos.gob.bo/v2/FacturacionSincronizacion
  // ************************************************************************ //
  ServicioFacturacionSincronizacion = interface(IInvokable)
  ['{C6CCCB84-6163-A9B5-D9A6-FD583EE06521}']
    function  sincronizarParametricaMotivoAnulacion(const SolicitudSincronizacion: solicitudSincronizacion): respuestaListaParametricas; stdcall;
    function  sincronizarActividades(const SolicitudSincronizacion: solicitudSincronizacion): respuestaListaActividades; stdcall;
    function  sincronizarFechaHora(const SolicitudSincronizacion: solicitudSincronizacion): respuestaFechaHora; stdcall;
    function  sincronizarListaLeyendasFactura(const SolicitudSincronizacion: solicitudSincronizacion): respuestaListaParametricasLeyendas; stdcall;
    function  sincronizarParametricaTipoHabitacion(const SolicitudSincronizacion: solicitudSincronizacion): respuestaListaParametricas; stdcall;
    function  sincronizarListaActividadesDocumentoSector(const SolicitudSincronizacion: solicitudSincronizacion): respuestaListaActividadesDocumentoSector; stdcall;
    function  sincronizarParametricaTipoDocumentoIdentidad(const SolicitudSincronizacion: solicitudSincronizacion): respuestaListaParametricas; stdcall;
    function  sincronizarParametricaUnidadMedida(const SolicitudSincronizacion: solicitudSincronizacion): respuestaListaParametricas; stdcall;
    function  sincronizarParametricaTipoDocumentoSector(const SolicitudSincronizacion: solicitudSincronizacion): respuestaListaParametricas; stdcall;
    function  sincronizarParametricaTiposFactura(const SolicitudSincronizacion: solicitudSincronizacion): respuestaListaParametricas; stdcall;
    function  verificarComunicacion: respuestaComunicacion; stdcall;
    function  sincronizarListaMensajesServicios(const SolicitudSincronizacion: solicitudSincronizacion): respuestaListaParametricas; stdcall;
    function  sincronizarParametricaTipoMetodoPago(const SolicitudSincronizacion: solicitudSincronizacion): respuestaListaParametricas; stdcall;
    function  sincronizarParametricaEventosSignificativos(const SolicitudSincronizacion: solicitudSincronizacion): respuestaListaParametricas; stdcall;
    function  sincronizarParametricaTipoPuntoVenta(const SolicitudSincronizacion: solicitudSincronizacion): respuestaListaParametricas; stdcall;
    function  sincronizarListaProductosServicios(const SolicitudSincronizacion: solicitudSincronizacion): respuestaListaProductos; stdcall;
    function  sincronizarParametricaTipoEmision(const SolicitudSincronizacion: solicitudSincronizacion): respuestaListaParametricas; stdcall;
    function  sincronizarParametricaPaisOrigen(const SolicitudSincronizacion: solicitudSincronizacion): respuestaListaParametricas; stdcall;
    function  sincronizarParametricaTipoMoneda(const SolicitudSincronizacion: solicitudSincronizacion): respuestaListaParametricas; stdcall;
  end;

function GetServicioFacturacionSincronizacion(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): ServicioFacturacionSincronizacion;


implementation
  uses System.SysUtils;

function GetServicioFacturacionSincronizacion(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): ServicioFacturacionSincronizacion;
const
  defWSDL = 'https://pilotosiatservicios.impuestos.gob.bo/v2/FacturacionSincronizacion?wsdl';
  defURL  = 'https://pilotosiatservicios.impuestos.gob.bo/v2/FacturacionSincronizacion';
  defSvc  = 'ServicioFacturacionSincronizacion';
  defPrt  = 'ServicioFacturacionSincronizacionPort';
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
    Result := (RIO as ServicioFacturacionSincronizacion);
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


procedure parametricasDto.SetcodigoClasificador(Index: Integer; const AInteger: Integer);
begin
  FcodigoClasificador := AInteger;
  FcodigoClasificador_Specified := True;
end;

function parametricasDto.codigoClasificador_Specified(Index: Integer): boolean;
begin
  Result := FcodigoClasificador_Specified;
end;

procedure parametricasDto.Setdescripcion(Index: Integer; const Astring: string);
begin
  Fdescripcion := Astring;
  Fdescripcion_Specified := True;
end;

function parametricasDto.descripcion_Specified(Index: Integer): boolean;
begin
  Result := Fdescripcion_Specified;
end;

procedure solicitudSincronizacion.SetcodigoPuntoVenta(Index: Integer; const AInteger: Integer);
begin
  FcodigoPuntoVenta := AInteger;
  FcodigoPuntoVenta_Specified := True;
end;

function solicitudSincronizacion.codigoPuntoVenta_Specified(Index: Integer): boolean;
begin
  Result := FcodigoPuntoVenta_Specified;
end;

destructor respuestaConfiguracion.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FmensajesList)-1 do
    System.SysUtils.FreeAndNil(FmensajesList[I]);
  System.SetLength(FmensajesList, 0);
  inherited Destroy;
end;

procedure respuestaConfiguracion.SetmensajesList(Index: Integer; const AArray_Of_mensajeServicio: Array_Of_mensajeServicio);
begin
  FmensajesList := AArray_Of_mensajeServicio;
  FmensajesList_Specified := True;
end;

function respuestaConfiguracion.mensajesList_Specified(Index: Integer): boolean;
begin
  Result := FmensajesList_Specified;
end;

procedure respuestaConfiguracion.Settransaccion(Index: Integer; const ABoolean: Boolean);
begin
  Ftransaccion := ABoolean;
  Ftransaccion_Specified := True;
end;

function respuestaConfiguracion.transaccion_Specified(Index: Integer): boolean;
begin
  Result := Ftransaccion_Specified;
end;

destructor respuestaListaParametricas.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FlistaCodigos)-1 do
    System.SysUtils.FreeAndNil(FlistaCodigos[I]);
  System.SetLength(FlistaCodigos, 0);
  inherited Destroy;
end;

procedure respuestaListaParametricas.SetlistaCodigos(Index: Integer; const AArray_Of_parametricasDto: Array_Of_parametricasDto);
begin
  FlistaCodigos := AArray_Of_parametricasDto;
  FlistaCodigos_Specified := True;
end;

function respuestaListaParametricas.listaCodigos_Specified(Index: Integer): boolean;
begin
  Result := FlistaCodigos_Specified;
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

destructor respuestaListaActividadesDocumentoSector.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FlistaActividadesDocumentoSector)-1 do
    System.SysUtils.FreeAndNil(FlistaActividadesDocumentoSector[I]);
  System.SetLength(FlistaActividadesDocumentoSector, 0);
  inherited Destroy;
end;

procedure respuestaListaActividadesDocumentoSector.SetlistaActividadesDocumentoSector(Index: Integer; const AArray_Of_actividadesDocumentoSectorDto: Array_Of_actividadesDocumentoSectorDto);
begin
  FlistaActividadesDocumentoSector := AArray_Of_actividadesDocumentoSectorDto;
  FlistaActividadesDocumentoSector_Specified := True;
end;

function respuestaListaActividadesDocumentoSector.listaActividadesDocumentoSector_Specified(Index: Integer): boolean;
begin
  Result := FlistaActividadesDocumentoSector_Specified;
end;

procedure actividadesDocumentoSectorDto.SetcodigoActividad(Index: Integer; const Astring: string);
begin
  FcodigoActividad := Astring;
  FcodigoActividad_Specified := True;
end;

function actividadesDocumentoSectorDto.codigoActividad_Specified(Index: Integer): boolean;
begin
  Result := FcodigoActividad_Specified;
end;

procedure actividadesDocumentoSectorDto.SetcodigoDocumentoSector(Index: Integer; const AInteger: Integer);
begin
  FcodigoDocumentoSector := AInteger;
  FcodigoDocumentoSector_Specified := True;
end;

function actividadesDocumentoSectorDto.codigoDocumentoSector_Specified(Index: Integer): boolean;
begin
  Result := FcodigoDocumentoSector_Specified;
end;

procedure actividadesDocumentoSectorDto.SettipoDocumentoSector(Index: Integer; const Astring: string);
begin
  FtipoDocumentoSector := Astring;
  FtipoDocumentoSector_Specified := True;
end;

function actividadesDocumentoSectorDto.tipoDocumentoSector_Specified(Index: Integer): boolean;
begin
  Result := FtipoDocumentoSector_Specified;
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

destructor respuestaListaProductos.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FlistaCodigos)-1 do
    System.SysUtils.FreeAndNil(FlistaCodigos[I]);
  System.SetLength(FlistaCodigos, 0);
  inherited Destroy;
end;

procedure respuestaListaProductos.SetlistaCodigos(Index: Integer; const AArray_Of_productosDto: Array_Of_productosDto);
begin
  FlistaCodigos := AArray_Of_productosDto;
  FlistaCodigos_Specified := True;
end;

function respuestaListaProductos.listaCodigos_Specified(Index: Integer): boolean;
begin
  Result := FlistaCodigos_Specified;
end;

procedure productosDto.SetcodigoActividad(Index: Integer; const Astring: string);
begin
  FcodigoActividad := Astring;
  FcodigoActividad_Specified := True;
end;

function productosDto.codigoActividad_Specified(Index: Integer): boolean;
begin
  Result := FcodigoActividad_Specified;
end;

procedure productosDto.SetcodigoProducto(Index: Integer; const AInt64: Int64);
begin
  FcodigoProducto := AInt64;
  FcodigoProducto_Specified := True;
end;

function productosDto.codigoProducto_Specified(Index: Integer): boolean;
begin
  Result := FcodigoProducto_Specified;
end;

procedure productosDto.SetdescripcionProducto(Index: Integer; const Astring: string);
begin
  FdescripcionProducto := Astring;
  FdescripcionProducto_Specified := True;
end;

function productosDto.descripcionProducto_Specified(Index: Integer): boolean;
begin
  Result := FdescripcionProducto_Specified;
end;

procedure productosDto.Setnandina(Index: Integer; const AArray_Of_string: Array_Of_string);
begin
  Fnandina := AArray_Of_string;
  Fnandina_Specified := True;
end;

function productosDto.nandina_Specified(Index: Integer): boolean;
begin
  Result := Fnandina_Specified;
end;

destructor respuestaListaActividades.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FlistaActividades)-1 do
    System.SysUtils.FreeAndNil(FlistaActividades[I]);
  System.SetLength(FlistaActividades, 0);
  inherited Destroy;
end;

procedure respuestaListaActividades.SetlistaActividades(Index: Integer; const AArray_Of_actividadesDto: Array_Of_actividadesDto);
begin
  FlistaActividades := AArray_Of_actividadesDto;
  FlistaActividades_Specified := True;
end;

function respuestaListaActividades.listaActividades_Specified(Index: Integer): boolean;
begin
  Result := FlistaActividades_Specified;
end;

procedure actividadesDto.SetcodigoCaeb(Index: Integer; const Astring: string);
begin
  FcodigoCaeb := Astring;
  FcodigoCaeb_Specified := True;
end;

function actividadesDto.codigoCaeb_Specified(Index: Integer): boolean;
begin
  Result := FcodigoCaeb_Specified;
end;

procedure actividadesDto.Setdescripcion(Index: Integer; const Astring: string);
begin
  Fdescripcion := Astring;
  Fdescripcion_Specified := True;
end;

function actividadesDto.descripcion_Specified(Index: Integer): boolean;
begin
  Result := Fdescripcion_Specified;
end;

procedure actividadesDto.SettipoActividad(Index: Integer; const Astring: string);
begin
  FtipoActividad := Astring;
  FtipoActividad_Specified := True;
end;

function actividadesDto.tipoActividad_Specified(Index: Integer): boolean;
begin
  Result := FtipoActividad_Specified;
end;

procedure respuestaFechaHora.SetfechaHora(Index: Integer; const Astring: string);
begin
  FfechaHora := Astring;
  FfechaHora_Specified := True;
end;

function respuestaFechaHora.fechaHora_Specified(Index: Integer): boolean;
begin
  Result := FfechaHora_Specified;
end;

destructor respuestaListaParametricasLeyendas.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FlistaLeyendas)-1 do
    System.SysUtils.FreeAndNil(FlistaLeyendas[I]);
  System.SetLength(FlistaLeyendas, 0);
  inherited Destroy;
end;

procedure respuestaListaParametricasLeyendas.SetlistaLeyendas(Index: Integer; const AArray_Of_parametricaLeyendasDto: Array_Of_parametricaLeyendasDto);
begin
  FlistaLeyendas := AArray_Of_parametricaLeyendasDto;
  FlistaLeyendas_Specified := True;
end;

function respuestaListaParametricasLeyendas.listaLeyendas_Specified(Index: Integer): boolean;
begin
  Result := FlistaLeyendas_Specified;
end;

procedure parametricaLeyendasDto.SetcodigoActividad(Index: Integer; const Astring: string);
begin
  FcodigoActividad := Astring;
  FcodigoActividad_Specified := True;
end;

function parametricaLeyendasDto.codigoActividad_Specified(Index: Integer): boolean;
begin
  Result := FcodigoActividad_Specified;
end;

procedure parametricaLeyendasDto.SetdescripcionLeyenda(Index: Integer; const Astring: string);
begin
  FdescripcionLeyenda := Astring;
  FdescripcionLeyenda_Specified := True;
end;

function parametricaLeyendasDto.descripcionLeyenda_Specified(Index: Integer): boolean;
begin
  Result := FdescripcionLeyenda_Specified;
end;

initialization
  { ServicioFacturacionSincronizacion }
  InvRegistry.RegisterInterface(TypeInfo(ServicioFacturacionSincronizacion), 'https://siat.impuestos.gob.bo/', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(ServicioFacturacionSincronizacion), '');
  InvRegistry.RegisterInvokeOptions(TypeInfo(ServicioFacturacionSincronizacion), ioDocument);
  { ServicioFacturacionSincronizacion.sincronizarParametricaMotivoAnulacion }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicioFacturacionSincronizacion), 'sincronizarParametricaMotivoAnulacion', '',
                                 '[ReturnName="RespuestaListaParametricas"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacionSincronizacion), 'sincronizarParametricaMotivoAnulacion', 'SolicitudSincronizacion', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacionSincronizacion), 'sincronizarParametricaMotivoAnulacion', 'RespuestaListaParametricas', '',
                                '', IS_UNQL);
  { ServicioFacturacionSincronizacion.sincronizarActividades }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicioFacturacionSincronizacion), 'sincronizarActividades', '',
                                 '[ReturnName="RespuestaListaActividades"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacionSincronizacion), 'sincronizarActividades', 'SolicitudSincronizacion', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacionSincronizacion), 'sincronizarActividades', 'RespuestaListaActividades', '',
                                '', IS_UNQL);
  { ServicioFacturacionSincronizacion.sincronizarFechaHora }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicioFacturacionSincronizacion), 'sincronizarFechaHora', '',
                                 '[ReturnName="RespuestaFechaHora"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacionSincronizacion), 'sincronizarFechaHora', 'SolicitudSincronizacion', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacionSincronizacion), 'sincronizarFechaHora', 'RespuestaFechaHora', '',
                                '', IS_UNQL);
  { ServicioFacturacionSincronizacion.sincronizarListaLeyendasFactura }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicioFacturacionSincronizacion), 'sincronizarListaLeyendasFactura', '',
                                 '[ReturnName="RespuestaListaParametricasLeyendas"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacionSincronizacion), 'sincronizarListaLeyendasFactura', 'SolicitudSincronizacion', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacionSincronizacion), 'sincronizarListaLeyendasFactura', 'RespuestaListaParametricasLeyendas', '',
                                '', IS_UNQL);
  { ServicioFacturacionSincronizacion.sincronizarParametricaTipoHabitacion }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicioFacturacionSincronizacion), 'sincronizarParametricaTipoHabitacion', '',
                                 '[ReturnName="RespuestaListaParametricas"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacionSincronizacion), 'sincronizarParametricaTipoHabitacion', 'SolicitudSincronizacion', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacionSincronizacion), 'sincronizarParametricaTipoHabitacion', 'RespuestaListaParametricas', '',
                                '', IS_UNQL);
  { ServicioFacturacionSincronizacion.sincronizarListaActividadesDocumentoSector }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicioFacturacionSincronizacion), 'sincronizarListaActividadesDocumentoSector', '',
                                 '[ReturnName="RespuestaListaActividadesDocumentoSector"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacionSincronizacion), 'sincronizarListaActividadesDocumentoSector', 'SolicitudSincronizacion', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacionSincronizacion), 'sincronizarListaActividadesDocumentoSector', 'RespuestaListaActividadesDocumentoSector', '',
                                '', IS_UNQL);
  { ServicioFacturacionSincronizacion.sincronizarParametricaTipoDocumentoIdentidad }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicioFacturacionSincronizacion), 'sincronizarParametricaTipoDocumentoIdentidad', '',
                                 '[ReturnName="RespuestaListaParametricas"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacionSincronizacion), 'sincronizarParametricaTipoDocumentoIdentidad', 'SolicitudSincronizacion', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacionSincronizacion), 'sincronizarParametricaTipoDocumentoIdentidad', 'RespuestaListaParametricas', '',
                                '', IS_UNQL);
  { ServicioFacturacionSincronizacion.sincronizarParametricaUnidadMedida }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicioFacturacionSincronizacion), 'sincronizarParametricaUnidadMedida', '',
                                 '[ReturnName="RespuestaListaParametricas"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacionSincronizacion), 'sincronizarParametricaUnidadMedida', 'SolicitudSincronizacion', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacionSincronizacion), 'sincronizarParametricaUnidadMedida', 'RespuestaListaParametricas', '',
                                '', IS_UNQL);
  { ServicioFacturacionSincronizacion.sincronizarParametricaTipoDocumentoSector }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicioFacturacionSincronizacion), 'sincronizarParametricaTipoDocumentoSector', '',
                                 '[ReturnName="RespuestaListaParametricas"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacionSincronizacion), 'sincronizarParametricaTipoDocumentoSector', 'SolicitudSincronizacion', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacionSincronizacion), 'sincronizarParametricaTipoDocumentoSector', 'RespuestaListaParametricas', '',
                                '', IS_UNQL);
  { ServicioFacturacionSincronizacion.sincronizarParametricaTiposFactura }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicioFacturacionSincronizacion), 'sincronizarParametricaTiposFactura', '',
                                 '[ReturnName="RespuestaListaParametricas"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacionSincronizacion), 'sincronizarParametricaTiposFactura', 'SolicitudSincronizacion', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacionSincronizacion), 'sincronizarParametricaTiposFactura', 'RespuestaListaParametricas', '',
                                '', IS_UNQL);
  { ServicioFacturacionSincronizacion.verificarComunicacion }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicioFacturacionSincronizacion), 'verificarComunicacion', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacionSincronizacion), 'verificarComunicacion', 'return', '',
                                '', IS_UNQL);
  { ServicioFacturacionSincronizacion.sincronizarListaMensajesServicios }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicioFacturacionSincronizacion), 'sincronizarListaMensajesServicios', '',
                                 '[ReturnName="RespuestaListaParametricas"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacionSincronizacion), 'sincronizarListaMensajesServicios', 'SolicitudSincronizacion', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacionSincronizacion), 'sincronizarListaMensajesServicios', 'RespuestaListaParametricas', '',
                                '', IS_UNQL);
  { ServicioFacturacionSincronizacion.sincronizarParametricaTipoMetodoPago }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicioFacturacionSincronizacion), 'sincronizarParametricaTipoMetodoPago', '',
                                 '[ReturnName="RespuestaListaParametricas"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacionSincronizacion), 'sincronizarParametricaTipoMetodoPago', 'SolicitudSincronizacion', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacionSincronizacion), 'sincronizarParametricaTipoMetodoPago', 'RespuestaListaParametricas', '',
                                '', IS_UNQL);
  { ServicioFacturacionSincronizacion.sincronizarParametricaEventosSignificativos }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicioFacturacionSincronizacion), 'sincronizarParametricaEventosSignificativos', '',
                                 '[ReturnName="RespuestaListaParametricas"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacionSincronizacion), 'sincronizarParametricaEventosSignificativos', 'SolicitudSincronizacion', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacionSincronizacion), 'sincronizarParametricaEventosSignificativos', 'RespuestaListaParametricas', '',
                                '', IS_UNQL);
  { ServicioFacturacionSincronizacion.sincronizarParametricaTipoPuntoVenta }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicioFacturacionSincronizacion), 'sincronizarParametricaTipoPuntoVenta', '',
                                 '[ReturnName="RespuestaListaParametricas"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacionSincronizacion), 'sincronizarParametricaTipoPuntoVenta', 'SolicitudSincronizacion', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacionSincronizacion), 'sincronizarParametricaTipoPuntoVenta', 'RespuestaListaParametricas', '',
                                '', IS_UNQL);
  { ServicioFacturacionSincronizacion.sincronizarListaProductosServicios }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicioFacturacionSincronizacion), 'sincronizarListaProductosServicios', '',
                                 '[ReturnName="RespuestaListaProductos"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacionSincronizacion), 'sincronizarListaProductosServicios', 'SolicitudSincronizacion', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacionSincronizacion), 'sincronizarListaProductosServicios', 'RespuestaListaProductos', '',
                                '', IS_UNQL);
  { ServicioFacturacionSincronizacion.sincronizarParametricaTipoEmision }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicioFacturacionSincronizacion), 'sincronizarParametricaTipoEmision', '',
                                 '[ReturnName="RespuestaListaParametricas"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacionSincronizacion), 'sincronizarParametricaTipoEmision', 'SolicitudSincronizacion', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacionSincronizacion), 'sincronizarParametricaTipoEmision', 'RespuestaListaParametricas', '',
                                '', IS_UNQL);
  { ServicioFacturacionSincronizacion.sincronizarParametricaPaisOrigen }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicioFacturacionSincronizacion), 'sincronizarParametricaPaisOrigen', '',
                                 '[ReturnName="RespuestaListaParametricas"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacionSincronizacion), 'sincronizarParametricaPaisOrigen', 'SolicitudSincronizacion', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacionSincronizacion), 'sincronizarParametricaPaisOrigen', 'RespuestaListaParametricas', '',
                                '', IS_UNQL);
  { ServicioFacturacionSincronizacion.sincronizarParametricaTipoMoneda }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicioFacturacionSincronizacion), 'sincronizarParametricaTipoMoneda', '',
                                 '[ReturnName="RespuestaListaParametricas"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacionSincronizacion), 'sincronizarParametricaTipoMoneda', 'SolicitudSincronizacion', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacionSincronizacion), 'sincronizarParametricaTipoMoneda', 'RespuestaListaParametricas', '',
                                '', IS_UNQL);
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_actividadesDocumentoSectorDto), 'https://siat.impuestos.gob.bo/', 'Array_Of_actividadesDocumentoSectorDto');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_productosDto), 'https://siat.impuestos.gob.bo/', 'Array_Of_productosDto');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_parametricasDto), 'https://siat.impuestos.gob.bo/', 'Array_Of_parametricasDto');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_mensajeServicio), 'https://siat.impuestos.gob.bo/', 'Array_Of_mensajeServicio');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_actividadesDto), 'https://siat.impuestos.gob.bo/', 'Array_Of_actividadesDto');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_parametricaLeyendasDto), 'https://siat.impuestos.gob.bo/', 'Array_Of_parametricaLeyendasDto');
  RemClassRegistry.RegisterXSClass(parametricasDto, 'https://siat.impuestos.gob.bo/', 'parametricasDto');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_string), 'http://www.w3.org/2001/XMLSchema', 'Array_Of_string');
  RemClassRegistry.RegisterXSClass(solicitudSincronizacion, 'https://siat.impuestos.gob.bo/', 'solicitudSincronizacion');
  RemClassRegistry.RegisterXSClass(model, 'https://siat.impuestos.gob.bo/', 'model');
  RemClassRegistry.RegisterXSClass(modelDto, 'https://siat.impuestos.gob.bo/', 'modelDto');
  RemClassRegistry.RegisterXSClass(respuestaConfiguracion, 'https://siat.impuestos.gob.bo/', 'respuestaConfiguracion');
  RemClassRegistry.RegisterXSClass(respuestaListaParametricas, 'https://siat.impuestos.gob.bo/', 'respuestaListaParametricas');
  RemClassRegistry.RegisterXSClass(mensajeServicio, 'https://siat.impuestos.gob.bo/', 'mensajeServicio');
  RemClassRegistry.RegisterXSClass(respuestaListaActividadesDocumentoSector, 'https://siat.impuestos.gob.bo/', 'respuestaListaActividadesDocumentoSector');
  RemClassRegistry.RegisterXSClass(actividadesDocumentoSectorDto, 'https://siat.impuestos.gob.bo/', 'actividadesDocumentoSectorDto');
  RemClassRegistry.RegisterXSClass(respuestaComunicacion, 'https://siat.impuestos.gob.bo/', 'respuestaComunicacion');
  RemClassRegistry.RegisterXSClass(respuestaListaProductos, 'https://siat.impuestos.gob.bo/', 'respuestaListaProductos');
  RemClassRegistry.RegisterXSClass(productosDto, 'https://siat.impuestos.gob.bo/', 'productosDto');
  RemClassRegistry.RegisterXSClass(respuestaListaActividades, 'https://siat.impuestos.gob.bo/', 'respuestaListaActividades');
  RemClassRegistry.RegisterXSClass(actividadesDto, 'https://siat.impuestos.gob.bo/', 'actividadesDto');
  RemClassRegistry.RegisterXSClass(respuestaFechaHora, 'https://siat.impuestos.gob.bo/', 'respuestaFechaHora');
  RemClassRegistry.RegisterXSClass(respuestaListaParametricasLeyendas, 'https://siat.impuestos.gob.bo/', 'respuestaListaParametricasLeyendas');
  RemClassRegistry.RegisterXSClass(parametricaLeyendasDto, 'https://siat.impuestos.gob.bo/', 'parametricaLeyendasDto');

end.