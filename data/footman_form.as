package data {
	import flash.display.*;	
	import flash.net.*;

	
	public class footman_form extends Sprite {

public var foot_id:int;
public var clubId:int;
public var footman_form_loader:Loader;
private var serv:String = "http://62.76.177.54/woff_images/";	
public var champ:String;
[Embed(source='/Users/spycom/dev/FF/images/forms.png')]
//[Embed(source='C:/Users/artem.akinchits/Dev/images/forms.png')]
private var footman_form_bitmap:Class;

	public function footman_form():void {
		
		champ = "rus";
		footman_form_loader = new Loader();
		footman_form_loader.load(new URLRequest(serv + "img4/forms.png"));
		
		addChild(footman_form_loader);
	}
	
	public function setId(id:int):void {
		foot_id = id;
		
	}
	
	public function setClub(club_id:int):void {
		clubId =  club_id;
		removeChild(footman_form_loader);
		footman_form_loader = new Loader();
		
			
			//case "rus":
						if (club_id == 711)
							footman_form_loader.load(new URLRequest(serv + "img4/forms.png"));
						if (club_id == 712)
							footman_form_loader.load(new URLRequest(serv + "forms-england/WestBrom.png"));
						if (club_id == 2)
							footman_form_loader.load(new URLRequest(serv + "img4/rus-alaniya.png"));
						if (club_id == 713)
							footman_form_loader.load(new URLRequest(serv + "img4/rus-amkar.png"));
						if (club_id == 714)
							footman_form_loader.load(new URLRequest(serv + "img4/rus-anji.png"));
						if (club_id == 715)
							footman_form_loader.load(new URLRequest(serv + "img4/rus-dinamo.png"));
						if (club_id == 716)
							footman_form_loader.load(new URLRequest(serv + "img4/rus-zenit.png"));
						if (club_id == 717)
							footman_form_loader.load(new URLRequest(serv + "img4/rus-krilya.png"));
						if (club_id == 718)
							footman_form_loader.load(new URLRequest(serv + "img4/rus-locomot.png"));
						if (club_id == 719)
							footman_form_loader.load(new URLRequest(serv + "img4/rus-rostov.png"));
						if (club_id == 720)
							footman_form_loader.load(new URLRequest(serv + "img4/rus-rubin.png"));
						if (club_id == 721)
							footman_form_loader.load(new URLRequest(serv + "forms-spain/villareal.png"));
						if (club_id == 722)
							footman_form_loader.load(new URLRequest(serv + "img4/Krasnodar.png"));
						if (club_id == 723)
							footman_form_loader.load(new URLRequest(serv + "img4/rus-spartak.png"));
						if (club_id == 724)
							footman_form_loader.load(new URLRequest(serv + "img4/rus-nalch.png"));
						if (club_id == 725)
							footman_form_loader.load(new URLRequest(serv + "img4/rus-tereg.png"));
						if (club_id == 726)
							footman_form_loader.load(new URLRequest(serv + "img4/rus-tom.png"));
						if (club_id == 727)
							footman_form_loader.load(new URLRequest(serv + "img4/rus-cska.png"));
					
			
			//case "eng":
						// форма чемпионата Англии
						if (club_id == 0)
							footman_form_loader.load(new URLRequest(serv + "forms-world/forms.png"));
						if (club_id > 746 && club_id < 771)
							footman_form_loader.load(new URLRequest(serv + "forms-england/" + club_id + ".png"));
						
						// вся остальная форма
						if (club_id >= 771 ) 
							footman_form_loader.load(new URLRequest(serv + "forms/" + club_id + ".png"));
						
				
		addChild(footman_form_loader);
	}
	
	public function getClub():int {
		return clubId;
	}
}
	
}