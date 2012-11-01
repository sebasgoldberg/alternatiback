object FormTrabajoRealizadoRecurso: TFormTrabajoRealizadoRecurso
  Left = 498
  Top = 204
  Width = 309
  Height = 242
  Caption = 'Trabajo Realizado'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 0
    Width = 275
    Height = 166
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
      Top = 48
      Width = 43
      Height = 13
      Caption = 'Producto'
    end
    object Label3: TLabel
      Left = 8
      Top = 144
      Width = 52
      Height = 13
      Caption = 'Productora'
    end
    object Label4: TLabel
      Left = 8
      Top = 120
      Width = 31
      Height = 13
      Caption = 'Cache'
    end
    object Label5: TLabel
      Left = 8
      Top = 72
      Width = 16
      Height = 13
      Caption = 'Rol'
    end
    object Label6: TLabel
      Left = 8
      Top = 96
      Width = 82
      Height = 13
      Caption = 'Fecha del trabajo'
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
    object Edit1: TEdit
      Left = 120
      Top = 136
      Width = 137
      Height = 21
      TabOrder = 2
    end
    object Edit2: TEdit
      Left = 120
      Top = 112
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object ComboBoxPiel: TComboBox
      Left = 120
      Top = 64
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 4
    end
    object DateTimePickerFechaTrabajo: TDateTimePicker
      Left = 120
      Top = 88
      Width = 89
      Height = 21
      CalAlignment = dtaLeft
      Date = 40343.4811581829
      Time = 40343.4811581829
      DateFormat = dfShort
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 5
    end
  end
  object BitBtnAceptar: TBitBtn
    Left = 97
    Top = 172
    Width = 89
    Height = 25
    Caption = 'Aceptar'
    TabOrder = 1
  end
  object BitBtnCancelar: TBitBtn
    Left = 193
    Top = 172
    Width = 89
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 2
  end
end
