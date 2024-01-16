;[autoload]

/*
    [iscript ]
    const fs = require('fs');
    const path = require('path');

    function countFilesInDirectory(directoryPath) {
    try {
        const files = fs.readdirSync(directoryPath);
        return files.length;
    } catch (err) {
        console.error('エラー:', err);
        return -1; // エラー時は-1を返すなどの対応が可能です
    }
    }

    // 現在のスクリプトファイルからの相対パスを使用する例
    const directoryPath = './data/fgimage/chara/akane/';
    const absolutePath = path.resolve(__dirname, directoryPath); // 絶対パスに変換

    const fileCount = countFilesInDirectory(absolutePath);
    if (fileCount >= 0) {
    console.log(`ディレクトリ内のファイル数: ${fileCount}`);
    }
    [endscript ]

    [s ]
*/
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

[fuki]

#maki
六花、遅いなぁ…[p]

[filter sepia="50" ]

[chara_show name="rikka" ]
#rikka
明日、アレ持ってきて[r]教室で待ってて！[p]
[chara_hide name="rikka" time="50"  ]
[free_filter ]

[chara_show name="maki" time="50" wait="true" zindex="1" ]
#maki
・・・って言ってたのに・・・。[p]
#maki
ねえ、あずき。[p]
[image layer="0" name="topic"   storage="fgr/azuki.png" time="1000" ]

[fuki_others c="7"]
#
この子は[r]「和田あずき」。[l][r]全長75mmの組み立てフィギュアだ。[l][r]

[chara_config pos_mode="false" anim="false" ]
[chara_show name="rikka" left="&1280/2-400/2" top="&720-600" zindex="0" time="50"   ]

かわいいかわいい[l][r]私が組み立てた[r]フィギュアだ。[p]

#rikka
お待たせ～[p]

[chara_config anim="true" talk_anim="up" ]

#maki
うわぁ！[p]

[chara_config talk_anim="none" pos_mode="true"]

[chara_hide name="maki"  time="50" ]
[free name="topic"  layer="0" ]

;[wait time="1000" ]

;[chara_show name="rikka" wait="false" ]
[chara_show name="maki" wait="true" time="500" ]

#rikka
どうしたの[p]

#maki
ううん、何も[l][r]
あれ、その箱は？

[image layer="0" name="topic"   storage="topic/package.jpg" time="1000" left="&1280-285"]
[p]

[stopbgm ]

[autosave ]

*save
#rikka
チュアシュを遊ぼう[p]

#maki
え？[p]

[layopt layer="message1" visible="false"  ]


[keyframe name="roll" ]
    [frame p="0%" rotateZ="0deg" y="0"]
    [frame p="100%" rotateZ="-360deg" y="-100"]

[endkeyframe ]


[camera x="&1280/2-300" y="&720/2-200" zoom="2" ease_type="ease-out" time="500" ]
[playbgm storage="../bgm/bgm02ヒロインB(活発）登場bpm170.mp3" loop="true" ]
[playse storage="きらーん1.mp3" ]
[layopt layer="message1" visible="true"  ]

#rikka
チュアシュを遊ぼう！！(大声)[p]
[reset_camera time="50" ]
#maki
今から!?[p]
[iscript ]
    tf.i=300*3+100*2
    tf.i=(1280-tf.i)/2
    tf.j=300
    tf.l=tf.j/3
[endscript ]
[image layer="0" name="topic,topic1" storage="topic/tblno1.jpg" time="500" top="0" left="&tf.i+(tf.j+tf.l)*0"     ]
もう放課後だし、
[image layer="0" name="topic,topic2" storage="topic/tblno2.jpg" time="500" top="0" left="&tf.i+(tf.j+tf.l)*1"     ]
晩御飯も布団もないよ？[l][r]
[image layer="0" name="topic,topic3" storage="topic/tblno3.jpg" time="500" top="0" left="&tf.i+(tf.j+tf.l)*2"     ]
無理無理！[p ]

(時間があれば遊びたいけど…)[p ]

[camera zoom="3" x="200" y="50" ease_type="ease-out" time="500"]

#rikka
本場出身のマキちゃん!![r]ご心配なく!!![p]

[reset_camera time="50" ]


[iscript ]
    tf.i=0
    tf.txt=[];
    tf.txt[0]='30分で終わる!';
    tf.txt[1]='準備は2ステップ!';
    tf.txt[2]='シンプルでわかりやすい';

[endscript ]

*try
[text val="&tf.txt[tf.i]"]
[kanim name="rikka" keyframe="roll" mode="none" count="1" time="500"  ]
[anim name="rikka" left="-=200" time="500" ]
[wa]
[free layer="0" name="&'topic'+(3-tf.i)" time="500" wait="false" ]
[wait time="1000" ]
[cm ]

@eval exp="tf.i++" 
@jump target="*try" cond="tf.i!=3"

[camera zoom="2.5" x="-200" y="100" time="500"  ]

ね！(お目目キラキラ)[p]
[camera zoom="2.5" x="-300" y="100" time="500"  ]
遊ぼう！[p]
[camera zoom="5" time="500" y="0" time="500" ]
#maki
わ、わかった！[l][r]
わかったから！！！！[p]

[kanim name="rikka" keyframe="roll" count="2" time="500" ]
[anim name="rikka" left="&200*3" time="500"  wait="false"]

[reset_camera time="50" ]
[wa ]
[wait time="500" ]

#rikka
よっし！！[p]

#maki
はいはい…それで？[r]
持って来てっていうことはこれを使うんだよね？[p]

[image layer="0" name="topic"   storage="fgr/azuki.png" time="1000" ]

#rikka
おおー！ありがと！[r]そうそう！[p]
[free name="topic" layer="0" time="500" ]

[keyframe name="flap" ]
    [frame p="0%" rotateY="0deg"  ]
    [frame p="100%" rotateY="360deg"  ]
[endkeyframe ]

[layopt layer="message1" visible="false"  ]

[kanim name="rikka" keyframe="flap" count="2" time="500" ]
[kanim name="maki" keyframe="flap" count="1" time="250" ]
[anim name="rikka" left="+=300" time="500" ]
[anim name="maki" left="-=300" time="500" ]

[wa]
[fadeoutbgm time="500" ]
[layopt layer="message1" visible="true"  ]

#rikka
と、いうわけで！[p]
[playbgm storage="../bgm/bgm09登校bpm130.mp3" ]
これが箱の中身！[p]
[chara_hide_all layer="0" time="100" wait="true" ]
;[wait time="1000"]
[layopt layer="message1" visible="false"  ]


[image name="keying" storage="topic/keying.jpg" layer="0" zindex="0" left="&(1280-1152)/2" top="&(720-648)/2" page="back" ]
[trans layer="0" time="500" method="bounceIn" ]
[wait time="3500"]
[chara_show layer="1" name="rikka" zindex="99" time="500"  wait="false" ]
[chara_show layer="1" name="maki" zindex="98"  time="800"  wait="true" ]
[anim name="rikka" left="+=300" time="500" ]
[anim name="maki" left="-=300" time="500" ]

[layopt layer="message1" visible="true"  ]

#maki
なんだこれ[p]

#rikka
これを専門用語で『素材不足』といいます。[p]
[endfuki ]

#
第1話終わり。続く・・・！


[s ]
