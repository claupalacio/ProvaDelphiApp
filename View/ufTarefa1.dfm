object fTarefa1: TfTarefa1
  Left = 0
  Top = 0
  Caption = 'Tarefa 1'
  ClientHeight = 293
  ClientWidth = 536
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object lblColunas: TLabel
    Left = 8
    Top = 13
    Width = 38
    Height = 13
    Caption = 'Colunas'
  end
  object lblTabelas: TLabel
    Left = 152
    Top = 13
    Width = 37
    Height = 13
    Caption = 'Tabelas'
  end
  object lblCondicoes: TLabel
    Left = 296
    Top = 13
    Width = 49
    Height = 13
    Caption = 'Condi'#231#245'es'
  end
  object lblSqlGerado: TLabel
    Left = 8
    Top = 157
    Width = 57
    Height = 13
    Caption = 'SQL Gerado'
  end
  object memColunas: TMemo
    Left = 8
    Top = 32
    Width = 130
    Height = 105
    TabOrder = 0
  end
  object memTabelas: TMemo
    Left = 152
    Top = 32
    Width = 130
    Height = 105
    TabOrder = 1
  end
  object memCondicoes: TMemo
    Left = 296
    Top = 32
    Width = 130
    Height = 105
    TabOrder = 2
  end
  object btnGeraSql: TBitBtn
    Left = 448
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Gerar SQL'
    TabOrder = 3
    OnClick = btnGeraSqlClick
  end
  object memSqlGerado: TMemo
    Left = 8
    Top = 176
    Width = 515
    Height = 105
    TabOrder = 4
  end
  object btnLimpar: TBitBtn
    Left = 448
    Top = 87
    Width = 75
    Height = 25
    Caption = 'Limpar'
    TabOrder = 5
    OnClick = btnLimparClick
  end
end
