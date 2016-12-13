(function (lib, img, cjs) {

var p; // shortcut to reference prototypes

// library properties:
lib.properties = {
	width: 1000,
	height: 150,
	fps: 28,
	color: "#FFFFFF",
	manifest: [
		{src:"images/_1aedes.png", id:"_1aedes"},
		{src:"images/_1bg.png", id:"_1bg"},
		{src:"images/_1frase.png", id:"_1frase"},
		{src:"images/_2frase.png", id:"_2frase"},
		{src:"images/_3frase.png", id:"_3frase"},
		{src:"images/_4frase.png", id:"_4frase"},
		{src:"images/_4pessoas.png", id:"_4pessoas"},
		{src:"images/_5ass.png", id:"_5ass"}
	]
};

// stage content:
(lib._1000X150 = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// timeline functions:
	this.frame_0 = function() {
		this.btnclick.addEventListener("click", fl_ClickToGoToWebPage);
		
		function fl_ClickToGoToWebPage() {
			window.open("http://www.rondonia.ro.gov.br/", "_blank");
		}
	}

	// actions tween:
	this.timeline.addTween(cjs.Tween.get(this).call(this.frame_0).wait(1));

	// Layer 2
	this.btnclick = new lib.Symbol1();
	this.btnclick.setTransform(500,75,1.374,1.667,0,0,0,364,45);
	new cjs.ButtonHelper(this.btnclick, 0, 1, 2, false, new lib.Symbol1(), 3);

	this.timeline.addTween(cjs.Tween.get(this.btnclick).wait(1));

	// Layer 1
	this.instance = new lib.tudoMovie();
	this.instance.setTransform(364,45,1,1,0,0,0,364,45);

	this.timeline.addTween(cjs.Tween.get(this.instance).wait(1));

}).prototype = p = new cjs.MovieClip();
p.nominalBounds = new cjs.Rectangle(7.1,14,2354.3,353.2);


// symbols:
(lib._1aedes = function() {
	this.initialize(img._1aedes);
}).prototype = p = new cjs.Bitmap();
p.nominalBounds = new cjs.Rectangle(0,0,1000,150);


(lib._1bg = function() {
	this.initialize(img._1bg);
}).prototype = p = new cjs.Bitmap();
p.nominalBounds = new cjs.Rectangle(0,0,1000,150);


(lib._1frase = function() {
	this.initialize(img._1frase);
}).prototype = p = new cjs.Bitmap();
p.nominalBounds = new cjs.Rectangle(0,0,1000,150);


(lib._2frase = function() {
	this.initialize(img._2frase);
}).prototype = p = new cjs.Bitmap();
p.nominalBounds = new cjs.Rectangle(0,0,1000,150);


(lib._3frase = function() {
	this.initialize(img._3frase);
}).prototype = p = new cjs.Bitmap();
p.nominalBounds = new cjs.Rectangle(0,0,1000,150);


(lib._4frase = function() {
	this.initialize(img._4frase);
}).prototype = p = new cjs.Bitmap();
p.nominalBounds = new cjs.Rectangle(0,0,1000,150);


(lib._4pessoas = function() {
	this.initialize(img._4pessoas);
}).prototype = p = new cjs.Bitmap();
p.nominalBounds = new cjs.Rectangle(0,0,1000,150);


(lib._5ass = function() {
	this.initialize(img._5ass);
}).prototype = p = new cjs.Bitmap();
p.nominalBounds = new cjs.Rectangle(0,0,1000,150);


(lib.Tween10 = function() {
	this.initialize();

	// Layer 1
	this.instance = new lib._5ass();
	this.instance.setTransform(-364,-45);

	this.addChild(this.instance);
}).prototype = p = new cjs.Container();
p.nominalBounds = new cjs.Rectangle(-364,-45,1000,150);


(lib.Tween9 = function() {
	this.initialize();

	// Layer 1
	this.instance = new lib._4frase();
	this.instance.setTransform(-364,-45);

	this.addChild(this.instance);
}).prototype = p = new cjs.Container();
p.nominalBounds = new cjs.Rectangle(-364,-45,1000,150);


(lib.Tween8 = function() {
	this.initialize();

	// Layer 1
	this.instance = new lib._4pessoas();
	this.instance.setTransform(-364,-45);

	this.addChild(this.instance);
}).prototype = p = new cjs.Container();
p.nominalBounds = new cjs.Rectangle(-364,-45,1000,150);


(lib.Tween7 = function() {
	this.initialize();

	// Layer 1
	this.instance = new lib._3frase();
	this.instance.setTransform(-364,-45);

	this.addChild(this.instance);
}).prototype = p = new cjs.Container();
p.nominalBounds = new cjs.Rectangle(-364,-45,1000,150);


(lib.Tween6 = function() {
	this.initialize();

	// Layer 1
	this.instance = new lib._3frase();
	this.instance.setTransform(-364,-45);

	this.addChild(this.instance);
}).prototype = p = new cjs.Container();
p.nominalBounds = new cjs.Rectangle(-364,-45,1000,150);


(lib.Tween5 = function() {
	this.initialize();

	// Layer 1
	this.instance = new lib._2frase();
	this.instance.setTransform(-364,-45);

	this.addChild(this.instance);
}).prototype = p = new cjs.Container();
p.nominalBounds = new cjs.Rectangle(-364,-45,1000,150);


(lib.Tween4 = function() {
	this.initialize();

	// Layer 1
	this.instance = new lib._2frase();
	this.instance.setTransform(-364,-45);

	this.addChild(this.instance);
}).prototype = p = new cjs.Container();
p.nominalBounds = new cjs.Rectangle(-364,-45,1000,150);


(lib.Tween3 = function() {
	this.initialize();

	// Layer 1
	this.instance = new lib._1aedes();
	this.instance.setTransform(-364,-45);

	this.addChild(this.instance);
}).prototype = p = new cjs.Container();
p.nominalBounds = new cjs.Rectangle(-364,-45,1000,150);


(lib.Tween2 = function() {
	this.initialize();

	// Layer 1
	this.instance = new lib._1aedes();
	this.instance.setTransform(-364,-45);

	this.addChild(this.instance);
}).prototype = p = new cjs.Container();
p.nominalBounds = new cjs.Rectangle(-364,-45,1000,150);


(lib.Tween1 = function() {
	this.initialize();

	// Layer 1
	this.instance = new lib._1frase();
	this.instance.setTransform(-364,-45);

	this.addChild(this.instance);
}).prototype = p = new cjs.Container();
p.nominalBounds = new cjs.Rectangle(-364,-45,1000,150);


(lib.Symbol1 = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// Layer 1
	this.shape = new cjs.Shape();
	this.shape.graphics.f("#256193").s().dr(-364,-45,728,90);
	this.shape.setTransform(364,45);
	this.shape._off = true;

	this.timeline.addTween(cjs.Tween.get(this.shape).wait(3).to({_off:false},0).wait(1));

}).prototype = p = new cjs.MovieClip();
p.nominalBounds = null;


(lib.tudoMovie = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// Layer 8
	this.instance = new lib.Tween10("synched",0);
	this.instance.setTransform(364,45);
	this.instance.alpha = 0;
	this.instance._off = true;

	this.timeline.addTween(cjs.Tween.get(this.instance).wait(564).to({_off:false},0).to({alpha:1},25,cjs.Ease.get(1)).wait(91));

	// texto4
	this.instance_1 = new lib.Tween9("synched",0);
	this.instance_1.setTransform(364,45);
	this.instance_1.alpha = 0;
	this.instance_1._off = true;

	this.timeline.addTween(cjs.Tween.get(this.instance_1).wait(325).to({_off:false},0).to({alpha:1},21,cjs.Ease.get(1)).to({_off:true},219).wait(115));

	// pessoas4
	this.instance_2 = new lib.Tween8("synched",0);
	this.instance_2.setTransform(304,45);
	this.instance_2.alpha = 0;
	this.instance_2._off = true;

	this.timeline.addTween(cjs.Tween.get(this.instance_2).wait(305).to({_off:false},0).to({x:364,alpha:1},21,cjs.Ease.get(1)).to({_off:true},239).wait(115));

	// texto3
	this.instance_3 = new lib.Tween6("synched",0);
	this.instance_3.setTransform(364,45);
	this.instance_3.alpha = 0;
	this.instance_3._off = true;

	this.instance_4 = new lib.Tween7("synched",0);
	this.instance_4.setTransform(364,45);

	this.timeline.addTween(cjs.Tween.get({}).to({state:[]}).to({state:[{t:this.instance_3}]},196).to({state:[{t:this.instance_4}]},20).to({state:[]},90).wait(374));
	this.timeline.addTween(cjs.Tween.get(this.instance_3).wait(196).to({_off:false},0).to({_off:true,alpha:1},20,cjs.Ease.get(1)).wait(464));

	// texto2
	this.instance_5 = new lib.Tween4("synched",0);
	this.instance_5.setTransform(364,45);
	this.instance_5.alpha = 0;
	this.instance_5._off = true;

	this.instance_6 = new lib.Tween5("synched",0);
	this.instance_6.setTransform(364,45);

	this.timeline.addTween(cjs.Tween.get({}).to({state:[]}).to({state:[{t:this.instance_5}]},103).to({state:[{t:this.instance_6}]},19).to({state:[]},75).wait(483));
	this.timeline.addTween(cjs.Tween.get(this.instance_5).wait(103).to({_off:false},0).to({_off:true,alpha:1},19,cjs.Ease.get(1)).wait(558));

	// aedes1
	this.instance_7 = new lib.Tween2("synched",0);
	this.instance_7.setTransform(364,-70,1.28,1.28);
	this.instance_7._off = true;

	this.instance_8 = new lib.Tween3("synched",0);
	this.instance_8.setTransform(364,45);

	this.timeline.addTween(cjs.Tween.get({}).to({state:[]}).to({state:[{t:this.instance_7}]},13).to({state:[{t:this.instance_8}]},24).to({state:[]},66).wait(577));
	this.timeline.addTween(cjs.Tween.get(this.instance_7).wait(13).to({_off:false},0).to({_off:true,scaleX:1,scaleY:1,y:45},24,cjs.Ease.get(1)).wait(643));

	// texto1
	this.instance_9 = new lib.Tween1("synched",0);
	this.instance_9.setTransform(364,45,2.354,2.354);
	this.instance_9.alpha = 0;

	this.timeline.addTween(cjs.Tween.get(this.instance_9).to({scaleX:1,scaleY:1,alpha:1},10,cjs.Ease.get(1)).to({_off:true},93).wait(577));

	// bg
	this.instance_10 = new lib._1bg();

	this.timeline.addTween(cjs.Tween.get(this.instance_10).wait(680));

}).prototype = p = new cjs.MovieClip();
p.nominalBounds = new cjs.Rectangle(-492.9,-60.9,2354.3,353.2);

})(lib = lib||{}, images = images||{}, createjs = createjs||{});
var lib, images, createjs;