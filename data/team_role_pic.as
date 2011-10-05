package data {
	import flash.display.*;
	
	import flash.net.*;


	public class team_role_pic extends Sprite {
		
public var footman_pic;		
public var style:text;
public var amplua:int;
public var serv:String;
//public var status:int;
[Embed(source='C:/Users/artem.akinchits/Dev/images/vrat.png')]
private var vrat_bitmap:Class;
[Embed(source='C:/Users/artem.akinchits/Dev/images/zaschit.png')]
private var zaschit_bitmap:Class;
[Embed(source='C:/Users/artem.akinchits/Dev/images/poluzasch.png')]
private var poluzasch_bitmap:Class;
[Embed(source='C:/Users/artem.akinchits/Dev/images/napad.png')]
private var napad_bitmap:Class;
[Embed(source='C:/Users/artem.akinchits/Dev/images/star.png')]
private var star_bitmap:Class;

		public function team_role_pic(role:int) {
			
			serv = new String("http://woff73.valuehost.ru/woff_images/");
			
			//status = 0;
			//foot_id = footballer_id;
			amplua = role;
			//position = field_place;
			//footman_pic = new Loader();
			
			if (amplua == 0) {
				footman_pic = new vrat_bitmap();
					//footman_pic.load(new URLRequest(serv + "img3/vrat.png"));
					style = new text(14, 8, "ВРАТ", "2");
					}
			if (amplua == 1) {
				footman_pic = new zaschit_bitmap();
					//footman_pic.load(new URLRequest(serv + "img3/zaschit.png"));
					style = new text(16, 9, "ЗАЩ", "2");
					} 
			if (amplua == 2) {
				footman_pic = new poluzasch_bitmap();
					//footman_pic.load(new URLRequest(serv + "img3/poluzasch.png"));
					style = new text(16, 9, "ПЗ", "2");
					}
			if (amplua == 3) {
				footman_pic = new napad_bitmap();
					//footman_pic.load(new URLRequest(serv + "img3/napad.png"));
					style = new text(16, 9, "НАП", "2");
					}
			if (amplua == 9) {
				footman_pic = new star_bitmap();
					style = new text(15, 9, "%%", "2");
					}
					
			addChild(footman_pic);
			addChild(style);
		}
		public function setRole(role:int):void {
			removeChild(footman_pic);
			amplua = role;
			//footman_pic = new Loader();
			
			if (amplua == 0) {
				footman_pic = new vrat_bitmap();
					//footman_pic.load(new URLRequest(serv + "img3/vrat.png"));
					style.setText("ВРАТ");
					}
			if (amplua == 1) {
				footman_pic = new zaschit_bitmap();
					//footman_pic.load(new URLRequest(serv + "img3/zaschit.png"));
					style.setText("ЗАЩ");
					} 
			if (amplua == 2) {
				footman_pic = new poluzasch_bitmap();
					//footman_pic.load(new URLRequest(serv + "img3/poluzasch.png"));
					style.setText("ПЗ");
					}
			if (amplua == 3) {
				footman_pic = new napad_bitmap();
					//footman_pic.load(new URLRequest(serv + "img3/napad.png"));
					style.setText("НАП");
					}
			if (amplua == 4) {
				footman_pic = new star_bitmap();
					//footman_pic.load(new URLRequest(serv + "img4/star.png"));
					style.setText("%");
					}
					
			addChild(footman_pic);
			
		}
		public function setStatus(stat:int):void {
			//status = stat;
		}
	}
	
	
	
}