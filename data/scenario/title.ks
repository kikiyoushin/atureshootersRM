
[cm]

@clearstack
@bg storage ="title.jpg" time=100
@wait time = 200

*start 

/*
[button x=135 y=230 graphic="title/button_start.png" enterimg="title/button_start2.png"  target="gamestart"]
[button x=135 y=320 graphic="title/button_load.png" enterimg="title/button_load2.png" role="load" ]
[button x=135 y=410 graphic="title/button_cg.png" enterimg="title/button_cg2.png" storage="cg.ks" ]
[button x=135 y=500 graphic="title/button_replay.png" enterimg="title/button_replay2.png" storage="replay.ks" ]
[button x=135 y=590 graphic="title/button_config.png" enterimg="title/button_config2.png" role="sleepgame" storage="config.ks" ]
*/

[iscript ]
    tf.t=[];
    tf.t=['第','話'];

    var i=0,l=0;

    for(let n=1;n<=6;n++){
            
       tyrano.plugin.kag.ftag.startTag("glink", {text:tf.t[0]+n+tf.t[1] ,x:eval(100+400*l) ,y:eval(100+150*i) ,width:200 ,height:100 , storage:"title.ks" ,target:"*go" ,preexp:n , exp:"tf.i=preexp"} );
       i++;
       if(i>=3){l=1;i=0;};
    };

[endscript ]
    /*
        [glink text="第1話" x="&100+0*350" y="&100+0*150" width="200" height="100" ]
        [glink text="第2話" x="&100+0*350" y="&100+1*150" width="200" height="100" ]
        [glink text="第3話" x="&100+0*350" y="&100+2*150" width="200" height="100" ]

        [glink text="第4話" x="&100+1*350" y="&100+0*150" width="200" height="100" ]
        [glink text="第5話" x="&100+1*350" y="&100+1*150" width="200" height="100" ]
        [glink text="第6話" x="&100+1*350" y="&100+2*150" width="200" height="100" ]
    */

[s]
/*
*gamestart
;一番最初のシナリオファイルへジャンプする
@jump storage="scene1.ks"
*/


*go

/*
共通で消す部位。
消してからストーリーに飛ぶ。

*/
[iscript ]
$(".ui-draggable").hide();

[endscript ]

;録画カウントダウン5==========================================
    [cm ]
    [freeimage layer="base" time="50" ]

    [layopt layer="0" visible="true"  ]
    @eval exp="tf.l=5";
    *count
    [ptext text="&tf.l" layer="0" size="100" color="white" width="500" x="&1280/2" y="300" overwrite="true" name="cnt"]
    [wait time="1000" ]
    @eval exp="tf.l--" 
    [jump target="*count" cond="tf.l!==0"]

    [free layer="0" name="cnt" time="50" ]
;/録画カウントダウン5==========================================



[autostart]

[jump storage="&'story/epi'+tf.i+'.ks'" ]


[s ]


