
[macro name="menu"]
    ;メニューボタンの表示
    @showmenubutton

    ;メッセージウィンドウの設定
    [position layer="message0" left=160 top=500 width=1000 height=200 page=fore visible=true]

    ;文字が表示される領域を調整
    [position layer=message0 page=fore margint="45" marginl="50" marginr="70" marginb="60"]


    ;メッセージウィンドウの表示
    @layopt layer=message0 visible=true

    ;キャラクターの名前が表示される文字領域
    [ptext name="chara_name_area" layer="message0" color="white" size=28 bold=true x=180 y=510]
[endmacro]

[macro name="chara_reg"]

    ;上記で定義した領域がキャラクターの名前表示であることを宣言（これがないと#の部分でエラーになります）
    [chara_config ptext="chara_name_area"]

    [chara_new name="rikka" storage="chara/rikka/nrl.png" jname="六花"  ]
    [chara_new name="maki" storage="chara/maki/nrm.png" jname="マキ"  ]

    [layopt layer="0" visible="true"  ]
    [chara_show name="rikka" layer="0"]
    [chara_show name="maki"  layer="0"]

[endmacro]


[return]