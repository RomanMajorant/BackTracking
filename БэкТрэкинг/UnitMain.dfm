object FormMain: TFormMain
  Left = 902
  Top = 301
  Width = 560
  Height = 384
  Caption = 'BackTracking'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PC: TPageControl
    Left = 0
    Top = 0
    Width = 418
    Height = 345
    ActivePage = TSRes
    Align = alClient
    TabOrder = 0
    object TSIn: TTabSheet
      Caption = #1055#1086#1083#1077' '#1074#1074#1086#1076#1072
      object MemoIn: TMemo
        Left = 0
        Top = 0
        Width = 410
        Height = 317
        Align = alClient
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object TSRes: TTabSheet
      Caption = #1048#1090#1086#1075#1086#1074#1086#1077' '#1087#1086#1083#1077
      ImageIndex = 1
      object MemoRes: TMemo
        Left = 0
        Top = 0
        Width = 410
        Height = 317
        Align = alClient
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
  end
  object Panel: TPanel
    Left = 418
    Top = 0
    Width = 126
    Height = 345
    Align = alRight
    TabOrder = 1
    object BtnOpenFile: TButton
      Left = 16
      Top = 32
      Width = 97
      Height = 25
      Caption = #1054#1090#1082#1088#1099#1090#1100' '#1092#1072#1081#1083'...'
      TabOrder = 0
      OnClick = BtnOpenFileClick
    end
    object BtnClose: TButton
      Left = 16
      Top = 280
      Width = 97
      Height = 25
      Caption = #1047#1072#1082#1088#1099#1090#1100
      TabOrder = 1
      OnClick = BtnCloseClick
    end
    object BtnSolve: TButton
      Left = 16
      Top = 112
      Width = 97
      Height = 25
      Caption = #1056#1077#1096#1080#1090#1100
      TabOrder = 2
      OnClick = BtnSolveClick
    end
    object BtnClear: TButton
      Left = 16
      Top = 72
      Width = 97
      Height = 25
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1087#1086#1083#1077
      TabOrder = 3
      OnClick = BtnClearClick
    end
  end
  object OpenDialog: TOpenDialog
    Left = 512
    Top = 312
  end
  object XPManifest1: TXPManifest
    Left = 480
    Top = 312
  end
end
