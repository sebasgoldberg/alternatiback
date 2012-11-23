object FormAlternativa: TFormAlternativa
  Left = 654
  Top = 131
  Width = 750
  Height = 621
  Caption = 'Alternativa'
  Color = clBtnFace
  Constraints.MinHeight = 621
  Constraints.MinWidth = 704
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 623
    Height = 385
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Seleccion de recursos'
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
    object Label5: TLabel
      Left = 8
      Top = 144
      Width = 17
      Height = 13
      Caption = 'Piel'
    end
    object Label6: TLabel
      Left = 8
      Top = 216
      Width = 74
      Height = 13
      Caption = 'Documento RG'
    end
    object Label7: TLabel
      Left = 8
      Top = 240
      Width = 78
      Height = 13
      Caption = 'Documento CPF'
    end
    object Label8: TLabel
      Left = 8
      Top = 264
      Width = 67
      Height = 13
      Caption = 'Altura (metros)'
    end
    object Label9: TLabel
      Left = 8
      Top = 288
      Width = 84
      Height = 13
      Caption = 'Peso (Kilogramos)'
    end
    object Label10: TLabel
      Left = 8
      Top = 312
      Width = 23
      Height = 13
      Caption = 'Talle'
    end
    object Label11: TLabel
      Left = 8
      Top = 336
      Width = 21
      Height = 13
      Caption = 'Pelo'
    end
    object Label12: TLabel
      Left = 8
      Top = 360
      Width = 21
      Height = 13
      Caption = 'Ojos'
    end
    object Label13: TLabel
      Left = 296
      Top = 24
      Width = 38
      Height = 13
      Caption = 'Calzado'
    end
    object Label14: TLabel
      Left = 296
      Top = 48
      Width = 70
      Height = 13
      Caption = 'Estado dientes'
    end
    object Label15: TLabel
      Left = 296
      Top = 72
      Width = 67
      Height = 13
      Caption = 'Talle pantalón'
    end
    object Label16: TLabel
      Left = 296
      Top = 96
      Width = 59
      Height = 13
      Caption = 'Talle camisa'
    end
    object Label17: TLabel
      Left = 296
      Top = 120
      Width = 35
      Height = 13
      Caption = 'Maneja'
    end
    object Label18: TLabel
      Left = 296
      Top = 144
      Width = 64
      Height = 13
      Caption = 'Tiene registro'
    end
    object Label19: TLabel
      Left = 296
      Top = 200
      Width = 43
      Height = 13
      Caption = 'Deportes'
    end
    object Label20: TLabel
      Left = 296
      Top = 256
      Width = 36
      Height = 13
      Caption = 'Idiomas'
    end
    object Label21: TLabel
      Left = 296
      Top = 296
      Width = 60
      Height = 13
      Caption = 'Instrumentos'
    end
    object Label22: TLabel
      Left = 296
      Top = 344
      Width = 36
      Height = 13
      Caption = 'Danzas'
    end
    object Label23: TLabel
      Left = 8
      Top = 168
      Width = 33
      Height = 13
      Caption = 'Ciudad'
    end
    object Label24: TLabel
      Left = 8
      Top = 192
      Width = 33
      Height = 13
      Caption = 'Estado'
    end
    object Label25: TLabel
      Left = 120
      Top = 264
      Width = 31
      Height = 13
      Caption = 'Desde'
    end
    object Label26: TLabel
      Left = 208
      Top = 264
      Width = 28
      Height = 13
      Caption = 'Hasta'
    end
    object Label27: TLabel
      Left = 208
      Top = 288
      Width = 28
      Height = 13
      Caption = 'Hasta'
    end
    object Label28: TLabel
      Left = 120
      Top = 288
      Width = 31
      Height = 13
      Caption = 'Desde'
    end
    object Label29: TLabel
      Left = 408
      Top = 24
      Width = 31
      Height = 13
      Caption = 'Desde'
    end
    object Label30: TLabel
      Left = 496
      Top = 24
      Width = 28
      Height = 13
      Caption = 'Hasta'
    end
    object Label31: TLabel
      Left = 496
      Top = 72
      Width = 28
      Height = 13
      Caption = 'Hasta'
    end
    object Label32: TLabel
      Left = 408
      Top = 72
      Width = 31
      Height = 13
      Caption = 'Desde'
    end
    object Label33: TLabel
      Left = 408
      Top = 96
      Width = 31
      Height = 13
      Caption = 'Desde'
    end
    object Label34: TLabel
      Left = 496
      Top = 96
      Width = 28
      Height = 13
      Caption = 'Hasta'
    end
    object Label35: TLabel
      Left = 296
      Top = 168
      Width = 91
      Height = 13
      Caption = 'Trabaja como extra'
    end
    object Label36: TLabel
      Left = 8
      Top = 120
      Width = 24
      Height = 13
      Caption = 'Sexo'
    end
    object Label4: TLabel
      Left = 8
      Top = 96
      Width = 25
      Height = 13
      Caption = 'Edad'
    end
    object Label37: TLabel
      Left = 208
      Top = 96
      Width = 28
      Height = 13
      Caption = 'Hasta'
    end
    object Label38: TLabel
      Left = 120
      Top = 96
      Width = 31
      Height = 13
      Caption = 'Desde'
    end
    object EditID: TEdit
      Left = 120
      Top = 16
      Width = 121
      Height = 21
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
    object EditDocumentoRG: TEdit
      Left = 120
      Top = 208
      Width = 137
      Height = 21
      TabOrder = 8
    end
    object EditDocumentoCPF: TEdit
      Left = 120
      Top = 232
      Width = 137
      Height = 21
      TabOrder = 9
    end
    object EditAlturaDesde: TEdit
      Left = 160
      Top = 256
      Width = 41
      Height = 21
      TabOrder = 10
    end
    object EditAlturaHasta: TEdit
      Left = 240
      Top = 256
      Width = 41
      Height = 21
      TabOrder = 11
    end
    object EditPesoDesde: TEdit
      Left = 160
      Top = 280
      Width = 41
      Height = 21
      TabOrder = 12
    end
    object EditPesoHasta: TEdit
      Left = 240
      Top = 280
      Width = 41
      Height = 21
      TabOrder = 13
    end
    object EditCalzadoDesde: TEdit
      Left = 448
      Top = 16
      Width = 41
      Height = 21
      TabOrder = 17
    end
    object EditCalzadoHasta: TEdit
      Left = 528
      Top = 16
      Width = 41
      Height = 21
      TabOrder = 18
    end
    object EditTallePantalonHasta: TEdit
      Left = 528
      Top = 64
      Width = 41
      Height = 21
      TabOrder = 21
    end
    object EditTallePantalonDesde: TEdit
      Left = 448
      Top = 64
      Width = 41
      Height = 21
      TabOrder = 20
    end
    object EditTalleCamisaDesde: TEdit
      Left = 448
      Top = 88
      Width = 41
      Height = 21
      TabOrder = 22
    end
    object EditTalleCamisaHasta: TEdit
      Left = 528
      Top = 88
      Width = 41
      Height = 21
      TabOrder = 23
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
      Top = 160
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 6
      esPosibleActualizarValores = True
      nombreTabla = 'ciudad'
      nombreCampoClave = 'id'
      nombreCampoDescripcion = 'descripcion'
    end
    object SG_ComboBoxEstado: TSG_ComboBox
      Left = 120
      Top = 184
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 7
      esPosibleActualizarValores = True
      nombreTabla = 'estado'
      nombreCampoClave = 'id'
      nombreCampoDescripcion = 'descripcion'
    end
    object SG_ComboBoxTalle: TSG_ComboBox
      Left = 120
      Top = 304
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 14
      esPosibleActualizarValores = True
      nombreTabla = 'talle'
      nombreCampoClave = 'id'
      nombreCampoDescripcion = 'descripcion'
    end
    object SG_ComboBoxPelo: TSG_ComboBox
      Left = 120
      Top = 328
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 15
      esPosibleActualizarValores = True
      nombreTabla = 'pelo'
      nombreCampoClave = 'id'
      nombreCampoDescripcion = 'descripcion'
    end
    object SG_ComboBoxOjos: TSG_ComboBox
      Left = 120
      Top = 352
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 16
      esPosibleActualizarValores = True
      nombreTabla = 'ojos'
      nombreCampoClave = 'id'
      nombreCampoDescripcion = 'descripcion'
    end
    object SG_ComboBoxEstadoDientes: TSG_ComboBox
      Left = 408
      Top = 40
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 19
      esPosibleActualizarValores = True
      nombreTabla = 'estado_dientes'
      nombreCampoClave = 'id'
      nombreCampoDescripcion = 'descripcion'
    end
    object SG_CheckListBoxDeportes: TSG_CheckListBox
      Left = 408
      Top = 184
      Width = 145
      Height = 49
      ItemHeight = 13
      TabOrder = 27
      esPosibleActualizarValores = True
      nombreTabla = 'deportes'
      nombreCampoClave = 'id'
      nombreCampoDescripcion = 'descripcion'
    end
    object SG_CheckListBoxIdiomas: TSG_CheckListBox
      Left = 408
      Top = 232
      Width = 145
      Height = 49
      ItemHeight = 13
      TabOrder = 28
      esPosibleActualizarValores = True
      nombreTabla = 'idiomas'
      nombreCampoClave = 'id'
      nombreCampoDescripcion = 'descripcion'
    end
    object SG_CheckListBoxInstrumentos: TSG_CheckListBox
      Left = 408
      Top = 280
      Width = 145
      Height = 49
      ItemHeight = 13
      TabOrder = 29
      esPosibleActualizarValores = True
      nombreTabla = 'instrumentos'
      nombreCampoClave = 'id'
      nombreCampoDescripcion = 'descripcion'
    end
    object SG_CheckListBoxDanzas: TSG_CheckListBox
      Left = 408
      Top = 328
      Width = 145
      Height = 49
      ItemHeight = 13
      TabOrder = 30
      esPosibleActualizarValores = True
      nombreTabla = 'danzas'
      nombreCampoClave = 'id'
      nombreCampoDescripcion = 'descripcion'
    end
    object SG_ComboBoxBitManeja: TSG_ComboBoxBit
      Left = 408
      Top = 112
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 24
    end
    object SG_ComboBoxBitTieneRegistro: TSG_ComboBoxBit
      Left = 408
      Top = 136
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 25
    end
    object SG_ComboBoxBitTrabajaComoExtra: TSG_ComboBoxBit
      Left = 408
      Top = 160
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 26
    end
    object EditEdadHasta: TEdit
      Left = 240
      Top = 88
      Width = 41
      Height = 21
      TabOrder = 4
    end
    object EditEdadDesde: TEdit
      Left = 160
      Top = 88
      Width = 41
      Height = 21
      TabOrder = 3
    end
    object SG_ComboBoxSexo: TSG_ComboBoxSexo
      Left = 120
      Top = 112
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 31
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 400
    Width = 719
    Height = 177
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'Recursos seleccionados'
    TabOrder = 3
    object DBGridRecursos: TDBGrid
      Left = 8
      Top = 48
      Width = 703
      Height = 121
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = DataSourceRecursos
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
          FieldName = 'nombre'
          Title.Caption = 'Nombre'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'apellido'
          Title.Caption = 'Apellido'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'fecha_nacimiento'
          Title.Caption = 'Fecha de nacimiento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sexo'
          Title.Caption = 'Sexo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'piel'
          Title.Caption = 'Piel'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'direccion'
          Title.Caption = 'Direccion'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'codigo_postal'
          Title.Caption = 'Codigo postal'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'barrio'
          Title.Caption = 'Barrio'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ciudad'
          Title.Caption = 'Ciudad'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'estado'
          Title.Caption = 'Estado'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'telefono_particular'
          Title.Caption = 'Teléfono particular'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'telefono_particular_alternativo_1'
          Title.Caption = 'Tel. particular alt. 1'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'telefono_particular_alternativo_2'
          Title.Caption = 'Tel. particular alt. 2'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'telefono_movil'
          Title.Caption = 'Telefono movil'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'telefono_movil_alternativo_1'
          Title.Caption = 'Tel. movil alt. 1'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'telefono_movil_alternativo_2'
          Title.Caption = 'Tel. movil alt. 2'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nextel'
          Title.Caption = 'Nextel'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'responsable'
          Title.Caption = 'Responsable'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'documento_RG'
          Title.Caption = 'Documento RG'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'documento_CPF'
          Title.Caption = 'Documento CPF'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'altura'
          Title.Caption = 'Altura'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'peso'
          Title.Caption = 'Peso'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'talle'
          Title.Caption = 'Talle'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'pelo'
          Title.Caption = 'Pelo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ojos'
          Title.Caption = 'Ojos'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'calzado'
          Title.Caption = 'Calzado'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'estado_dientes'
          Title.Caption = 'Estado dientes'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'talle_pantalon'
          Title.Caption = 'Talle pantalon'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'talle_camisa'
          Title.Caption = 'Talle camisa'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'mail'
          Title.Caption = 'Mail'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cuenta_bancaria'
          Title.Caption = 'Cuenta bancaria'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'indicador_maneja'
          Title.Caption = 'Maneja'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'indicador_tiene_registro'
          Title.Caption = 'Tiene registro'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'fecha_ingreso'
          Title.Caption = 'Fecha de ingreso'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'trabaja_como_extra'
          Title.Caption = 'Trabaja como extra'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'como_nos_conocio'
          Title.Caption = 'Cómo nos conoció'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'observaciones'
          Title.Caption = 'Observaciones'
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
    object BitBtnEnviarFotosMail: TBitBtn
      Left = 392
      Top = 16
      Width = 121
      Height = 25
      Caption = 'Enviar Fotos Mail'
      Enabled = False
      TabOrder = 5
      OnClick = BitBtnEnviarFotosMailClick
    end
    object ButtonExcel: TButton
      Left = 520
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Excel'
      TabOrder = 6
      OnClick = ButtonExcelClick
    end
  end
  object BitBtnBuscar: TBitBtn
    Left = 638
    Top = 16
    Width = 89
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Buscar'
    TabOrder = 1
    OnClick = BitBtnBuscarClick
  end
  object BitBtnLimpiar: TBitBtn
    Left = 637
    Top = 48
    Width = 89
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Limpiar'
    TabOrder = 2
    OnClick = BitBtnLimpiarClick
  end
  object ButtonDescargarImagenes: TButton
    Left = 632
    Top = 80
    Width = 105
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Descargar Imagenes'
    TabOrder = 4
    OnClick = ButtonDescargarImagenesClick
  end
  object Database: TDatabase
    SessionName = 'Default'
    Left = 592
    Top = 80
  end
  object DataSourceRecursos: TDataSource
    DataSet = QueryRecursos
    Left = 608
    Top = 472
  end
  object QueryRecursos: TQuery
    AfterOpen = QueryRecursosAfterOpen
    AfterClose = QueryRecursosAfterClose
    Left = 640
    Top = 472
  end
end
