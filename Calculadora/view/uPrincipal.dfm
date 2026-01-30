object FrmCalculadora: TFrmCalculadora
  Left = 0
  Top = 0
  Caption = 'Calculadora'
  ClientHeight = 480
  ClientWidth = 461
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 15
  object pnlComandos: TPanel
    Left = 0
    Top = 0
    Width = 461
    Height = 480
    Align = alClient
    BevelOuter = bvNone
    Color = clBtnShadow
    ParentBackground = False
    TabOrder = 0
    object pnlBotoes: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 114
      Width = 321
      Height = 363
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object bbtnSete: TBitBtn
        Tag = 7
        Left = 15
        Top = 8
        Width = 89
        Height = 81
        Caption = '7'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = NumeroClick
      end
      object bbtnOito: TBitBtn
        Tag = 8
        Left = 115
        Top = 8
        Width = 89
        Height = 81
        Caption = '8'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = NumeroClick
      end
      object bbtnNove: TBitBtn
        Tag = 9
        Left = 215
        Top = 8
        Width = 89
        Height = 81
        Caption = '9'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = NumeroClick
      end
      object bbtnQuatro: TBitBtn
        Tag = 4
        Left = 15
        Top = 99
        Width = 89
        Height = 81
        Caption = '4'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = NumeroClick
      end
      object bbtnCinco: TBitBtn
        Tag = 5
        Left = 115
        Top = 99
        Width = 89
        Height = 81
        Caption = '5'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = NumeroClick
      end
      object bbtnSeis: TBitBtn
        Tag = 6
        Left = 215
        Top = 99
        Width = 89
        Height = 81
        Caption = '6'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = NumeroClick
      end
      object bbtnUm: TBitBtn
        Tag = 1
        Left = 15
        Top = 190
        Width = 89
        Height = 81
        Caption = '1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnClick = NumeroClick
      end
      object bbtnDois: TBitBtn
        Tag = 2
        Left = 115
        Top = 190
        Width = 89
        Height = 81
        Caption = '2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnClick = NumeroClick
      end
      object bbtnTres: TBitBtn
        Tag = 3
        Left = 215
        Top = 190
        Width = 89
        Height = 81
        Caption = '3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        OnClick = NumeroClick
      end
      object bbtnZero: TBitBtn
        Left = 115
        Top = 278
        Width = 89
        Height = 81
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        OnClick = NumeroClick
      end
    end
    object pnlOperacoes: TPanel
      AlignWithMargins = True
      Left = 330
      Top = 114
      Width = 128
      Height = 363
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object bbtnIgual: TBitBtn
        AlignWithMargins = True
        Left = 3
        Top = 291
        Width = 122
        Height = 66
        Align = alTop
        Caption = '='
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = IgualClick
      end
      object bbtnMult: TBitBtn
        AlignWithMargins = True
        Left = 3
        Top = 219
        Width = 122
        Height = 66
        Align = alTop
        Caption = #215
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = OperacaoClick
      end
      object bbtnDivi: TBitBtn
        AlignWithMargins = True
        Left = 3
        Top = 147
        Width = 122
        Height = 66
        Align = alTop
        Caption = #247
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = OperacaoClick
      end
      object bbtnMenos: TBitBtn
        AlignWithMargins = True
        Left = 3
        Top = 75
        Width = 122
        Height = 66
        Align = alTop
        Caption = #8722
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = OperacaoClick
      end
      object bbtnMais: TBitBtn
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 122
        Height = 66
        Align = alTop
        Caption = '+'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = OperacaoClick
      end
    end
    object pnlDisplay: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 455
      Height = 105
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
      object edtDisplay: TEdit
        Left = 0
        Top = 0
        Width = 455
        Height = 82
        Align = alClient
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -45
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Text = '0'
        ExplicitHeight = 69
      end
      object edtHist: TEdit
        Left = 0
        Top = 82
        Width = 455
        Height = 23
        Align = alBottom
        Alignment = taCenter
        TabOrder = 1
      end
    end
  end
end
