package data {
	import flash.display.*;	
	import flash.net.*;

	
	public class footman_form extends Sprite {

public var foot_id:int;
public var clubId:int;
public var footman_form_loader:Loader;
private var serv:String = "http://woff73.valuehost.ru/woff_images/";	
private var serv_db:String = "http://high.dih.ru/high/img/";
//private var serv_db:String = "http://dl.dropbox.com/u/6044249/";
public var champ:String;

	public function footman_form():void {
		
		champ = "rus";
		footman_form_loader = new Loader();
		footman_form_loader.load(new URLRequest("http://woff73.valuehost.ru/woff_images/img4/forms.png"));
		
		addChild(footman_form_loader);
	}
	
	public function setId(id:int):void {
		foot_id = id;
		
	}
	
	public function setClub(club_id:int):void {
		clubId =  club_id;
		removeChild(footman_form_loader);
		footman_form_loader = new Loader();
		//switch (champ) {
			
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
					//	break;
			
			//case "eng":
						// форма чемпионата Англии
						if (club_id == 0)
							footman_form_loader.load(new URLRequest(serv + "forms-world/forms.png"));
						if (club_id > 746 && club_id < 771)
							footman_form_loader.load(new URLRequest(serv + "forms-england/" + club_id + ".png"));
						if (club_id >= 771 ) 
							footman_form_loader.load(new URLRequest(serv + "forms/" + club_id + ".png"));
						/*
						if (club_id == 749)
							footman_form_loader.load(new URLRequest(serv + "forms-england/Aston-Villa.png"));
						if (club_id == 693)
							footman_form_loader.load(new URLRequest(serv + "forms-england/Birmingham.png"));
						if (club_id == 694)
							footman_form_loader.load(new URLRequest(serv + "forms-england/Blackburn.png"));
						if (club_id == 695)
							footman_form_loader.load(new URLRequest(serv + "forms-england/Blackpool.png"));
						if (club_id == 696)
							footman_form_loader.load(new URLRequest(serv + "forms-england/Bolton.png"));
						if (club_id == 697)
							footman_form_loader.load(new URLRequest(serv + "forms-england/Chelsea.png"));
						if (club_id == 698)
							footman_form_loader.load(new URLRequest(serv + "forms-england/Everton.png"));
						if (club_id == 699)
							footman_form_loader.load(new URLRequest(serv + "forms-england/Fulham.png"));
						if (club_id == 700)
							footman_form_loader.load(new URLRequest(serv + "forms-england/Liverpoll.png"));
						if (club_id == 701)
							footman_form_loader.load(new URLRequest(serv + "forms-england/Man-City.png"));
						if (club_id == 702)
							footman_form_loader.load(new URLRequest(serv + "forms-england/Man-Untd.png"));
						if (club_id == 703)
							footman_form_loader.load(new URLRequest(serv + "forms-england/NewCastle.png"));
						if (club_id == 704)
							footman_form_loader.load(new URLRequest(serv + "forms-england/Stoke.png"));
						if (club_id == 705)
							footman_form_loader.load(new URLRequest(serv + "forms-england/Sunderland.png"));
						if (club_id == 706)
							footman_form_loader.load(new URLRequest(serv + "forms-england/Tottenham.png"));
						if (club_id == 707)
							footman_form_loader.load(new URLRequest(serv + "forms-england/WestBrom.png"));
						if (club_id == 708)
							footman_form_loader.load(new URLRequest(serv + "forms-england/WestHam.png"));
						if (club_id == 709)
							footman_form_loader.load(new URLRequest(serv + "forms-england/Wigan.png"));
						if (club_id == 710)
							footman_form_loader.load(new URLRequest(serv + "forms-england/Wolves.png"));
				//		break;
				*/
						
			//	case "isp":
						if (club_id == 0)
							footman_form_loader.load(new URLRequest(serv + "forms-world/forms.png"));
						if (club_id == 1)
							footman_form_loader.load(new URLRequest(serv + "forms-world/forms.png"));
						if (club_id == 5) 
							footman_form_loader.load(new URLRequest(serv + "forms-spain/almeria.png"));
						if (club_id == 7)
							footman_form_loader.load(new URLRequest(serv + "forms-spain/athletic.png"));
						if (club_id == 8)
							footman_form_loader.load(new URLRequest(serv + "forms-spain/athletico.png"));
						if (club_id == 2)
							footman_form_loader.load(new URLRequest(serv + "forms-spain/barselona.png"));
						if (club_id == 9)
							footman_form_loader.load(new URLRequest(serv + "forms-spain/deportivo.png"));
						if (club_id == 10)
							footman_form_loader.load(new URLRequest(serv + "forms-spain/espanyol.png"));
						if (club_id == 11)
							footman_form_loader.load(new URLRequest(serv + "forms-spain/getafe.png"));
						if (club_id == 31)
							footman_form_loader.load(new URLRequest(serv + "forms-spain/hercules.png"));
						if (club_id == 32)
							footman_form_loader.load(new URLRequest(serv + "forms-spain/levante.png"));
						if (club_id == 34)
							footman_form_loader.load(new URLRequest(serv + "forms-spain/malaga.png"));
						if (club_id == 33)
							footman_form_loader.load(new URLRequest(serv + "forms-spain/mallorca.png"));
						if (club_id == 35)
							footman_form_loader.load(new URLRequest(serv + "forms-spain/osasuna.png"));
						if (club_id == 36)
							footman_form_loader.load(new URLRequest(serv + "forms-spain/racing.png"));
						if (club_id == 37)
							footman_form_loader.load(new URLRequest(serv + "forms-spain/realmadrid.png"));
						if (club_id == 39)
							footman_form_loader.load(new URLRequest(serv + "forms-spain/realzaragoza.png"));
						if (club_id == 40)
							footman_form_loader.load(new URLRequest(serv + "forms-spain/sevilla.png"));
						if (club_id == 38)
							footman_form_loader.load(new URLRequest(serv + "forms-spain/sociedad.png"));
						if (club_id == 41)
							footman_form_loader.load(new URLRequest(serv + "forms-spain/sporting.png"));
						if (club_id == 42)
							footman_form_loader.load(new URLRequest(serv + "forms-spain/valencia.png"));
						if (club_id == 43)
							footman_form_loader.load(new URLRequest(serv + "forms-spain/villareal.png"));
					//break;
						
			//	case "ita":
					if (club_id == 0)
							footman_form_loader.load(new URLRequest(serv + "forms-world/forms.png"));
						if (club_id == 1)
							footman_form_loader.load(new URLRequest(serv + "forms-world/forms.png"));
						if (club_id == 13) 
							footman_form_loader.load(new URLRequest(serv + "forms-italy/bari.png"));
						if (club_id == 14)
							footman_form_loader.load(new URLRequest(serv + "forms-italy/bologna.png"));
						if (club_id == 15)
							footman_form_loader.load(new URLRequest(serv + "forms-italy/brescia.png"));
						if (club_id == 16)
							footman_form_loader.load(new URLRequest(serv + "forms-italy/cagliari.png"));
						if (club_id == 17)
							footman_form_loader.load(new URLRequest(serv + "forms-italy/catania.png"));
						if (club_id == 18)
							footman_form_loader.load(new URLRequest(serv + "forms-italy/cesena.png"));
						if (club_id == 19)
							footman_form_loader.load(new URLRequest(serv + "forms-italy/chievo.png"));
						if (club_id == 20)
							footman_form_loader.load(new URLRequest(serv + "forms-italy/fiorentina.png"));
						if (club_id == 21)
							footman_form_loader.load(new URLRequest(serv + "forms-italy/genoa.png"));
						if (club_id == 22)
							footman_form_loader.load(new URLRequest(serv + "forms-italy/inter.png"));
						if (club_id == 23)
							footman_form_loader.load(new URLRequest(serv + "forms-italy/juventus.png"));
						if (club_id == 24)
							footman_form_loader.load(new URLRequest(serv + "forms-italy/lazio.png"));
						if (club_id == 25)
							footman_form_loader.load(new URLRequest(serv + "forms-italy/lecce.png"));
						if (club_id == 4)
							footman_form_loader.load(new URLRequest(serv + "forms-italy/milan.png"));
						if (club_id == 26)
							footman_form_loader.load(new URLRequest(serv + "forms-italy/napoli.png"));
						if (club_id == 27)
							footman_form_loader.load(new URLRequest(serv + "forms-italy/palermo.png"));
						if (club_id == 28)
							footman_form_loader.load(new URLRequest(serv + "forms-italy/parrma.png"));
						if (club_id == 12)
							footman_form_loader.load(new URLRequest(serv + "forms-italy/roma.png"));
						if (club_id == 29)
							footman_form_loader.load(new URLRequest(serv + "forms-italy/sampdoria.png"));
						if (club_id == 30)
							footman_form_loader.load(new URLRequest(serv + "forms-italy/udinese.png"));
					//	break;
			//	case "chlig":
						//if (club_id == 0)
						//	footman_form_loader.load(new URLRequest(serv + "forms-world/forms.png"));
						if (club_id == 44)
							footman_form_loader.load(new URLRequest(serv + "img4/rus-nalch.png"));
						if (club_id == 45) 
							footman_form_loader.load(new URLRequest(serv + "forms-spain/malaga.png"));
						if (club_id == 46)
							footman_form_loader.load(new URLRequest(serv + "img4/rus-cska.png"));
						if (club_id == 47)
							footman_form_loader.load(new URLRequest(serv + "forms-england/Stoke.png"));
						if (club_id == 48)
							footman_form_loader.load(new URLRequest(serv + "forms-england/Liverpoll.png"));
						if (club_id == 49)
							footman_form_loader.load(new URLRequest(serv + "forms-england/Arsenal.png"));
						if (club_id == 50)
							footman_form_loader.load(new URLRequest(serv + "img4/rus-tereg.png"));
						if (club_id == 51)
							footman_form_loader.load(new URLRequest(serv + "img4/rus-tereg.png"));
						if (club_id == 52)
							footman_form_loader.load(new URLRequest(serv + "forms-england/Aston-Villa.png"));
						if (club_id == 53)
							footman_form_loader.load(new URLRequest(serv + "forms-spain/mallorca.png"));
						if (club_id == 54)
							footman_form_loader.load(new URLRequest(serv + "forms-england/Everton.png"));
						if (club_id == 55)
							footman_form_loader.load(new URLRequest(serv + "forms-italy/sampdoria.png"));
						if (club_id == 56)
							footman_form_loader.load(new URLRequest(serv + "img4/rus-krilya.png"));
						if (club_id == 57)
							footman_form_loader.load(new URLRequest(serv + "img4/rus-anji.png"));
						if (club_id == 58)
							footman_form_loader.load(new URLRequest(serv + "forms-england/Newcastle.png"));
						if (club_id == 59)
							footman_form_loader.load(new URLRequest(serv + "forms-england/Arsenal.png"));
						if (club_id == 60)
							footman_form_loader.load(new URLRequest(serv + "forms-england/Chelsea.png"));
						if (club_id == 61)
							footman_form_loader.load(new URLRequest(serv + "forms-england/Man-Untd.png"));
						if (club_id == 62)
							footman_form_loader.load(new URLRequest(serv + "forms-england/Tottenham.png"));
						if (club_id == 63)
							footman_form_loader.load(new URLRequest(serv + "forms-spain/barselona.png"));
						if (club_id == 64)
							footman_form_loader.load(new URLRequest(serv + "forms-spain/realmadrid.png"));
						if (club_id == 65)
							footman_form_loader.load(new URLRequest(serv + "forms-spain/valencia.png"));
						if (club_id == 66)
							footman_form_loader.load(new URLRequest(serv + "forms-italy/milan.png"));
						if (club_id == 67)
							footman_form_loader.load(new URLRequest(serv + "forms-italy/roma.png"));
						if (club_id == 68)
							footman_form_loader.load(new URLRequest(serv + "forms-italy/inter.png"));
						if (club_id == 69)
							footman_form_loader.load(new URLRequest(serv + "forms-england/Newcastle.png"));
						if (club_id == 70)
							footman_form_loader.load(new URLRequest(serv + "img4/rus-Rubin.png"));
						if (club_id == 71)
							footman_form_loader.load(new URLRequest(serv + "img4/rus-spartak.png"));
						if (club_id == 72)
							footman_form_loader.load(new URLRequest(serv + "img4/rus-tom.png"));
						if (club_id == 73)
							footman_form_loader.load(new URLRequest(serv + "img4/rus-dinamo.png"));
						if (club_id == 74)
							footman_form_loader.load(new URLRequest(serv + "forms-england/Wolves.png"));
						if (club_id == 75)
							footman_form_loader.load(new URLRequest(serv + "forms-italy/bari.png"));
						if (club_id == 76)
							footman_form_loader.load(new URLRequest(serv + "forms-spain/villareal.png"));
						if (club_id == 77)
							footman_form_loader.load(new URLRequest(serv + "img4/rus-tereg.png"));
						
						//break;
						
				//default:
					//footman_form_loader.load(new URLRequest(serv + "img4/forms.png"));
		//}			
		addChild(footman_form_loader);
	}
	
	public function getClub():int {
		return clubId;
	}
}
	
}