object FormRecurso: TFormRecurso
  Left = 235
  Top = 130
  Width = 919
  Height = 713
  Caption = 'Recurso'
  Color = clBtnFace
  Constraints.MinHeight = 709
  Constraints.MinWidth = 919
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 0
    Width = 561
    Height = 569
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Datos del recurso'
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 11
      Height = 13
      Caption = 'ID'
    end
    object Label2: TLabel
      Left = 8
      Top = 48
      Width = 37
      Height = 13
      Caption = 'Nombre'
    end
    object Label3: TLabel
      Left = 8
      Top = 72
      Width = 37
      Height = 13
      Caption = 'Apellido'
    end
    object Label4: TLabel
      Left = 8
      Top = 96
      Width = 99
      Height = 13
      Caption = 'Fecha de nacimiento'
    end
    object Label5: TLabel
      Left = 8
      Top = 144
      Width = 17
      Height = 13
      Caption = 'Piel'
    end
    object Label6: TLabel
      Left = 8
      Top = 480
      Width = 74
      Height = 13
      Caption = 'Documento RG'
    end
    object Label7: TLabel
      Left = 8
      Top = 504
      Width = 78
      Height = 13
      Caption = 'Documento CPF'
    end
    object Label8: TLabel
      Left = 8
      Top = 528
      Width = 67
      Height = 13
      Caption = 'Altura (metros)'
    end
    object Label9: TLabel
      Left = 8
      Top = 552
      Width = 84
      Height = 13
      Caption = 'Peso (Kilogramos)'
    end
    object Label10: TLabel
      Left = 296
      Top = 24
      Width = 23
      Height = 13
      Caption = 'Talle'
    end
    object Label11: TLabel
      Left = 296
      Top = 72
      Width = 21
      Height = 13
      Caption = 'Pelo'
    end
    object Label12: TLabel
      Left = 296
      Top = 96
      Width = 21
      Height = 13
      Caption = 'Ojos'
    end
    object Label13: TLabel
      Left = 296
      Top = 120
      Width = 38
      Height = 13
      Caption = 'Calzado'
    end
    object Label14: TLabel
      Left = 296
      Top = 144
      Width = 70
      Height = 13
      Caption = 'Estado dientes'
    end
    object Label15: TLabel
      Left = 296
      Top = 168
      Width = 67
      Height = 13
      Caption = 'Talle pantalón'
    end
    object Label16: TLabel
      Left = 296
      Top = 192
      Width = 59
      Height = 13
      Caption = 'Talle camisa'
    end
    object Label19: TLabel
      Left = 296
      Top = 389
      Width = 43
      Height = 13
      Caption = 'Deportes'
    end
    object Label20: TLabel
      Left = 296
      Top = 445
      Width = 36
      Height = 13
      Caption = 'Idiomas'
    end
    object Label21: TLabel
      Left = 296
      Top = 485
      Width = 60
      Height = 13
      Caption = 'Instrumentos'
    end
    object Label22: TLabel
      Left = 296
      Top = 533
      Width = 36
      Height = 13
      Caption = 'Danzas'
    end
    object Label23: TLabel
      Left = 8
      Top = 240
      Width = 33
      Height = 13
      Caption = 'Ciudad'
    end
    object Label24: TLabel
      Left = 8
      Top = 264
      Width = 33
      Height = 13
      Caption = 'Estado'
    end
    object Label35: TLabel
      Left = 8
      Top = 168
      Width = 45
      Height = 13
      Caption = 'Direccion'
    end
    object Label36: TLabel
      Left = 8
      Top = 192
      Width = 65
      Height = 13
      Caption = 'Código Postal'
    end
    object Label37: TLabel
      Left = 8
      Top = 216
      Width = 27
      Height = 13
      Caption = 'Barrio'
    end
    object Label38: TLabel
      Left = 8
      Top = 288
      Width = 88
      Height = 13
      Caption = 'Teléfono particular'
    end
    object Label39: TLabel
      Left = 8
      Top = 360
      Width = 69
      Height = 13
      Caption = 'Teléfono movil'
    end
    object Label40: TLabel
      Left = 8
      Top = 456
      Width = 62
      Height = 13
      Caption = 'Responsable'
    end
    object Label25: TLabel
      Left = 296
      Top = 216
      Width = 19
      Height = 13
      Caption = 'Mail'
    end
    object Label26: TLabel
      Left = 296
      Top = 240
      Width = 78
      Height = 13
      Caption = 'Cuenta bancaria'
    end
    object Label17: TLabel
      Left = 296
      Top = 48
      Width = 88
      Height = 13
      Caption = 'Como nos conoció'
    end
    object Label18: TLabel
      Left = 296
      Top = 336
      Width = 82
      Height = 13
      Caption = 'Fecha de ingreso'
    end
    object Label27: TLabel
      Left = 8
      Top = 120
      Width = 24
      Height = 13
      Caption = 'Sexo'
    end
    object Label28: TLabel
      Left = 8
      Top = 432
      Width = 30
      Height = 13
      Caption = 'Nextel'
    end
    object Label29: TLabel
      Left = 8
      Top = 312
      Width = 90
      Height = 13
      Caption = 'Tel. particular alt. 1'
    end
    object Label30: TLabel
      Left = 8
      Top = 336
      Width = 90
      Height = 13
      Caption = 'Tel. particular alt. 2'
    end
    object Label31: TLabel
      Left = 8
      Top = 384
      Width = 71
      Height = 13
      Caption = 'Tel. movil alt. 1'
    end
    object Label32: TLabel
      Left = 8
      Top = 408
      Width = 71
      Height = 13
      Caption = 'Tel. movil alt. 2'
    end
    object Label33: TLabel
      Left = 296
      Top = 360
      Width = 71
      Height = 13
      Caption = 'Observaciones'
    end
    object EditID: TEdit
      Left = 120
      Top = 16
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 0
    end
    object EditNombre: TEdit
      Left = 120
      Top = 40
      Width = 137
      Height = 21
      TabOrder = 1
    end
    object EditApellido: TEdit
      Left = 120
      Top = 64
      Width = 137
      Height = 21
      TabOrder = 2
    end
    object DateTimePickerFechaNacimiento: TDateTimePicker
      Left = 120
      Top = 88
      Width = 89
      Height = 21
      CalAlignment = dtaLeft
      Date = 40340.4811581829
      Time = 40340.4811581829
      DateFormat = dfShort
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 3
    end
    object EditDocumentoRG: TEdit
      Left = 120
      Top = 472
      Width = 137
      Height = 21
      TabOrder = 19
    end
    object EditDocumentoCPF: TEdit
      Left = 120
      Top = 496
      Width = 137
      Height = 21
      TabOrder = 20
    end
    object EditAltura: TEdit
      Left = 120
      Top = 520
      Width = 41
      Height = 21
      TabOrder = 21
    end
    object EditPeso: TEdit
      Left = 120
      Top = 544
      Width = 41
      Height = 21
      TabOrder = 22
    end
    object EditCalzado: TEdit
      Left = 408
      Top = 112
      Width = 41
      Height = 21
      TabOrder = 27
    end
    object EditTallePantalon: TEdit
      Left = 408
      Top = 160
      Width = 41
      Height = 21
      TabOrder = 29
    end
    object EditTalleCamisa: TEdit
      Left = 408
      Top = 184
      Width = 41
      Height = 21
      TabOrder = 30
    end
    object EditDireccion: TEdit
      Left = 120
      Top = 160
      Width = 137
      Height = 21
      TabOrder = 6
    end
    object EditCodigoPostal: TEdit
      Left = 120
      Top = 184
      Width = 137
      Height = 21
      TabOrder = 7
    end
    object EditBarrio: TEdit
      Left = 120
      Top = 208
      Width = 137
      Height = 21
      TabOrder = 8
    end
    object EditTelefonoParticular: TEdit
      Left = 120
      Top = 280
      Width = 137
      Height = 21
      TabOrder = 11
    end
    object EditTelefonoMovil: TEdit
      Left = 120
      Top = 352
      Width = 137
      Height = 21
      TabOrder = 14
    end
    object EditResponsable: TEdit
      Left = 120
      Top = 448
      Width = 137
      Height = 21
      TabOrder = 18
    end
    object EditMail: TEdit
      Left = 408
      Top = 208
      Width = 137
      Height = 21
      TabOrder = 31
    end
    object EditCuentaBancaria: TEdit
      Left = 408
      Top = 232
      Width = 137
      Height = 21
      TabOrder = 32
    end
    object CheckBoxManeja: TCheckBox
      Left = 296
      Top = 264
      Width = 97
      Height = 17
      Caption = 'Maneja'
      TabOrder = 33
    end
    object CheckBoxTieneRegistro: TCheckBox
      Left = 296
      Top = 288
      Width = 97
      Height = 17
      Caption = 'Tiene registro'
      TabOrder = 34
    end
    object CheckBoxTrabajaComoExtra: TCheckBox
      Left = 296
      Top = 312
      Width = 137
      Height = 17
      Caption = 'Trabaja como extra'
      TabOrder = 35
    end
    object EditComoNosConocio: TEdit
      Left = 408
      Top = 40
      Width = 137
      Height = 21
      TabOrder = 24
    end
    object SG_ComboBoxPiel: TSG_ComboBox
      Left = 120
      Top = 136
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 5
      esPosibleActualizarValores = True
      nombreTabla = 'piel'
      nombreCampoClave = 'id'
      nombreCampoDescripcion = 'descripcion'
    end
    object SG_ComboBoxCiudad: TSG_ComboBox
      Left = 120
      Top = 232
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 9
      esPosibleActualizarValores = True
      nombreTabla = 'ciudad'
      nombreCampoClave = 'id'
      nombreCampoDescripcion = 'descripcion'
    end
    object SG_ComboBoxEstado: TSG_ComboBox
      Left = 120
      Top = 256
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 10
      esPosibleActualizarValores = True
      nombreTabla = 'estado'
      nombreCampoClave = 'id'
      nombreCampoDescripcion = 'descripcion'
    end
    object SG_ComboBoxTalle: TSG_ComboBox
      Left = 408
      Top = 16
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 23
      esPosibleActualizarValores = True
      nombreTabla = 'talle'
      nombreCampoClave = 'id'
      nombreCampoDescripcion = 'descripcion'
    end
    object SG_ComboBoxPelo: TSG_ComboBox
      Left = 408
      Top = 64
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 25
      esPosibleActualizarValores = True
      nombreTabla = 'pelo'
      nombreCampoClave = 'id'
      nombreCampoDescripcion = 'descripcion'
    end
    object SG_ComboBoxOjos: TSG_ComboBox
      Left = 408
      Top = 88
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 26
      esPosibleActualizarValores = True
      nombreTabla = 'ojos'
      nombreCampoClave = 'id'
      nombreCampoDescripcion = 'descripcion'
    end
    object SG_ComboBoxEstadoDientes: TSG_ComboBox
      Left = 408
      Top = 136
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 28
      esPosibleActualizarValores = True
      nombreTabla = 'estado_dientes'
      nombreCampoClave = 'id'
      nombreCampoDescripcion = 'descripcion'
    end
    object SG_CheckListBoxClaveExternaDeportes: TSG_CheckListBoxClaveExterna
      Left = 408
      Top = 373
      Width = 145
      Height = 49
      ItemHeight = 13
      TabOrder = 38
      esPosibleActualizarValores = False
      nombreTabla = 'deportes'
      nombreCampoClave = 'id'
      nombreCampoDescripcion = 'descripcion'
      nombreTablaPrincipal = 'deporte_recurso'
      nombreCampoClaveTablaPrincipal = 'recurso_id'
      nombreCampoValorTablaPrincipal = 'deporte_id'
    end
    object SG_CheckListBoxClaveExternaIdioma: TSG_CheckListBoxClaveExterna
      Left = 408
      Top = 421
      Width = 145
      Height = 49
      ItemHeight = 13
      TabOrder = 39
      esPosibleActualizarValores = False
      nombreTabla = 'idiomas'
      nombreCampoClave = 'id'
      nombreCampoDescripcion = 'descripcion'
      nombreTablaPrincipal = 'idioma_recurso'
      nombreCampoClaveTablaPrincipal = 'recurso_id'
      nombreCampoValorTablaPrincipal = 'idioma_id'
    end
    object SG_CheckListBoxClaveExternaInstrumento: TSG_CheckListBoxClaveExterna
      Left = 408
      Top = 469
      Width = 145
      Height = 49
      ItemHeight = 13
      TabOrder = 40
      esPosibleActualizarValores = False
      nombreTabla = 'instrumentos'
      nombreCampoClave = 'id'
      nombreCampoDescripcion = 'descripcion'
      nombreTablaPrincipal = 'instrumento_recurso'
      nombreCampoClaveTablaPrincipal = 'recurso_id'
      nombreCampoValorTablaPrincipal = 'instrumento_id'
    end
    object SG_CheckListBoxClaveExternaDanza: TSG_CheckListBoxClaveExterna
      Left = 408
      Top = 517
      Width = 145
      Height = 49
      ItemHeight = 13
      TabOrder = 41
      esPosibleActualizarValores = False
      nombreTabla = 'danzas'
      nombreCampoClave = 'id'
      nombreCampoDescripcion = 'descripcion'
      nombreTablaPrincipal = 'danza_recurso'
      nombreCampoClaveTablaPrincipal = 'recurso_id'
      nombreCampoValorTablaPrincipal = 'danza_id'
    end
    object DateTimePickerFechaIngreso: TDateTimePicker
      Left = 408
      Top = 328
      Width = 89
      Height = 21
      CalAlignment = dtaLeft
      Date = 40340.4811581829
      Time = 40340.4811581829
      DateFormat = dfShort
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 36
    end
    object SG_ComboBoxSexo: TSG_ComboBoxSexo
      Left = 120
      Top = 112
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 4
    end
    object EditNextel: TEdit
      Left = 120
      Top = 424
      Width = 137
      Height = 21
      TabOrder = 17
    end
    object EditTelefonoParticularAlternativo1: TEdit
      Left = 120
      Top = 304
      Width = 137
      Height = 21
      TabOrder = 12
    end
    object EditTelefonoParticularAlternativo2: TEdit
      Left = 120
      Top = 328
      Width = 137
      Height = 21
      TabOrder = 13
    end
    object EditTelefonoMovilAlternativo1: TEdit
      Left = 120
      Top = 376
      Width = 137
      Height = 21
      TabOrder = 15
    end
    object EditTelefonoMovilAlternativo2: TEdit
      Left = 120
      Top = 400
      Width = 137
      Height = 21
      TabOrder = 16
    end
    object EditObservaciones: TEdit
      Left = 408
      Top = 352
      Width = 137
      Height = 21
      TabOrder = 37
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 568
    Width = 561
    Height = 98
    Anchors = [akLeft, akTop, akBottom]
    Caption = 'Trabajos realizados'
    TabOrder = 1
    object DBGridTrabajosRealizados: TDBGrid
      Left = 8
      Top = 48
      Width = 545
      Height = 42
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = DataSourceTrabajosRealizados
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'id'
          Title.Caption = 'ID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'producto'
          Title.Caption = 'Producto'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'rol'
          Title.Caption = 'Rol'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'fecha_trabajo'
          Title.Caption = 'Fecha de trabajo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cache'
          Title.Caption = 'Cache'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'productora'
          Title.Caption = 'Productora'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'fecha_pago'
          Title.Caption = 'Fecha de pago'
          Visible = True
        end>
    end
    object BitBtnCrear: TBitBtn
      Left = 7
      Top = 16
      Width = 89
      Height = 25
      Caption = 'Crear'
      TabOrder = 0
      OnClick = BitBtnCrearClick
    end
    object BitBtnVer: TBitBtn
      Left = 103
      Top = 16
      Width = 89
      Height = 25
      Caption = 'Ver'
      Enabled = False
      TabOrder = 1
      OnClick = BitBtnVerClick
    end
    object BitBtnModificar: TBitBtn
      Left = 199
      Top = 16
      Width = 89
      Height = 25
      Caption = 'Modificar'
      Enabled = False
      TabOrder = 2
      OnClick = BitBtnModificarClick
    end
    object BitBtnBorrar: TBitBtn
      Left = 295
      Top = 16
      Width = 89
      Height = 25
      Caption = 'Borrar'
      Enabled = False
      TabOrder = 3
      OnClick = BitBtnBorrarClick
    end
  end
  object BitBtnAceptar: TBitBtn
    Left = 711
    Top = 646
    Width = 89
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Aceptar'
    TabOrder = 2
    OnClick = BitBtnAceptarClick
  end
  object BitBtnCancelar: TBitBtn
    Left = 807
    Top = 646
    Width = 89
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Cancelar'
    TabOrder = 3
    OnClick = BitBtnCancelarClick
  end
  object GroupBox3: TGroupBox
    Left = 576
    Top = 0
    Width = 321
    Height = 642
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'Imagenes'
    TabOrder = 4
    object BitBtnAnterior: TBitBtn
      Left = 3
      Top = 607
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Anterior'
      TabOrder = 0
      OnClick = BitBtnAnteriorClick
    end
    object BitBtnAgregar: TBitBtn
      Left = 83
      Top = 607
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Agregar'
      TabOrder = 1
      OnClick = BitBtnAgregarClick
    end
    object BitBtnEliminar: TBitBtn
      Left = 163
      Top = 607
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Eliminar'
      Enabled = False
      TabOrder = 2
      OnClick = BitBtnEliminarClick
    end
    object BitBtnSiguiente: TBitBtn
      Left = 243
      Top = 607
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Siguiente'
      TabOrder = 3
      OnClick = BitBtnSiguienteClick
    end
    object ScrollBoxImagenRecurso: TScrollBox
      Left = 8
      Top = 16
      Width = 305
      Height = 584
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 4
      object ImageRecurso: TImage
        Left = -5
        Top = -5
        Width = 186
        Height = 510
        AutoSize = True
      end
    end
  end
  object DataSourceTrabajosRealizados: TDataSource
    DataSet = QueryTrabajosRealizados
    Left = 504
    Top = 600
  end
  object QueryTrabajosRealizados: TQuery
    AfterOpen = QueryTrabajosRealizadosAfterOpen
    AfterClose = QueryTrabajosRealizadosAfterClose
    Left = 536
    Top = 600
  end
  object TableImagenRecurso: TTable
    AfterScroll = TableImagenRecursoAfterScroll
    DatabaseName = 'Alternativa'
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftInteger
      end
      item
        Name = 'recurso_id'
        DataType = ftInteger
      end
      item
        Name = 'imagen'
        DataType = ftBlob
        Size = 1
      end>
    StoreDefs = True
    TableName = 'imagen_recurso'
    Left = 832
    Top = 432
    object TableImagenRecursoid: TIntegerField
      FieldName = 'id'
    end
    object TableImagenRecursorecurso_id: TIntegerField
      FieldName = 'recurso_id'
    end
    object TableImagenRecursoimagen: TBlobField
      FieldName = 'imagen'
      BlobType = ftBlob
      Size = 1
    end
  end
  object OpenDialogImagen: TOpenDialog
    Left = 800
    Top = 432
  end
end
