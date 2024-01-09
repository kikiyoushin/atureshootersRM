[menu]
;キャラ登録が最初一回でいいのでは？
[chara_reg]

;fukiの事前設定
[fuki_chara name="rikka" left="300" sippo="left" sippo_top="100" color="0xccc" font_color="0x222" radius="100" font_size="26"]
[fuki_chara name="maki" left="100" sippo="right" sippo_top="100" color="0xccc" font_color="0x222" radius="100" font_size="26"]
[position layer="message1" margint=60 marginr=60 marginb=60 marginl=60 opacity="255" border_color="0x666" border_size="5"]

;基本の声
[macro name="fuki_nml"]
    [iscript ]
        if(mp.name=="rikka"){tf.nm='rikka';tf.pos='left'};
        if(mp.name=="maki"){tf.nm='maki';tf.pos='right'};
    [endscript ]
    [resetfont ]
    [fuki_chara name="&tf.nm" font_size="26" sippo="&tf.pos" sippo_top="100"]
[endmacro]

;大きな声
[macro name="fuki_big"]
    [iscript ]
        if(mp.name=="rikka"){tf.nm='rikka';tf.pos='left'};
        if(mp.name=="maki"){tf.nm='maki';tf.pos='right'};
    [endscript ]

[fuki_chara name="&tf.nm" font_size="40" sippo="&tf.pos" sippo_top="100"]
[font bold="true"]
[endmacro ]

;かすれ声
[macro name="fuki_sml"]
    [iscript ]
        if(mp.name=="rikka"){tf.nm='rikka';tf.pos='left'};
        if(mp.name=="maki"){tf.nm='maki';tf.pos='right'};
    [endscript ]
    [fuki_chara name="&tf.nm" font_size="20" sippo="&tf.pos" sippo_top="100"]
    [font italic="true"]
[endmacro ]
;===========事前設定↑====================
[mask color="white" time="50" ]
[playse storage="chime.mp3" ]
[bg storage="sky0.jpg" time="50" ]
[mask_off time="1000" ]
[wait time="1000" ]
[bg storage="room.jpg" time="1000"]


[playbgm storage="../bgm/bgm11休み時間bpm110.mp3" loop="true" ]
[fadeoutse time="1000" ]
[chara_config time="50"]
    ;[chara_show name="rikka" layer="0" time="50"]
    [chara_show name="maki"  layer="0" time="1000"]

[fuki]
#maki
六花、遅いなぁ…[p]


[endfuki ]

[fuki]
    #六花
    発現テスト[p ]
[fuki_nml name="rikka"]

    聞いてよ！[l][r]
    makiちゃん！[p]

[resetfont]
[fuki_big name="maki"]
    #マキ
    なあに？[p]
[resetfont ]

[fuki_big name="rikka"]
    #六花
    (うわわ…ご機嫌斜めだ…)[p]
[resetfont]

[endfuki]
#
終わり[p]

[s ]