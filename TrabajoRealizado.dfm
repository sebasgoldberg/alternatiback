object FormTrabajoRealizado: TFormTrabajoRealizado
  Left = 563
  Top = 232
  Width = 310
  Height = 292
  BorderIcons = []
  Caption = 'Trabajo Realizado'
  Color = clBtnFace
  Constraints.MinHeight = 292
  Constraints.MinWidth = 310
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 0
    Width = 276
    Height = 216
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'Datos del trabajo'
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
      Top = 72
      Width = 43
      Height = 13
      Caption = 'Producto'
    end
    object Label3: TLabel
      Left = 8
      Top = 168
      Width = 52
      Height = 13
      Caption = 'Productora'
    end
    object Label4: TLabel
      Left = 8
      Top = 144
      Width = 31
      Height = 13
      Caption = 'Cache'
    end
    object Label5: TLabel
      Left = 8
      Top = 96
      Width = 16
      Height = 13
      Caption = 'Rol'
    end
    object Label6: TLabel
      Left = 8
      Top = 120
      Width = 82
      Height = 13
      Caption = 'Fecha del trabajo'
    end
    object Label7: TLabel
      Left = 8
      Top = 192
      Width = 72
      Height = 13
      Caption = 'Fecha de pago'
    end
    object Label8: TLabel
      Left = 8
      Top = 48
      Width = 49
      Height = 13
      Caption = 'ID recurso'
    end
    object EditID: TEdit
      Left = 120
      Top = 16
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 0
    end
    object EditProducto: TEdit
      Left = 120
      Top = 64
      Width = 137
      Height = 21
      TabOrder = 2
    end
    object EditProductora: TEdit
      Left = 120
      Top = 160
      Width = 137
      Height = 21
      TabOrder = 6
    end
    object EditCache: TEdit
      Left = 120
      Top = 136
      Width = 121
      Height = 21
      TabOrder = 5
    end
    object DateTimePickerFechaTrabajo: TDateTimePicker
      Left = 120
      Top = 112
      Width = 89
      Height = 21
      CalAlignment = dtaLeft
      Date = 40343.4811581829
      Time = 40343.4811581829
      DateFormat = dfShort
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 4
    end
    object DateTimePickerFechaPago: TDateTimePicker
      Left = 120
      Top = 184
      Width = 89
      Height = 21
      CalAlignment = dtaLeft
      Date = 40343.4811581829
      Time = 40343.4811581829
      DateFormat = dfShort
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 7
    end
    object SG_ComboBoxRol: TSG_ComboBox
      Left = 120
      Top = 88
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 3
      esPosibleActualizarValores = False
      nombreTabla = 'rol'
      nombreCampoClave = 'id'
      nombreCampoDescripcion = 'descripcion'
    end
    object EditIdRecurso: TEdit
      Left = 120
      Top = 40
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 1
    end
  end
  object BitBtnAceptar: TBitBtn
    Left = 98
    Top = 222
    Width = 89
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Aceptar'
    TabOrder = 1
    OnClick = BitBtnAceptarClick
  end
  object BitBtnCancelar: TBitBtn
    Left = 194
    Top = 222
    Width = 89
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Cancelar'
    TabOrder = 2
    OnClick = BitBtnCancelarClick
  end
end
