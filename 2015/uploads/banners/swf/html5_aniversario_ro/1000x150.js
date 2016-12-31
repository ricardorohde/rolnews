(function (lib, img, cjs) {

var p; // shortcut to reference prototypes

// library properties:
lib.properties = {
	width: 1000,
	height: 150,
	fps: 24,
	color: "#FFFFFF",
	manifest: [
		{src:"images/ass3.png", id:"ass3"},
		{src:"images/bg.jpg", id:"bg"},
		{src:"images/img1.png", id:"img1"},
		{src:"images/img2.png", id:"img2"},
		{src:"images/texto1.png", id:"texto1"},
		{src:"images/texto2.png", id:"texto2"}
	]
};

// stage content:
(lib._1000x150 = function(mode,startPosition,loop) {
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
	this.btnclick.setTransform(500.5,75.5,1.374,1.667,0,0,0,364,45);
	new cjs.ButtonHelper(this.btnclick, 0, 1, 2, false, new lib.Symbol1(), 3);

	this.timeline.addTween(cjs.Tween.get(this.btnclick).wait(1));

	// Layer 1
	this.instance = new lib.tudoMovie();
	this.instance.setTransform(364.5,45.5,1,1,0,0,0,364,45);

	this.timeline.addTween(cjs.Tween.get(this.instance).wait(1));

}).prototype = p = new cjs.MovieClip();
p.nominalBounds = new cjs.Rectangle(500.5,75.5,1000,150);


// symbols:
(lib.ass3 = function() {
	this.initialize(img.ass3);
}).prototype = p = new cjs.Bitmap();
p.nominalBounds = new cjs.Rectangle(0,0,1000,150);


(lib.bg = function() {
	this.initialize(img.bg);
}).prototype = p = new cjs.Bitmap();
p.nominalBounds = new cjs.Rectangle(0,0,728,90);


(lib.img1 = function() {
	this.initialize(img.img1);
}).prototype = p = new cjs.Bitmap();
p.nominalBounds = new cjs.Rectangle(0,0,1000,150);


(lib.img2 = function() {
	this.initialize(img.img2);
}).prototype = p = new cjs.Bitmap();
p.nominalBounds = new cjs.Rectangle(0,0,1000,150);


(lib.texto1 = function() {
	this.initialize(img.texto1);
}).prototype = p = new cjs.Bitmap();
p.nominalBounds = new cjs.Rectangle(0,0,1000,150);


(lib.texto2 = function() {
	this.initialize(img.texto2);
}).prototype = p = new cjs.Bitmap();
p.nominalBounds = new cjs.Rectangle(0,0,1000,150);


(lib.Tween8 = function() {
	this.initialize();

	// Layer 1
	this.instance = new lib.ass3();
	this.instance.setTransform(-364,-45);

	this.addChild(this.instance);
}).prototype = p = new cjs.Container();
p.nominalBounds = new cjs.Rectangle(-364,-45,1000,150);


(lib.Tween7 = function() {
	this.initialize();

	// Layer 1
	this.instance = new lib.ass3();
	this.instance.setTransform(-364,-45);

	this.addChild(this.instance);
}).prototype = p = new cjs.Container();
p.nominalBounds = new cjs.Rectangle(-364,-45,1000,150);


(lib.Tween6 = function() {
	this.initialize();

	// Layer 1
	this.instance = new lib.texto2();
	this.instance.setTransform(-364,-45);

	this.addChild(this.instance);
}).prototype = p = new cjs.Container();
p.nominalBounds = new cjs.Rectangle(-364,-45,1000,150);


(lib.Tween5 = function() {
	this.initialize();

	// Layer 1
	this.instance = new lib.texto2();
	this.instance.setTransform(-364,-45);

	this.addChild(this.instance);
}).prototype = p = new cjs.Container();
p.nominalBounds = new cjs.Rectangle(-364,-45,1000,150);


(lib.Tween4 = function() {
	this.initialize();

	// Layer 1
	this.instance = new lib.img2();
	this.instance.setTransform(-364,-45);

	this.addChild(this.instance);
}).prototype = p = new cjs.Container();
p.nominalBounds = new cjs.Rectangle(-364,-45,1000,150);


(lib.Tween3 = function() {
	this.initialize();

	// Layer 1
	this.instance = new lib.texto1();
	this.instance.setTransform(-364,-45);

	this.addChild(this.instance);
}).prototype = p = new cjs.Container();
p.nominalBounds = new cjs.Rectangle(-364,-45,1000,150);


(lib.Tween2 = function() {
	this.initialize();

	// Layer 1
	this.instance = new lib.texto1();
	this.instance.setTransform(-364,-45);

	this.addChild(this.instance);
}).prototype = p = new cjs.Container();
p.nominalBounds = new cjs.Rectangle(-364,-45,1000,150);


(lib.Tween1 = function() {
	this.initialize();

	// Layer 1
	this.instance = new lib.img1();
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

	// Layer 6
	this.instance = new lib.Tween7("synched",0);
	this.instance.setTransform(364,45);
	this.instance.alpha = 0;
	this.instance._off = true;

	this.instance_1 = new lib.Tween8("synched",0);
	this.instance_1.setTransform(364,45);

	this.timeline.addTween(cjs.Tween.get({}).to({state:[]}).to({state:[{t:this.instance}]},259).to({state:[{t:this.instance_1}]},13).wait(50));
	this.timeline.addTween(cjs.Tween.get(this.instance).wait(259).to({_off:false},0).to({_off:true,alpha:1},13,cjs.Ease.get(0.99)).wait(50));

	// text2
	this.instance_2 = new lib.Tween5("synched",0);
	this.instance_2.setTransform(364,45);
	this.instance_2.alpha = 0;
	this.instance_2._off = true;

	this.instance_3 = new lib.Tween6("synched",0);
	this.instance_3.setTransform(364,45);

	this.timeline.addTween(cjs.Tween.get({}).to({state:[]}).to({state:[{t:this.instance_2}]},147).to({state:[{t:this.instance_3}]},18).to({state:[]},94).wait(63));
	this.timeline.addTween(cjs.Tween.get(this.instance_2).wait(147).to({_off:false},0).to({_off:true,alpha:1},18,cjs.Ease.get(1)).wait(157));

	// img2
	this.instance_4 = new lib.Tween4("synched",0);
	this.instance_4.setTransform(364,45);
	this.instance_4.alpha = 0;
	this.instance_4._off = true;

	this.timeline.addTween(cjs.Tween.get(this.instance_4).wait(145).to({_off:false},0).to({alpha:1},22,cjs.Ease.get(1)).to({_off:true},92).wait(63));

	// text1
	this.instance_5 = new lib.Tween2("synched",0);
	this.instance_5.setTransform(364,45);
	this.instance_5.alpha = 0;
	this.instance_5._off = true;

	this.instance_6 = new lib.Tween3("synched",0);
	this.instance_6.setTransform(364,45);

	this.timeline.addTween(cjs.Tween.get({}).to({state:[]}).to({state:[{t:this.instance_5}]},2).to({state:[{t:this.instance_6}]},8).to({state:[]},135).wait(177));
	this.timeline.addTween(cjs.Tween.get(this.instance_5).wait(2).to({_off:false},0).to({_off:true,alpha:1},8,cjs.Ease.get(1)).wait(312));

	// img1
	this.instance_7 = new lib.Tween1("synched",0);
	this.instance_7.setTransform(364,45);
	this.instance_7.alpha = 0;

	this.timeline.addTween(cjs.Tween.get(this.instance_7).to({alpha:1},9,cjs.Ease.get(1)).to({_off:true},136).wait(177));

	// Layer 1
	this.instance_8 = new lib.bg();
	this.instance_8.setTransform(0,0,1.374,1.667);

	this.timeline.addTween(cjs.Tween.get(this.instance_8).wait(322));

}).prototype = p = new cjs.MovieClip();
p.nominalBounds = new cjs.Rectangle(0,0,1000,150);

})(lib = lib||{}, images = images||{}, createjs = createjs||{});
var lib, images, createjs;