object fTarefa3: TfTarefa3
  Left = 0
  Top = 0
  Caption = 'Tarefa 3'
  ClientHeight = 357
  ClientWidth = 578
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 96
    Height = 13
    Caption = 'Valores por projeto:'
  end
  object Label2: TLabel
    Left = 468
    Top = 250
    Width = 44
    Height = 13
    Caption = 'Total R$:'
  end
  object Label3: TLabel
    Left = 468
    Top = 297
    Width = 85
    Height = 13
    Caption = 'Total divis'#245'es R$:'
  end
  object dbgValores: TDBGrid
    Left = 8
    Top = 27
    Width = 560
    Height = 217
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnTotal: TButton
    Left = 342
    Top = 267
    Width = 120
    Height = 25
    Caption = 'Obter Total'
    TabOrder = 1
    OnClick = btnTotalClick
  end
  object edtTotal: TEdit
    Left = 468
    Top = 269
    Width = 100
    Height = 21
    Alignment = taRightJustify
    ReadOnly = True
    TabOrder = 2
  end
  object btnTotalDivisoes: TButton
    Left = 342
    Top = 314
    Width = 120
    Height = 25
    Caption = 'Obter Total Divis'#245'es'
    TabOrder = 3
    OnClick = btnTotalDivisoesClick
  end
  object edtTotalDivisoes: TEdit
    Left = 468
    Top = 316
    Width = 100
    Height = 21
    Alignment = taRightJustify
    ReadOnly = True
    TabOrder = 4
  end
end
