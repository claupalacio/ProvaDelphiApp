object fTarefa2: TfTarefa2
  Left = 0
  Top = 0
  Caption = 'Tarefa 2'
  ClientHeight = 211
  ClientWidth = 494
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
  object Label3: TLabel
    Left = 210
    Top = 19
    Width = 77
    Height = 13
    Caption = 'Intervalo 1 (ms)'
  end
  object Label2: TLabel
    Left = 210
    Top = 89
    Width = 77
    Height = 13
    Caption = 'Intervalo 2 (ms)'
  end
  object btnIniciar: TButton
    Left = 200
    Top = 166
    Width = 100
    Height = 25
    Caption = 'Iniciar'
    TabOrder = 0
    OnClick = btnIniciarClick
  end
  object ProgressBar1: TProgressBar
    Left = 18
    Top = 66
    Width = 453
    Height = 17
    TabOrder = 1
  end
  object ProgressBar2: TProgressBar
    Left = 18
    Top = 135
    Width = 453
    Height = 17
    TabOrder = 2
  end
  object edtIntervalo1: TSpinEdit
    Left = 200
    Top = 38
    Width = 100
    Height = 22
    Increment = 50
    MaxValue = 1000000
    MinValue = 0
    TabOrder = 3
    Value = 100
  end
  object edtIntervalo2: TSpinEdit
    Left = 200
    Top = 108
    Width = 100
    Height = 22
    Increment = 50
    MaxValue = 1000000
    MinValue = 0
    TabOrder = 4
    Value = 200
  end
end
