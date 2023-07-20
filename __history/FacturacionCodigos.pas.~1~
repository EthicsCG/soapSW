// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : https://pilotosiatservicios.impuestos.gob.bo/v2/FacturacionCodigos?wsdl
//  >Import : https://pilotosiatservicios.impuestos.gob.bo/v2/FacturacionCodigos?wsdl=ServicioFacturacionCodigos.wsdl
//  >Import : https://pilotosiatservicios.impuestos.gob.bo/v2/FacturacionCodigos?wsdl=ServicioFacturacionCodigos.wsdl>0
// Encoding : UTF-8
// Version  : 1.0
// (08/05/2023 12:17:06 p. m. - - $Rev: 103843 $)
// ************************************************************************ //

unit FacturacionCodigos;

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
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:long            - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:int             - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:dateTime        - "http://www.w3.org/2001/XMLSchema"[Gbl]

  solicitudVerificarNit = class;                { "https://siat.impuestos.gob.bo/"[GblCplx] }
  solicitudListaCufdDto = class;                { "https://siat.impuestos.gob.bo/"[GblCplx] }
  model                = class;                 { "https://siat.impuestos.gob.bo/"[GblCplx] }
  modelDto             = class;                 { "https://siat.impuestos.gob.bo/"[GblCplx] }
  respuestaCufdMasivo  = class;                 { "https://siat.impuestos.gob.bo/"[GblCplx] }
  respuestaConfiguracion = class;               { "https://siat.impuestos.gob.bo/"[GblCplx] }
  respuestaVerificarNit = class;                { "https://siat.impuestos.gob.bo/"[GblCplx] }
  respuestaComunicacion = class;                { "https://siat.impuestos.gob.bo/"[GblCplx] }
  mensajeServicio      = class;                 { "https://siat.impuestos.gob.bo/"[GblCplx] }
  solicitudCuisMasivoSistemas = class;          { "https://siat.impuestos.gob.bo/"[GblCplx] }
  respuestaNotificaRevocado = class;            { "https://siat.impuestos.gob.bo/"[GblCplx] }
  solicitudCuis        = class;                 { "https://siat.impuestos.gob.bo/"[GblCplx] }
  solicitudCufdMasivo  = class;                 { "https://siat.impuestos.gob.bo/"[GblCplx] }
  solicitudListaCuisDto = class;                { "https://siat.impuestos.gob.bo/"[GblCplx] }
  respuestaCuisMasivo  = class;                 { "https://siat.impuestos.gob.bo/"[GblCplx] }
  respuestaListaRegistroCuisSoapDto = class;    { "https://siat.impuestos.gob.bo/"[GblCplx] }
  respuestaCufd        = class;                 { "https://siat.impuestos.gob.bo/"[GblCplx] }
  respuestaCuis        = class;                 { "https://siat.impuestos.gob.bo/"[GblCplx] }
  solicitudNotifcaRevocado = class;             { "https://siat.impuestos.gob.bo/"[GblCplx] }
  respuestaListaRegistroCufdSoapDto = class;    { "https://siat.impuestos.gob.bo/"[GblCplx] }
  solicitudCufd        = class;                 { "https://siat.impuestos.gob.bo/"[GblCplx] }

  Array_Of_respuestaListaRegistroCufdSoapDto = array of respuestaListaRegistroCufdSoapDto;   { "https://siat.impuestos.gob.bo/"[GblUbnd] }
  Array_Of_mensajeServicio = array of mensajeServicio;   { "https://siat.impuestos.gob.bo/"[GblUbnd] }
  Array_Of_solicitudListaCuisDto = array of solicitudListaCuisDto;   { "https://siat.impuestos.gob.bo/"[GblUbnd] }
  Array_Of_respuestaListaRegistroCuisSoapDto = array of respuestaListaRegistroCuisSoapDto;   { "https://siat.impuestos.gob.bo/"[GblUbnd] }
  Array_Of_solicitudListaCufdDto = array of solicitudListaCufdDto;   { "https://siat.impuestos.gob.bo/"[GblUbnd] }


  // ************************************************************************ //
  // XML       : solicitudVerificarNit, global, <complexType>
  // Namespace : https://siat.impuestos.gob.bo/
  // ************************************************************************ //
  solicitudVerificarNit = class(TRemotable)
  private
    FcodigoAmbiente: Integer;
    FcodigoModalidad: Integer;
    FcodigoSistema: string;
    FcodigoSucursal: Integer;
    Fcuis: string;
    Fnit: Int64;
    FnitParaVerificacion: Int64;
  published
    property codigoAmbiente:      Integer  Index (IS_UNQL) read FcodigoAmbiente write FcodigoAmbiente;
    property codigoModalidad:     Integer  Index (IS_UNQL) read FcodigoModalidad write FcodigoModalidad;
    property codigoSistema:       string   Index (IS_UNQL) read FcodigoSistema write FcodigoSistema;
    property codigoSucursal:      Integer  Index (IS_UNQL) read FcodigoSucursal write FcodigoSucursal;
    property cuis:                string   Index (IS_UNQL) read Fcuis write Fcuis;
    property nit:                 Int64    Index (IS_UNQL) read Fnit write Fnit;
    property nitParaVerificacion: Int64    Index (IS_UNQL) read FnitParaVerificacion write FnitParaVerificacion;
  end;



  // ************************************************************************ //
  // XML       : solicitudListaCufdDto, global, <complexType>
  // Namespace : https://siat.impuestos.gob.bo/
  // ************************************************************************ //
  solicitudListaCufdDto = class(TRemotable)
  private
    FcodigoPuntoVenta: Integer;
    FcodigoPuntoVenta_Specified: boolean;
    FcodigoSucursal: Integer;
    Fcuis: string;
    procedure SetcodigoPuntoVenta(Index: Integer; const AInteger: Integer);
    function  codigoPuntoVenta_Specified(Index: Integer): boolean;
  published
    property codigoPuntoVenta: Integer  Index (IS_OPTN or IS_UNQL) read FcodigoPuntoVenta write SetcodigoPuntoVenta stored codigoPuntoVenta_Specified;
    property codigoSucursal:   Integer  Index (IS_UNQL) read FcodigoSucursal write FcodigoSucursal;
    property cuis:             string   Index (IS_UNQL) read Fcuis write Fcuis;
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
  // XML       : respuestaCufdMasivo, global, <complexType>
  // Namespace : https://siat.impuestos.gob.bo/
  // ************************************************************************ //
  respuestaCufdMasivo = class(modelDto)
  private
    FlistaRespuestasCufd: Array_Of_respuestaListaRegistroCufdSoapDto;
    FlistaRespuestasCufd_Specified: boolean;
    FmensajesList: Array_Of_mensajeServicio;
    FmensajesList_Specified: boolean;
    Ftransaccion: Boolean;
    Ftransaccion_Specified: boolean;
    procedure SetlistaRespuestasCufd(Index: Integer; const AArray_Of_respuestaListaRegistroCufdSoapDto: Array_Of_respuestaListaRegistroCufdSoapDto);
    function  listaRespuestasCufd_Specified(Index: Integer): boolean;
    procedure SetmensajesList(Index: Integer; const AArray_Of_mensajeServicio: Array_Of_mensajeServicio);
    function  mensajesList_Specified(Index: Integer): boolean;
    procedure Settransaccion(Index: Integer; const ABoolean: Boolean);
    function  transaccion_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property listaRespuestasCufd: Array_Of_respuestaListaRegistroCufdSoapDto  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FlistaRespuestasCufd write SetlistaRespuestasCufd stored listaRespuestasCufd_Specified;
    property mensajesList:        Array_Of_mensajeServicio                    Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FmensajesList write SetmensajesList stored mensajesList_Specified;
    property transaccion:         Boolean                                     Index (IS_OPTN or IS_UNQL) read Ftransaccion write Settransaccion stored transaccion_Specified;
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
  // XML       : respuestaVerificarNit, global, <complexType>
  // Namespace : https://siat.impuestos.gob.bo/
  // ************************************************************************ //
  respuestaVerificarNit = class(respuestaConfiguracion)
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
  // XML       : solicitudCuisMasivoSistemas, global, <complexType>
  // Namespace : https://siat.impuestos.gob.bo/
  // ************************************************************************ //
  solicitudCuisMasivoSistemas = class(TRemotable)
  private
    FcodigoAmbiente: Integer;
    FcodigoModalidad: Integer;
    FcodigoSistema: string;
    FdatosSolicitud: Array_Of_solicitudListaCuisDto;
    Fnit: Int64;
  public
    destructor Destroy; override;
  published
    property codigoAmbiente:  Integer                         Index (IS_UNQL) read FcodigoAmbiente write FcodigoAmbiente;
    property codigoModalidad: Integer                         Index (IS_UNQL) read FcodigoModalidad write FcodigoModalidad;
    property codigoSistema:   string                          Index (IS_UNQL) read FcodigoSistema write FcodigoSistema;
    property datosSolicitud:  Array_Of_solicitudListaCuisDto  Index (IS_UNBD or IS_UNQL) read FdatosSolicitud write FdatosSolicitud;
    property nit:             Int64                           Index (IS_UNQL) read Fnit write Fnit;
  end;



  // ************************************************************************ //
  // XML       : respuestaNotificaRevocado, global, <complexType>
  // Namespace : https://siat.impuestos.gob.bo/
  // ************************************************************************ //
  respuestaNotificaRevocado = class(respuestaConfiguracion)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : solicitudCuis, global, <complexType>
  // Namespace : https://siat.impuestos.gob.bo/
  // ************************************************************************ //
  solicitudCuis = class(TRemotable)
  private
    FcodigoAmbiente: Integer;
    FcodigoModalidad: Integer;
    FcodigoPuntoVenta: Integer;
    FcodigoPuntoVenta_Specified: boolean;
    FcodigoSistema: string;
    FcodigoSucursal: Integer;
    Fnit: Int64;
    procedure SetcodigoPuntoVenta(Index: Integer; const AInteger: Integer);
    function  codigoPuntoVenta_Specified(Index: Integer): boolean;
  published
    property codigoAmbiente:   Integer  Index (IS_UNQL) read FcodigoAmbiente write FcodigoAmbiente;
    property codigoModalidad:  Integer  Index (IS_UNQL) read FcodigoModalidad write FcodigoModalidad;
    property codigoPuntoVenta: Integer  Index (IS_OPTN or IS_NLBL or IS_UNQL) read FcodigoPuntoVenta write SetcodigoPuntoVenta stored codigoPuntoVenta_Specified;
    property codigoSistema:    string   Index (IS_UNQL) read FcodigoSistema write FcodigoSistema;
    property codigoSucursal:   Integer  Index (IS_UNQL) read FcodigoSucursal write FcodigoSucursal;
    property nit:              Int64    Index (IS_UNQL) read Fnit write Fnit;
  end;



  // ************************************************************************ //
  // XML       : solicitudCufdMasivo, global, <complexType>
  // Namespace : https://siat.impuestos.gob.bo/
  // ************************************************************************ //
  solicitudCufdMasivo = class(TRemotable)
  private
    FcodigoAmbiente: Integer;
    FcodigoModalidad: Integer;
    FcodigoSistema: string;
    FdatosSolicitud: Array_Of_solicitudListaCufdDto;
    Fnit: Int64;
  public
    destructor Destroy; override;
  published
    property codigoAmbiente:  Integer                         Index (IS_UNQL) read FcodigoAmbiente write FcodigoAmbiente;
    property codigoModalidad: Integer                         Index (IS_UNQL) read FcodigoModalidad write FcodigoModalidad;
    property codigoSistema:   string                          Index (IS_UNQL) read FcodigoSistema write FcodigoSistema;
    property datosSolicitud:  Array_Of_solicitudListaCufdDto  Index (IS_UNBD or IS_UNQL) read FdatosSolicitud write FdatosSolicitud;
    property nit:             Int64                           Index (IS_UNQL) read Fnit write Fnit;
  end;



  // ************************************************************************ //
  // XML       : solicitudListaCuisDto, global, <complexType>
  // Namespace : https://siat.impuestos.gob.bo/
  // ************************************************************************ //
  solicitudListaCuisDto = class(TRemotable)
  private
    FcodigoPuntoVenta: Integer;
    FcodigoPuntoVenta_Specified: boolean;
    FcodigoSucursal: Integer;
    procedure SetcodigoPuntoVenta(Index: Integer; const AInteger: Integer);
    function  codigoPuntoVenta_Specified(Index: Integer): boolean;
  published
    property codigoPuntoVenta: Integer  Index (IS_OPTN or IS_UNQL) read FcodigoPuntoVenta write SetcodigoPuntoVenta stored codigoPuntoVenta_Specified;
    property codigoSucursal:   Integer  Index (IS_UNQL) read FcodigoSucursal write FcodigoSucursal;
  end;



  // ************************************************************************ //
  // XML       : respuestaCuisMasivo, global, <complexType>
  // Namespace : https://siat.impuestos.gob.bo/
  // ************************************************************************ //
  respuestaCuisMasivo = class(modelDto)
  private
    FlistaRespuestasCuis: Array_Of_respuestaListaRegistroCuisSoapDto;
    FlistaRespuestasCuis_Specified: boolean;
    FmensajesList: Array_Of_mensajeServicio;
    FmensajesList_Specified: boolean;
    Ftransaccion: Boolean;
    Ftransaccion_Specified: boolean;
    procedure SetlistaRespuestasCuis(Index: Integer; const AArray_Of_respuestaListaRegistroCuisSoapDto: Array_Of_respuestaListaRegistroCuisSoapDto);
    function  listaRespuestasCuis_Specified(Index: Integer): boolean;
    procedure SetmensajesList(Index: Integer; const AArray_Of_mensajeServicio: Array_Of_mensajeServicio);
    function  mensajesList_Specified(Index: Integer): boolean;
    procedure Settransaccion(Index: Integer; const ABoolean: Boolean);
    function  transaccion_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property listaRespuestasCuis: Array_Of_respuestaListaRegistroCuisSoapDto  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FlistaRespuestasCuis write SetlistaRespuestasCuis stored listaRespuestasCuis_Specified;
    property mensajesList:        Array_Of_mensajeServicio                    Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FmensajesList write SetmensajesList stored mensajesList_Specified;
    property transaccion:         Boolean                                     Index (IS_OPTN or IS_UNQL) read Ftransaccion write Settransaccion stored transaccion_Specified;
  end;



  // ************************************************************************ //
  // XML       : respuestaListaRegistroCuisSoapDto, global, <complexType>
  // Namespace : https://siat.impuestos.gob.bo/
  // ************************************************************************ //
  respuestaListaRegistroCuisSoapDto = class(TRemotable)
  private
    Fcodigo: string;
    Fcodigo_Specified: boolean;
    FcodigoPuntoVenta: Integer;
    FcodigoPuntoVenta_Specified: boolean;
    FcodigoSucursal: Integer;
    FcodigoSucursal_Specified: boolean;
    FfechaVigencia: TXSDateTime;
    FfechaVigencia_Specified: boolean;
    FmensajeServicioList: Array_Of_mensajeServicio;
    FmensajeServicioList_Specified: boolean;
    Ftransaccion: Boolean;
    procedure Setcodigo(Index: Integer; const Astring: string);
    function  codigo_Specified(Index: Integer): boolean;
    procedure SetcodigoPuntoVenta(Index: Integer; const AInteger: Integer);
    function  codigoPuntoVenta_Specified(Index: Integer): boolean;
    procedure SetcodigoSucursal(Index: Integer; const AInteger: Integer);
    function  codigoSucursal_Specified(Index: Integer): boolean;
    procedure SetfechaVigencia(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  fechaVigencia_Specified(Index: Integer): boolean;
    procedure SetmensajeServicioList(Index: Integer; const AArray_Of_mensajeServicio: Array_Of_mensajeServicio);
    function  mensajeServicioList_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property codigo:              string                    Index (IS_OPTN or IS_UNQL) read Fcodigo write Setcodigo stored codigo_Specified;
    property codigoPuntoVenta:    Integer                   Index (IS_OPTN or IS_UNQL) read FcodigoPuntoVenta write SetcodigoPuntoVenta stored codigoPuntoVenta_Specified;
    property codigoSucursal:      Integer                   Index (IS_OPTN or IS_UNQL) read FcodigoSucursal write SetcodigoSucursal stored codigoSucursal_Specified;
    property fechaVigencia:       TXSDateTime               Index (IS_OPTN or IS_UNQL) read FfechaVigencia write SetfechaVigencia stored fechaVigencia_Specified;
    property mensajeServicioList: Array_Of_mensajeServicio  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FmensajeServicioList write SetmensajeServicioList stored mensajeServicioList_Specified;
    property transaccion:         Boolean                   Index (IS_UNQL) read Ftransaccion write Ftransaccion;
  end;



  // ************************************************************************ //
  // XML       : respuestaCufd, global, <complexType>
  // Namespace : https://siat.impuestos.gob.bo/
  // ************************************************************************ //
  respuestaCufd = class(modelDto)
  private
    Fcodigo: string;
    Fcodigo_Specified: boolean;
    FcodigoControl: string;
    FcodigoControl_Specified: boolean;
    Fdireccion: string;
    Fdireccion_Specified: boolean;
    FfechaVigencia: TXSDateTime;
    FfechaVigencia_Specified: boolean;
    FmensajesList: Array_Of_mensajeServicio;
    FmensajesList_Specified: boolean;
    Ftransaccion: Boolean;
    Ftransaccion_Specified: boolean;
    procedure Setcodigo(Index: Integer; const Astring: string);
    function  codigo_Specified(Index: Integer): boolean;
    procedure SetcodigoControl(Index: Integer; const Astring: string);
    function  codigoControl_Specified(Index: Integer): boolean;
    procedure Setdireccion(Index: Integer; const Astring: string);
    function  direccion_Specified(Index: Integer): boolean;
    procedure SetfechaVigencia(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  fechaVigencia_Specified(Index: Integer): boolean;
    procedure SetmensajesList(Index: Integer; const AArray_Of_mensajeServicio: Array_Of_mensajeServicio);
    function  mensajesList_Specified(Index: Integer): boolean;
    procedure Settransaccion(Index: Integer; const ABoolean: Boolean);
    function  transaccion_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property codigo:        string                    Index (IS_OPTN or IS_UNQL) read Fcodigo write Setcodigo stored codigo_Specified;
    property codigoControl: string                    Index (IS_OPTN or IS_UNQL) read FcodigoControl write SetcodigoControl stored codigoControl_Specified;
    property direccion:     string                    Index (IS_OPTN or IS_UNQL) read Fdireccion write Setdireccion stored direccion_Specified;
    property fechaVigencia: TXSDateTime               Index (IS_OPTN or IS_UNQL) read FfechaVigencia write SetfechaVigencia stored fechaVigencia_Specified;
    property mensajesList:  Array_Of_mensajeServicio  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FmensajesList write SetmensajesList stored mensajesList_Specified;
    property transaccion:   Boolean                   Index (IS_OPTN or IS_UNQL) read Ftransaccion write Settransaccion stored transaccion_Specified;
  end;



  // ************************************************************************ //
  // XML       : respuestaCuis, global, <complexType>
  // Namespace : https://siat.impuestos.gob.bo/
  // ************************************************************************ //
  respuestaCuis = class(modelDto)
  private
    Fcodigo: string;
    Fcodigo_Specified: boolean;
    FfechaVigencia: TXSDateTime;
    FfechaVigencia_Specified: boolean;
    FmensajesList: Array_Of_mensajeServicio;
    FmensajesList_Specified: boolean;
    Ftransaccion: Boolean;
    Ftransaccion_Specified: boolean;
    procedure Setcodigo(Index: Integer; const Astring: string);
    function  codigo_Specified(Index: Integer): boolean;
    procedure SetfechaVigencia(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  fechaVigencia_Specified(Index: Integer): boolean;
    procedure SetmensajesList(Index: Integer; const AArray_Of_mensajeServicio: Array_Of_mensajeServicio);
    function  mensajesList_Specified(Index: Integer): boolean;
    procedure Settransaccion(Index: Integer; const ABoolean: Boolean);
    function  transaccion_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property codigo:        string                    Index (IS_OPTN or IS_UNQL) read Fcodigo write Setcodigo stored codigo_Specified;
    property fechaVigencia: TXSDateTime               Index (IS_OPTN or IS_UNQL) read FfechaVigencia write SetfechaVigencia stored fechaVigencia_Specified;
    property mensajesList:  Array_Of_mensajeServicio  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FmensajesList write SetmensajesList stored mensajesList_Specified;
    property transaccion:   Boolean                   Index (IS_OPTN or IS_UNQL) read Ftransaccion write Settransaccion stored transaccion_Specified;
  end;



  // ************************************************************************ //
  // XML       : solicitudNotifcaRevocado, global, <complexType>
  // Namespace : https://siat.impuestos.gob.bo/
  // ************************************************************************ //
  solicitudNotifcaRevocado = class(TRemotable)
  private
    Fcertificado: string;
    FcodigoAmbiente: Integer;
    FcodigoSistema: string;
    FcodigoSucursal: Integer;
    Fcuis: string;
    FfechaRevocacion: TXSDateTime;
    FfechaRevocacion_Specified: boolean;
    Fnit: Int64;
    FrazonRevocacion: string;
    procedure SetfechaRevocacion(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  fechaRevocacion_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property certificado:     string       Index (IS_UNQL) read Fcertificado write Fcertificado;
    property codigoAmbiente:  Integer      Index (IS_UNQL) read FcodigoAmbiente write FcodigoAmbiente;
    property codigoSistema:   string       Index (IS_UNQL) read FcodigoSistema write FcodigoSistema;
    property codigoSucursal:  Integer      Index (IS_UNQL) read FcodigoSucursal write FcodigoSucursal;
    property cuis:            string       Index (IS_UNQL) read Fcuis write Fcuis;
    property fechaRevocacion: TXSDateTime  Index (IS_OPTN or IS_NLBL or IS_UNQL) read FfechaRevocacion write SetfechaRevocacion stored fechaRevocacion_Specified;
    property nit:             Int64        Index (IS_UNQL) read Fnit write Fnit;
    property razonRevocacion: string       Index (IS_UNQL) read FrazonRevocacion write FrazonRevocacion;
  end;



  // ************************************************************************ //
  // XML       : respuestaListaRegistroCufdSoapDto, global, <complexType>
  // Namespace : https://siat.impuestos.gob.bo/
  // ************************************************************************ //
  respuestaListaRegistroCufdSoapDto = class(TRemotable)
  private
    Fcodigo: string;
    Fcodigo_Specified: boolean;
    FcodigoControl: string;
    FcodigoControl_Specified: boolean;
    FcodigoPuntoVenta: Integer;
    FcodigoPuntoVenta_Specified: boolean;
    FcodigoSucursal: Integer;
    FcodigoSucursal_Specified: boolean;
    Fcuis: string;
    Fcuis_Specified: boolean;
    Fdireccion: string;
    Fdireccion_Specified: boolean;
    FfechaVigencia: TXSDateTime;
    FfechaVigencia_Specified: boolean;
    FmensajeServicioList: Array_Of_mensajeServicio;
    FmensajeServicioList_Specified: boolean;
    Ftransaccion: Boolean;
    procedure Setcodigo(Index: Integer; const Astring: string);
    function  codigo_Specified(Index: Integer): boolean;
    procedure SetcodigoControl(Index: Integer; const Astring: string);
    function  codigoControl_Specified(Index: Integer): boolean;
    procedure SetcodigoPuntoVenta(Index: Integer; const AInteger: Integer);
    function  codigoPuntoVenta_Specified(Index: Integer): boolean;
    procedure SetcodigoSucursal(Index: Integer; const AInteger: Integer);
    function  codigoSucursal_Specified(Index: Integer): boolean;
    procedure Setcuis(Index: Integer; const Astring: string);
    function  cuis_Specified(Index: Integer): boolean;
    procedure Setdireccion(Index: Integer; const Astring: string);
    function  direccion_Specified(Index: Integer): boolean;
    procedure SetfechaVigencia(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  fechaVigencia_Specified(Index: Integer): boolean;
    procedure SetmensajeServicioList(Index: Integer; const AArray_Of_mensajeServicio: Array_Of_mensajeServicio);
    function  mensajeServicioList_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property codigo:              string                    Index (IS_OPTN or IS_UNQL) read Fcodigo write Setcodigo stored codigo_Specified;
    property codigoControl:       string                    Index (IS_OPTN or IS_UNQL) read FcodigoControl write SetcodigoControl stored codigoControl_Specified;
    property codigoPuntoVenta:    Integer                   Index (IS_OPTN or IS_UNQL) read FcodigoPuntoVenta write SetcodigoPuntoVenta stored codigoPuntoVenta_Specified;
    property codigoSucursal:      Integer                   Index (IS_OPTN or IS_UNQL) read FcodigoSucursal write SetcodigoSucursal stored codigoSucursal_Specified;
    property cuis:                string                    Index (IS_OPTN or IS_UNQL) read Fcuis write Setcuis stored cuis_Specified;
    property direccion:           string                    Index (IS_OPTN or IS_UNQL) read Fdireccion write Setdireccion stored direccion_Specified;
    property fechaVigencia:       TXSDateTime               Index (IS_OPTN or IS_UNQL) read FfechaVigencia write SetfechaVigencia stored fechaVigencia_Specified;
    property mensajeServicioList: Array_Of_mensajeServicio  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FmensajeServicioList write SetmensajeServicioList stored mensajeServicioList_Specified;
    property transaccion:         Boolean                   Index (IS_UNQL) read Ftransaccion write Ftransaccion;
  end;



  // ************************************************************************ //
  // XML       : solicitudCufd, global, <complexType>
  // Namespace : https://siat.impuestos.gob.bo/
  // ************************************************************************ //
  solicitudCufd = class(TRemotable)
  private
    FcodigoAmbiente: Integer;
    FcodigoModalidad: Integer;
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
    property codigoModalidad:  Integer  Index (IS_UNQL) read FcodigoModalidad write FcodigoModalidad;
    property codigoPuntoVenta: Integer  Index (IS_OPTN or IS_NLBL or IS_UNQL) read FcodigoPuntoVenta write SetcodigoPuntoVenta stored codigoPuntoVenta_Specified;
    property codigoSistema:    string   Index (IS_UNQL) read FcodigoSistema write FcodigoSistema;
    property codigoSucursal:   Integer  Index (IS_UNQL) read FcodigoSucursal write FcodigoSucursal;
    property cuis:             string   Index (IS_UNQL) read Fcuis write Fcuis;
    property nit:              Int64    Index (IS_UNQL) read Fnit write Fnit;
  end;


  // ************************************************************************ //
  // Namespace : https://siat.impuestos.gob.bo/
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : ServicioFacturacionCodigosSoapBinding
  // service   : ServicioFacturacionCodigos
  // port      : ServicioFacturacionCodigosPort
  // URL       : https://pilotosiatservicios.impuestos.gob.bo/v2/FacturacionCodigos
  // ************************************************************************ //
  ServicioFacturacionCodigos = interface(IInvokable)
  ['{94DD80DA-A25C-389C-FE12-5800EAA1C6C6}']
    function  verificarComunicacion: respuestaComunicacion; stdcall;
    function  verificarNit(const SolicitudVerificarNit: solicitudVerificarNit): respuestaVerificarNit; stdcall;
    function  cuisMasivo(const SolicitudCuisMasivoSistemas: solicitudCuisMasivoSistemas): respuestaCuisMasivo; stdcall;
    function  cufd(const SolicitudCufd: solicitudCufd): respuestaCufd; stdcall;
    function  notificaCertificadoRevocado(const SolicitudNotificaRevocado: solicitudNotifcaRevocado): respuestaNotificaRevocado; stdcall;
    function  cuis(const SolicitudCuis: solicitudCuis): respuestaCuis; stdcall;
    function  cufdMasivo(const SolicitudCufdMasivo: solicitudCufdMasivo): respuestaCufdMasivo; stdcall;
  end;

function GetServicioFacturacionCodigos(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): ServicioFacturacionCodigos;


implementation
  uses System.SysUtils;

function GetServicioFacturacionCodigos(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): ServicioFacturacionCodigos;
const
  defWSDL = 'https://pilotosiatservicios.impuestos.gob.bo/v2/FacturacionCodigos?wsdl';
  defURL  = 'https://pilotosiatservicios.impuestos.gob.bo/v2/FacturacionCodigos';
  defSvc  = 'ServicioFacturacionCodigos';
  defPrt  = 'ServicioFacturacionCodigosPort';
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
    Result := (RIO as ServicioFacturacionCodigos);
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


procedure solicitudListaCufdDto.SetcodigoPuntoVenta(Index: Integer; const AInteger: Integer);
begin
  FcodigoPuntoVenta := AInteger;
  FcodigoPuntoVenta_Specified := True;
end;

function solicitudListaCufdDto.codigoPuntoVenta_Specified(Index: Integer): boolean;
begin
  Result := FcodigoPuntoVenta_Specified;
end;

destructor respuestaCufdMasivo.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FlistaRespuestasCufd)-1 do
    System.SysUtils.FreeAndNil(FlistaRespuestasCufd[I]);
  System.SetLength(FlistaRespuestasCufd, 0);
  for I := 0 to System.Length(FmensajesList)-1 do
    System.SysUtils.FreeAndNil(FmensajesList[I]);
  System.SetLength(FmensajesList, 0);
  inherited Destroy;
end;

procedure respuestaCufdMasivo.SetlistaRespuestasCufd(Index: Integer; const AArray_Of_respuestaListaRegistroCufdSoapDto: Array_Of_respuestaListaRegistroCufdSoapDto);
begin
  FlistaRespuestasCufd := AArray_Of_respuestaListaRegistroCufdSoapDto;
  FlistaRespuestasCufd_Specified := True;
end;

function respuestaCufdMasivo.listaRespuestasCufd_Specified(Index: Integer): boolean;
begin
  Result := FlistaRespuestasCufd_Specified;
end;

procedure respuestaCufdMasivo.SetmensajesList(Index: Integer; const AArray_Of_mensajeServicio: Array_Of_mensajeServicio);
begin
  FmensajesList := AArray_Of_mensajeServicio;
  FmensajesList_Specified := True;
end;

function respuestaCufdMasivo.mensajesList_Specified(Index: Integer): boolean;
begin
  Result := FmensajesList_Specified;
end;

procedure respuestaCufdMasivo.Settransaccion(Index: Integer; const ABoolean: Boolean);
begin
  Ftransaccion := ABoolean;
  Ftransaccion_Specified := True;
end;

function respuestaCufdMasivo.transaccion_Specified(Index: Integer): boolean;
begin
  Result := Ftransaccion_Specified;
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

destructor solicitudCuisMasivoSistemas.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FdatosSolicitud)-1 do
    System.SysUtils.FreeAndNil(FdatosSolicitud[I]);
  System.SetLength(FdatosSolicitud, 0);
  inherited Destroy;
end;

procedure solicitudCuis.SetcodigoPuntoVenta(Index: Integer; const AInteger: Integer);
begin
  FcodigoPuntoVenta := AInteger;
  FcodigoPuntoVenta_Specified := True;
end;

function solicitudCuis.codigoPuntoVenta_Specified(Index: Integer): boolean;
begin
  Result := FcodigoPuntoVenta_Specified;
end;

destructor solicitudCufdMasivo.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FdatosSolicitud)-1 do
    System.SysUtils.FreeAndNil(FdatosSolicitud[I]);
  System.SetLength(FdatosSolicitud, 0);
  inherited Destroy;
end;

procedure solicitudListaCuisDto.SetcodigoPuntoVenta(Index: Integer; const AInteger: Integer);
begin
  FcodigoPuntoVenta := AInteger;
  FcodigoPuntoVenta_Specified := True;
end;

function solicitudListaCuisDto.codigoPuntoVenta_Specified(Index: Integer): boolean;
begin
  Result := FcodigoPuntoVenta_Specified;
end;

destructor respuestaCuisMasivo.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FlistaRespuestasCuis)-1 do
    System.SysUtils.FreeAndNil(FlistaRespuestasCuis[I]);
  System.SetLength(FlistaRespuestasCuis, 0);
  for I := 0 to System.Length(FmensajesList)-1 do
    System.SysUtils.FreeAndNil(FmensajesList[I]);
  System.SetLength(FmensajesList, 0);
  inherited Destroy;
end;

procedure respuestaCuisMasivo.SetlistaRespuestasCuis(Index: Integer; const AArray_Of_respuestaListaRegistroCuisSoapDto: Array_Of_respuestaListaRegistroCuisSoapDto);
begin
  FlistaRespuestasCuis := AArray_Of_respuestaListaRegistroCuisSoapDto;
  FlistaRespuestasCuis_Specified := True;
end;

function respuestaCuisMasivo.listaRespuestasCuis_Specified(Index: Integer): boolean;
begin
  Result := FlistaRespuestasCuis_Specified;
end;

procedure respuestaCuisMasivo.SetmensajesList(Index: Integer; const AArray_Of_mensajeServicio: Array_Of_mensajeServicio);
begin
  FmensajesList := AArray_Of_mensajeServicio;
  FmensajesList_Specified := True;
end;

function respuestaCuisMasivo.mensajesList_Specified(Index: Integer): boolean;
begin
  Result := FmensajesList_Specified;
end;

procedure respuestaCuisMasivo.Settransaccion(Index: Integer; const ABoolean: Boolean);
begin
  Ftransaccion := ABoolean;
  Ftransaccion_Specified := True;
end;

function respuestaCuisMasivo.transaccion_Specified(Index: Integer): boolean;
begin
  Result := Ftransaccion_Specified;
end;

destructor respuestaListaRegistroCuisSoapDto.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FmensajeServicioList)-1 do
    System.SysUtils.FreeAndNil(FmensajeServicioList[I]);
  System.SetLength(FmensajeServicioList, 0);
  System.SysUtils.FreeAndNil(FfechaVigencia);
  inherited Destroy;
end;

procedure respuestaListaRegistroCuisSoapDto.Setcodigo(Index: Integer; const Astring: string);
begin
  Fcodigo := Astring;
  Fcodigo_Specified := True;
end;

function respuestaListaRegistroCuisSoapDto.codigo_Specified(Index: Integer): boolean;
begin
  Result := Fcodigo_Specified;
end;

procedure respuestaListaRegistroCuisSoapDto.SetcodigoPuntoVenta(Index: Integer; const AInteger: Integer);
begin
  FcodigoPuntoVenta := AInteger;
  FcodigoPuntoVenta_Specified := True;
end;

function respuestaListaRegistroCuisSoapDto.codigoPuntoVenta_Specified(Index: Integer): boolean;
begin
  Result := FcodigoPuntoVenta_Specified;
end;

procedure respuestaListaRegistroCuisSoapDto.SetcodigoSucursal(Index: Integer; const AInteger: Integer);
begin
  FcodigoSucursal := AInteger;
  FcodigoSucursal_Specified := True;
end;

function respuestaListaRegistroCuisSoapDto.codigoSucursal_Specified(Index: Integer): boolean;
begin
  Result := FcodigoSucursal_Specified;
end;

procedure respuestaListaRegistroCuisSoapDto.SetfechaVigencia(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FfechaVigencia := ATXSDateTime;
  FfechaVigencia_Specified := True;
end;

function respuestaListaRegistroCuisSoapDto.fechaVigencia_Specified(Index: Integer): boolean;
begin
  Result := FfechaVigencia_Specified;
end;

procedure respuestaListaRegistroCuisSoapDto.SetmensajeServicioList(Index: Integer; const AArray_Of_mensajeServicio: Array_Of_mensajeServicio);
begin
  FmensajeServicioList := AArray_Of_mensajeServicio;
  FmensajeServicioList_Specified := True;
end;

function respuestaListaRegistroCuisSoapDto.mensajeServicioList_Specified(Index: Integer): boolean;
begin
  Result := FmensajeServicioList_Specified;
end;

destructor respuestaCufd.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FmensajesList)-1 do
    System.SysUtils.FreeAndNil(FmensajesList[I]);
  System.SetLength(FmensajesList, 0);
  System.SysUtils.FreeAndNil(FfechaVigencia);
  inherited Destroy;
end;

procedure respuestaCufd.Setcodigo(Index: Integer; const Astring: string);
begin
  Fcodigo := Astring;
  Fcodigo_Specified := True;
end;

function respuestaCufd.codigo_Specified(Index: Integer): boolean;
begin
  Result := Fcodigo_Specified;
end;

procedure respuestaCufd.SetcodigoControl(Index: Integer; const Astring: string);
begin
  FcodigoControl := Astring;
  FcodigoControl_Specified := True;
end;

function respuestaCufd.codigoControl_Specified(Index: Integer): boolean;
begin
  Result := FcodigoControl_Specified;
end;

procedure respuestaCufd.Setdireccion(Index: Integer; const Astring: string);
begin
  Fdireccion := Astring;
  Fdireccion_Specified := True;
end;

function respuestaCufd.direccion_Specified(Index: Integer): boolean;
begin
  Result := Fdireccion_Specified;
end;

procedure respuestaCufd.SetfechaVigencia(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FfechaVigencia := ATXSDateTime;
  FfechaVigencia_Specified := True;
end;

function respuestaCufd.fechaVigencia_Specified(Index: Integer): boolean;
begin
  Result := FfechaVigencia_Specified;
end;

procedure respuestaCufd.SetmensajesList(Index: Integer; const AArray_Of_mensajeServicio: Array_Of_mensajeServicio);
begin
  FmensajesList := AArray_Of_mensajeServicio;
  FmensajesList_Specified := True;
end;

function respuestaCufd.mensajesList_Specified(Index: Integer): boolean;
begin
  Result := FmensajesList_Specified;
end;

procedure respuestaCufd.Settransaccion(Index: Integer; const ABoolean: Boolean);
begin
  Ftransaccion := ABoolean;
  Ftransaccion_Specified := True;
end;

function respuestaCufd.transaccion_Specified(Index: Integer): boolean;
begin
  Result := Ftransaccion_Specified;
end;

destructor respuestaCuis.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FmensajesList)-1 do
    System.SysUtils.FreeAndNil(FmensajesList[I]);
  System.SetLength(FmensajesList, 0);
  System.SysUtils.FreeAndNil(FfechaVigencia);
  inherited Destroy;
end;

procedure respuestaCuis.Setcodigo(Index: Integer; const Astring: string);
begin
  Fcodigo := Astring;
  Fcodigo_Specified := True;
end;

function respuestaCuis.codigo_Specified(Index: Integer): boolean;
begin
  Result := Fcodigo_Specified;
end;

procedure respuestaCuis.SetfechaVigencia(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FfechaVigencia := ATXSDateTime;
  FfechaVigencia_Specified := True;
end;

function respuestaCuis.fechaVigencia_Specified(Index: Integer): boolean;
begin
  Result := FfechaVigencia_Specified;
end;

procedure respuestaCuis.SetmensajesList(Index: Integer; const AArray_Of_mensajeServicio: Array_Of_mensajeServicio);
begin
  FmensajesList := AArray_Of_mensajeServicio;
  FmensajesList_Specified := True;
end;

function respuestaCuis.mensajesList_Specified(Index: Integer): boolean;
begin
  Result := FmensajesList_Specified;
end;

procedure respuestaCuis.Settransaccion(Index: Integer; const ABoolean: Boolean);
begin
  Ftransaccion := ABoolean;
  Ftransaccion_Specified := True;
end;

function respuestaCuis.transaccion_Specified(Index: Integer): boolean;
begin
  Result := Ftransaccion_Specified;
end;

destructor solicitudNotifcaRevocado.Destroy;
begin
  System.SysUtils.FreeAndNil(FfechaRevocacion);
  inherited Destroy;
end;

procedure solicitudNotifcaRevocado.SetfechaRevocacion(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FfechaRevocacion := ATXSDateTime;
  FfechaRevocacion_Specified := True;
end;

function solicitudNotifcaRevocado.fechaRevocacion_Specified(Index: Integer): boolean;
begin
  Result := FfechaRevocacion_Specified;
end;

destructor respuestaListaRegistroCufdSoapDto.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FmensajeServicioList)-1 do
    System.SysUtils.FreeAndNil(FmensajeServicioList[I]);
  System.SetLength(FmensajeServicioList, 0);
  System.SysUtils.FreeAndNil(FfechaVigencia);
  inherited Destroy;
end;

procedure respuestaListaRegistroCufdSoapDto.Setcodigo(Index: Integer; const Astring: string);
begin
  Fcodigo := Astring;
  Fcodigo_Specified := True;
end;

function respuestaListaRegistroCufdSoapDto.codigo_Specified(Index: Integer): boolean;
begin
  Result := Fcodigo_Specified;
end;

procedure respuestaListaRegistroCufdSoapDto.SetcodigoControl(Index: Integer; const Astring: string);
begin
  FcodigoControl := Astring;
  FcodigoControl_Specified := True;
end;

function respuestaListaRegistroCufdSoapDto.codigoControl_Specified(Index: Integer): boolean;
begin
  Result := FcodigoControl_Specified;
end;

procedure respuestaListaRegistroCufdSoapDto.SetcodigoPuntoVenta(Index: Integer; const AInteger: Integer);
begin
  FcodigoPuntoVenta := AInteger;
  FcodigoPuntoVenta_Specified := True;
end;

function respuestaListaRegistroCufdSoapDto.codigoPuntoVenta_Specified(Index: Integer): boolean;
begin
  Result := FcodigoPuntoVenta_Specified;
end;

procedure respuestaListaRegistroCufdSoapDto.SetcodigoSucursal(Index: Integer; const AInteger: Integer);
begin
  FcodigoSucursal := AInteger;
  FcodigoSucursal_Specified := True;
end;

function respuestaListaRegistroCufdSoapDto.codigoSucursal_Specified(Index: Integer): boolean;
begin
  Result := FcodigoSucursal_Specified;
end;

procedure respuestaListaRegistroCufdSoapDto.Setcuis(Index: Integer; const Astring: string);
begin
  Fcuis := Astring;
  Fcuis_Specified := True;
end;

function respuestaListaRegistroCufdSoapDto.cuis_Specified(Index: Integer): boolean;
begin
  Result := Fcuis_Specified;
end;

procedure respuestaListaRegistroCufdSoapDto.Setdireccion(Index: Integer; const Astring: string);
begin
  Fdireccion := Astring;
  Fdireccion_Specified := True;
end;

function respuestaListaRegistroCufdSoapDto.direccion_Specified(Index: Integer): boolean;
begin
  Result := Fdireccion_Specified;
end;

procedure respuestaListaRegistroCufdSoapDto.SetfechaVigencia(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FfechaVigencia := ATXSDateTime;
  FfechaVigencia_Specified := True;
end;

function respuestaListaRegistroCufdSoapDto.fechaVigencia_Specified(Index: Integer): boolean;
begin
  Result := FfechaVigencia_Specified;
end;

procedure respuestaListaRegistroCufdSoapDto.SetmensajeServicioList(Index: Integer; const AArray_Of_mensajeServicio: Array_Of_mensajeServicio);
begin
  FmensajeServicioList := AArray_Of_mensajeServicio;
  FmensajeServicioList_Specified := True;
end;

function respuestaListaRegistroCufdSoapDto.mensajeServicioList_Specified(Index: Integer): boolean;
begin
  Result := FmensajeServicioList_Specified;
end;

procedure solicitudCufd.SetcodigoPuntoVenta(Index: Integer; const AInteger: Integer);
begin
  FcodigoPuntoVenta := AInteger;
  FcodigoPuntoVenta_Specified := True;
end;

function solicitudCufd.codigoPuntoVenta_Specified(Index: Integer): boolean;
begin
  Result := FcodigoPuntoVenta_Specified;
end;

initialization
  { ServicioFacturacionCodigos }
  InvRegistry.RegisterInterface(TypeInfo(ServicioFacturacionCodigos), 'https://siat.impuestos.gob.bo/', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(ServicioFacturacionCodigos), '');
  InvRegistry.RegisterInvokeOptions(TypeInfo(ServicioFacturacionCodigos), ioDocument);
  { ServicioFacturacionCodigos.verificarComunicacion }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicioFacturacionCodigos), 'verificarComunicacion', '',
                                 '[ReturnName="RespuestaComunicacion"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacionCodigos), 'verificarComunicacion', 'RespuestaComunicacion', '',
                                '', IS_UNQL);
  { ServicioFacturacionCodigos.verificarNit }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicioFacturacionCodigos), 'verificarNit', '',
                                 '[ReturnName="RespuestaVerificarNit"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacionCodigos), 'verificarNit', 'SolicitudVerificarNit', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacionCodigos), 'verificarNit', 'RespuestaVerificarNit', '',
                                '', IS_UNQL);
  { ServicioFacturacionCodigos.cuisMasivo }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicioFacturacionCodigos), 'cuisMasivo', '',
                                 '[ReturnName="RespuestaCuisMasivo"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacionCodigos), 'cuisMasivo', 'SolicitudCuisMasivoSistemas', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacionCodigos), 'cuisMasivo', 'RespuestaCuisMasivo', '',
                                '', IS_UNQL);
  { ServicioFacturacionCodigos.cufd }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicioFacturacionCodigos), 'cufd', '',
                                 '[ReturnName="RespuestaCufd"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacionCodigos), 'cufd', 'SolicitudCufd', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacionCodigos), 'cufd', 'RespuestaCufd', '',
                                '', IS_UNQL);
  { ServicioFacturacionCodigos.notificaCertificadoRevocado }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicioFacturacionCodigos), 'notificaCertificadoRevocado', '',
                                 '[ReturnName="RespuestaNotificaRevocado"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacionCodigos), 'notificaCertificadoRevocado', 'SolicitudNotificaRevocado', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacionCodigos), 'notificaCertificadoRevocado', 'RespuestaNotificaRevocado', '',
                                '', IS_UNQL);
  { ServicioFacturacionCodigos.cuis }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicioFacturacionCodigos), 'cuis', '',
                                 '[ReturnName="RespuestaCuis"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacionCodigos), 'cuis', 'SolicitudCuis', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacionCodigos), 'cuis', 'RespuestaCuis', '',
                                '', IS_UNQL);
  { ServicioFacturacionCodigos.cufdMasivo }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicioFacturacionCodigos), 'cufdMasivo', '',
                                 '[ReturnName="RespuestaCufdMasivo"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacionCodigos), 'cufdMasivo', 'SolicitudCufdMasivo', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicioFacturacionCodigos), 'cufdMasivo', 'RespuestaCufdMasivo', '',
                                '', IS_UNQL);
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_respuestaListaRegistroCufdSoapDto), 'https://siat.impuestos.gob.bo/', 'Array_Of_respuestaListaRegistroCufdSoapDto');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_mensajeServicio), 'https://siat.impuestos.gob.bo/', 'Array_Of_mensajeServicio');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_solicitudListaCuisDto), 'https://siat.impuestos.gob.bo/', 'Array_Of_solicitudListaCuisDto');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_respuestaListaRegistroCuisSoapDto), 'https://siat.impuestos.gob.bo/', 'Array_Of_respuestaListaRegistroCuisSoapDto');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_solicitudListaCufdDto), 'https://siat.impuestos.gob.bo/', 'Array_Of_solicitudListaCufdDto');
  RemClassRegistry.RegisterXSClass(solicitudVerificarNit, 'https://siat.impuestos.gob.bo/', 'solicitudVerificarNit');
  RemClassRegistry.RegisterXSClass(solicitudListaCufdDto, 'https://siat.impuestos.gob.bo/', 'solicitudListaCufdDto');
  RemClassRegistry.RegisterXSClass(model, 'https://siat.impuestos.gob.bo/', 'model');
  RemClassRegistry.RegisterXSClass(modelDto, 'https://siat.impuestos.gob.bo/', 'modelDto');
  RemClassRegistry.RegisterXSClass(respuestaCufdMasivo, 'https://siat.impuestos.gob.bo/', 'respuestaCufdMasivo');
  RemClassRegistry.RegisterXSClass(respuestaConfiguracion, 'https://siat.impuestos.gob.bo/', 'respuestaConfiguracion');
  RemClassRegistry.RegisterXSClass(respuestaVerificarNit, 'https://siat.impuestos.gob.bo/', 'respuestaVerificarNit');
  RemClassRegistry.RegisterXSClass(respuestaComunicacion, 'https://siat.impuestos.gob.bo/', 'respuestaComunicacion');
  RemClassRegistry.RegisterXSClass(mensajeServicio, 'https://siat.impuestos.gob.bo/', 'mensajeServicio');
  RemClassRegistry.RegisterXSClass(solicitudCuisMasivoSistemas, 'https://siat.impuestos.gob.bo/', 'solicitudCuisMasivoSistemas');
  RemClassRegistry.RegisterXSClass(respuestaNotificaRevocado, 'https://siat.impuestos.gob.bo/', 'respuestaNotificaRevocado');
  RemClassRegistry.RegisterXSClass(solicitudCuis, 'https://siat.impuestos.gob.bo/', 'solicitudCuis');
  RemClassRegistry.RegisterXSClass(solicitudCufdMasivo, 'https://siat.impuestos.gob.bo/', 'solicitudCufdMasivo');
  RemClassRegistry.RegisterXSClass(solicitudListaCuisDto, 'https://siat.impuestos.gob.bo/', 'solicitudListaCuisDto');
  RemClassRegistry.RegisterXSClass(respuestaCuisMasivo, 'https://siat.impuestos.gob.bo/', 'respuestaCuisMasivo');
  RemClassRegistry.RegisterXSClass(respuestaListaRegistroCuisSoapDto, 'https://siat.impuestos.gob.bo/', 'respuestaListaRegistroCuisSoapDto');
  RemClassRegistry.RegisterXSClass(respuestaCufd, 'https://siat.impuestos.gob.bo/', 'respuestaCufd');
  RemClassRegistry.RegisterXSClass(respuestaCuis, 'https://siat.impuestos.gob.bo/', 'respuestaCuis');
  RemClassRegistry.RegisterXSClass(solicitudNotifcaRevocado, 'https://siat.impuestos.gob.bo/', 'solicitudNotifcaRevocado');
  RemClassRegistry.RegisterXSClass(respuestaListaRegistroCufdSoapDto, 'https://siat.impuestos.gob.bo/', 'respuestaListaRegistroCufdSoapDto');
  RemClassRegistry.RegisterXSClass(solicitudCufd, 'https://siat.impuestos.gob.bo/', 'solicitudCufd');

end.