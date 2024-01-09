[menu]
;キャラ登録が最初一回でいいのでは？
[chara_reg]

;fukiの事前設定
[fuki_chara name="rikka" left="300" sippo="left" sippo_top="100" color="0xccc" font_color="0x222" radius="100" font_size="26"]
[fuki_chara name="maki" left="100" sippo="right" sippo_top="100" color="0xccc" font_color="0x222" radius="100" font_size="26"]
[position layer="message1" margint=30 marginr=30 marginb=30 marginl=30 opacity="255" border_color="0x666" border_size="5"]
[macro name="fuki_others"]
    [iscript ]
        tf.w=(26-1)+(30+30)+36*(mp.c-2);
    [endscript ]
    [fuki_chara name="others" left="&1280/2-tf.w/2" top="&720/2-100" max_width="&tf.w" fix_width="&tf.w" radius="0" color="0xccc" font_color="0x222"]
[endmacro ]

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
[chara_config time="1000"]
    ;[chara_show name="rikka" layer="0" time="50"]
    [chara_show name="maki"  layer="0"]
    [chara_show name="rikka"  layer="0"]

[fuki]

#rikka
六花てすと[r]
六花てすと[r]
六花てすと[r]
六花てすと[r]
六花てすと[r]
六花てすと[p]
#maki
マキてすと[p]

[fuki_others c="4"]
#
othersてすと[r ]
othersてすと[r ]
othersてすと[r ]
othersてすと

[s]

[endfuki ]
[s ]
;=====ここまでテスト

#maki
六花、遅いなぁ…[p]

;[chara_hide name="maki" time="1000" wait="true" ]

[filter sepia="50" ]

[chara_show name="rikka" ]
#rikka
明日、アレ持ってきて教室で待ってて！[p]
[chara_hide name="rikka" time="50"  ]
[free_filter ]

[chara_show name="maki" time="50" wait="true" ]
#maki
・・・って言ってたのに・・・。[p]
#maki
ねえ、あずき。[p]
[image layer="0"  storage="fgr/azuki.png" time="1000" ]
#
この子は「和田あずき」。全長75mmの組み立てフィギュアだ。[l][r]
かわいいかわいい、私が組み立てたフィギュアだ。[p]

[endfuki ]

[s ]
