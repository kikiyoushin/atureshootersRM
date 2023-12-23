
[macro name="menu"]
    ;メニューボタンの表示
    @showmenubutton

    ;メッセージウィンドウの設定
    [position layer="message0" left=160 top=500 width=1000 height=200 page=fore visible=true]

    ;文字が表示される領域を調整
    [position layer=message0 page=fore margint="45" marginl="50" marginr="70" marginb="60"]


    ;メッセージウィンドウの表示
    @layopt layer=message0 visible=false

    ;キャラクターの名前が表示される文字領域
    [ptext name="chara_name_area" layer="message0" color="white" size=28 bold=true x=180 y=510]
[endmacro]

[macro name="chara_reg"]

    ;上記で定義した領域がキャラクターの名前表示であることを宣言（これがないと#の部分でエラーになります）
    [chara_config ptext="chara_name_area"]

    [chara_new name="rikka" storage="chara/rikka/nrl.png" jname="六花"  ]
    [chara_new name="maki" storage="chara/maki/nrm.png" jname="マキ"  ]

    [layopt layer="0" visible="true"  ]

[endmacro]


[macro name="fuki"]
    ;message0を非表示
    [layopt layer="message0" visible="false"]
    ;メッセージレイヤー1を表示
    [layopt layer="message1" visible="true"]
    ;操作をメッセージレイヤー1に変更
    [current layer="message1"]
    ;メッセージレイヤーを縦書きに変更(全てのレイヤー共通？)
    [position layer="message1" vertical="true"]
    ;メッセージレイヤー1でfuki開始
    [fuki_start layer="message1" ]
[endmacro]
[macro name="endfuki"]
    ;fukiを中止。元に戻す。
    [fuki_stop]
    ;message1を非表示
    [layopt layer="message1" visible="false"]
    ;メッセージレイヤー0を表示
    [layopt layer="message0" visible="true"]
    ;操作をメッセージレイヤー0に変更
    [current layer="message0"]
    ;縦書きを横書きに変更
    [position layer="message0" vertical="false"]
[endmacro]


[return]