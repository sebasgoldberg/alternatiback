object FormMailFotos: TFormMailFotos
  Left = 246
  Top = 124
  Width = 670
  Height = 529
  Caption = 'Envio de fotos por mail'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 24
    Width = 56
    Height = 13
    Caption = 'Destinatario'
  end
  object Label2: TLabel
    Left = 8
    Top = 48
    Width = 33
    Height = 13
    Caption = 'Asunto'
  end
  object Label3: TLabel
    Left = 8
    Top = 72
    Width = 34
    Height = 13
    Caption = 'Cuerpo'
  end
  object EditDestinatario: TEdit
    Left = 96
    Top = 16
    Width = 257
    Height = 21
    TabOrder = 0
  end
  object EditAsunto: TEdit
    Left = 96
    Top = 40
    Width = 545
    Height = 21
    TabOrder = 1
  end
  object MemoCuerpo: TMemo
    Left = 8
    Top = 88
    Width = 633
    Height = 121
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 2
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 221
    Width = 633
    Height = 228
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'Recursos seleccionados'
    TabOrder = 3
    object DBGridRecursos: TDBGrid
      Left = 8
      Top = 48
      Width = 617
      Height = 172
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = DataSourceRecursos
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      TabOrder = 1
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
          Title.Caption = 'Telefono particular'
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
        end>
    end
    object BitBtnVer: TBitBtn
      Left = 7
      Top = 16
      Width = 89
      Height = 25
      Caption = 'Ver'
      TabOrder = 0
      OnClick = BitBtnVerClick
    end
  end
  object BitBtnAceptar: TBitBtn
    Left = 455
    Top = 458
    Width = 89
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Enviar'
    TabOrder = 4
    OnClick = BitBtnAceptarClick
  end
  object BitBtnCancelar: TBitBtn
    Left = 551
    Top = 458
    Width = 89
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Cancelar'
    TabOrder = 5
    OnClick = BitBtnCancelarClick
  end
  object DataSourceRecursos: TDataSource
    DataSet = QueryRecursos
    Left = 536
    Top = 397
  end
  object QueryRecursos: TQuery
    Left = 568
    Top = 397
  end
  object OutlookApplication: TOutlookApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    AutoQuit = False
    Left = 392
    Top = 8
  end
end
