package {
	import adobe.PNGEncoder;
	
	import api.MD5;
	
	import com.bitapps.appgrade.installer.AppGradeInstaller;
	
	import data.Ads;
	import data.BetFair;
	import data.LeadersPartButton;
	import data.SaveOffer;
	import data.Schedule;
	import data.UserAvatar;
	import data.Version;
	import data.WelcomeMsg;
	import data.autoTeam;
	import data.blocknation;
	import data.buyBudgetTableClass;
	import data.down_arrow;
	import data.down_b;
	import data.firstManualHint;
	import data.footman_form;
	import data.gamesList;
	import data.hint;
	import data.loadingProc;
	import data.panel;
	import data.panel_transfer;
	import data.rules_s;
	import data.smartButton;
	import data.sostav_b;
	import data.team_role_pic;
	import data.text;
	import data.transfer_b;
	import data.transfer_get;
	import data.trophy_b;
	import data.up_b;
	import data.vk_photo;
	import data.winners_list_sprite;
	
	import flash.display.*;
	import flash.events.*;
	import flash.filters.*;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	import flash.net.*;
	import flash.system.LoaderContext;
	import flash.system.Security;
	import flash.text.*;
	import flash.ui.Mouse;
	import flash.utils.*;
	
	import ru.etcs.ui.MouseWheel;

	//import ads.CMBlockVk;

public class FF extends Sprite{

	private var version:Version;
	private var status:text;
	private var serv:String;
	private var loadedFiles:int;

private var background:Loader;
private var background1:Loader;
private var background2:Loader;
private var background3:Loader;
private var logo:Loader;
private var logo2:Loader;
private var loader3:Loader;
public var top1:Loader;
private var top2:Bitmap;
private var top3:Bitmap;
private var top4:Bitmap;
private var eu:Loader;
private var mp:Loader;
private var star:Loader;
private var star_sprite:Sprite;
private var star2:Bitmap;
private var star3:Bitmap;
private var star4:Bitmap;
private var star5:Bitmap;
private var star6:Bitmap;
private var block:Loader;
private var block2:Loader;
private var blocknation1:blocknation;
private var blocknation2:blocknation;
private var blocknation3:blocknation;
private var blocknation4:blocknation;
private var blocknation5:blocknation;
private var blocknation6:blocknation;
private var russia:Loader;
private var world:Loader;
private var england:Loader;
private var italia:Loader;
private var spain:Loader;
private var chempions:Loader;
private var liders:Loader;
private var click:Loader;
private var hover:Loader;
private var link:Loader;
private var click1:Loader;
private var hover1:Loader;
private var link1:Loader;
private var click2:Loader;
private var hover2:Loader;
private var link2:Loader;
private var click3:Loader;
private var hover3:Loader;
private var link3:Loader;
private var click4:Loader;
private var hover4:Loader;
private var link4:Loader;
private var active:Loader;
private var active1:Loader;
private var active2:Loader;
private var active3:Loader;
private var active4:Loader;

private var input:Loader;
private var input2:Loader;
private var select:Loader;
private var select2:Loader;
private var select_leaders:Loader;
private var select_st:Loader;
private var scroll:Loader;
private var scroll2:Loader;
private var scroll_r:Loader;
private var scroll_tr:Loader;
private var scroll_lig:Loader;
private var scroll_clubs:Loader;
private var scroll_ftb:Loader;
private var scroll_tou:Loader;
private var liga:Loader;
private var rating:Loader;
private var rating2:Loader;
private var points:Loader;
private var points2:Loader;
private var search_form:Loader;
private var budget:Loader;
private var transfers:Loader;
private var prize:Loader;
private var button_blue:Loader;
private var button_blue2:Loader;
private var button_blue3:Loader;
private var button_blue_long:Loader;
private var button_blue_long2:Loader;
private var button_blue_long3:Loader;
private var button_blue_alpha:Loader;
private var button_blue_liga:Loader;
private var button_blue_invite:Loader;

private var liga2:Loader;
private var profile:Loader;
private var ava_big:Loader;
private var footman_form_array:Array;
private var footman_scores:Array;

private var footman_name_form:Array;
private var footman_down:Array;
private var footman_up:Array;
private var footman_replace:Array;

private var futbolist:Loader;
private var table:Loader;
private var tours:Loader;
private var delete_b:Loader;

private var zebra3:Loader;
private var table3:Loader;
private var transfers2:Loader;
private var match:Loader;
private var buy:Loader;
private var statistics:Loader;
private var table2:Loader;
private var zebra:Loader;
private var button_blue_:Loader;
private var button_blue_alpha_:Loader;

//private var dropdowmmenu_png:Loader;
private var dropdowmmenu_png2:Loader;
private var dropdownmenu_tours:Sprite;
private var captain:Loader;
private var one:Loader;
private var two:Loader;
private var three:Loader;
private var offer_button:Sprite;

private var all_txt1:text;
private var all_txt3:text;
public var all_txt4:text;

//private var main_txt1:text;
//private var main_txt2:text;
private var main_txt3:text;
private var main_txt4:text;
private var main_txt5:text;
private var main_txt55:text;
private var main_txt6:text;
private var main_txt7:text;

//private var main_txt21:text;
//private var main_txt22:text;
private var main_txt23:text;
private var main_txt24:text;
private var main_txt25:text;
private var main_txt255:text;
private var main_txt26:text;
private var main_txt27:text;

//private var main_txt31:text;
//private var main_txt32:text;
private var main_txt33:text;
private var main_txt34:text;
private var main_txt35:text;
private var main_txt355:text;
private var main_txt36:text;
private var main_txt37:text;

//private var main_txt421:text;
//private var main_txt422:text;
private var main_txt423:text;
private var main_txt424:text;
private var main_txt425:text;
private var main_txt4255:text;
private var main_txt426:text;
private var main_txt47:text;

//private var main_txt51:text;
//private var main_txt52:text;
private var main_txt53:text;
private var main_txt54:text;
private var main_txt55_:text;
private var main_txt555:text;
private var main_txt56:text;
private var main_txt57:text;

//private var main_txt621:text;
//private var main_txt622:text;
private var main_txt623:text;
private var main_txt624:text;
private var main_txt625:text;
private var main_txt6255:text;
private var main_txt626:text;

private var rules_txt1:text;

private var main1_txt1:text;
private var main1_txt2:text;
private var main1_txt3:text;
private var main1_txt4:text;
private var main1_txt4_1:text;
private var main1_txt5:text;
private var main1_txt6:text;
private var main1_txt7:text;
private var main1_txt8:text;
private var main1_txt_note1:text;
private var main1_txt2_winners:text;

private var main2_txt1:text;
private var main2_txt2:text;
private var main2_txt3:text;
private var main2_txt4:text;
private var main2_txt5:text;
private var main2_txt6:text;
private var main2_txt7:text;
private var main2_txt8:text;
private var main2_txt9:text;
private var main2_txt8_:text;
private var main2_txt9_:text;
private var main2_txt10:text;
private var main2_txt11:text;
private var main2_txt10_:text;
private var main2_txt11_:text;
private var main2_txt12:text;
private var main2_txt13:text;
private var main2_txt14:text;
private var main2_txt15:text;
private var main2_txt16:text;
private var main2_txt17:text;
private var main2_txt18:text;
private var main2_txt19:text;
private var main2_txt19_:text;
private var main2_txt20:text;
private var main2_txt21:text;
private var main2_txt22:text;
private var main2_txt23:text;
private var main2_txt24:text;
private var main2_txt25:text;
private var main2_txt26:text;
private var main2_betfair:text;

private var main3_txt1:text;
private var main3_txt2:text;
private var main3_txt3:text;
private var main3_txt4:text;
private var main3_txt5:text;
private var main3_txt5_:text;
private var main3_txt6:text;
private var main3_txt7:text;
private var main3_txt8:text;
private var main3_txt8_:text;
private var main3_txt_inv:text;
private var select_leaders_tour_txt:text;

private var main4_txt1:text;
		
private var main1_txt24:text;
private var main1_txt25:text;
private var footman_name_txt:Array;

private var p_liga:Array;
private var p_liga_backup:Array;
private var p_liga_poi:Array;
private var liga_num:Array;

private var footman_txt:text;
private var footman_txt1:text;
private var footman_txt2:text;
private var footman_txt3:text;
private var footman_txt4:text;
private var footman_txt5:text;
private var footman_txt6:text;
private var footman_txt7:text;
private var footman_txt8:text;
private var footman_txt9:text;
private var footman_txt10:text;
private var footman_txt11:text;
private var footman_txt12:text;
private var footman_txt13:text;
private var footman_txt14:text;
private var footman_txt15:text;

private var team_stat_txt:text;
private var team_stat_txt2:text;
private var team_stat_txt3:text;
//private var team_stat_txt4:text;
private var team_stat_txt5:text;
private var team_stat_txt6:text;
private var team_stat_txt7:text;
private var team_stat_txt8:text;
private var team_stat_txt9:text;
private var team_stat_txt01:text;
private var team_stat_txt02:text;
private var team_stat_txt03:text;
private var team_stat_txt04:text;
private var team_stat_txt05:text;
private var team_stat_txt06:text;
private var team_stat_txt07:text;
private var team_stat_txt08:text;
private var team_stat_txt09:text;
private var team_stat_txt010:text;
private var team_stat_txt011:text;
private var team_stat_txt012:text;
private var team_stat_txt013:text;

private var transfer_txt:text;
private var transfer_txt1:text;
private var transfer_txt2:text;
private var transfer_txt3:text;
private var transfer_txt4:text;
private var transfer_txt5:text;
private var transfer_txt6:text;
private var transfer_txt7:text;
private var transfer_txt8:text;
private var transfer_txt9:text;
private var transfer_txt10:text;
private var transfer_txt11:text;
private var transfer_txt12:text;

private var scroll_timer:Timer;
private var scroll_timer2:Timer;
private var scroll_timer_tr:Timer;
private var scroll_timer_lig:Timer;
private var scroll_timer_clubs:Timer;
private var scroll_timer_ftb:Timer;
private var scroll_timer_tours:Timer;

private var team_list:Sprite;
private var safe_team_list:Sprite;
private var all_lig_list:Sprite;
private var team_stat_list:Sprite;
private var footman_stat_list:Sprite;
private var transfer_list:Sprite;
private var liga_list:Sprite;
private var field:Loader;
private var camera:Loader;
private var footman_list:Sprite;
private var dropdown_menu_sprite:Sprite;
private var dropdown_menu_sprite2:Sprite;

private var errorSprite:Sprite;
private var errorFon:Loader;
private var buyBudgetSprite:Sprite;
//private var download:Array;

private var begin_timer:Timer;
private var preload_timer:Timer;
private var postload_timer:Timer;
private var loadStatus_timer:Timer;
private var select1:Sprite;
private var select4:Sprite;
private var select2_:Sprite;
private var select3:Sprite;
private var select5:Sprite;
private var select6:Sprite;

private var select1sprite:Sprite;
private var select2sprite:Sprite;
private var select3sprite:Sprite;
private var select4sprite:Sprite;
private var select5sprite:Sprite;
private var select6sprite:Sprite;

private var button1:Sprite;
private var button2:Sprite;
private var button3:Sprite;
private var button4:Sprite;
private var button3_euro:Sprite;
private var button4_euro:Sprite;
//// ---------------- fix here is needable!!!
private var button1txt:text;
private var button2txt:text;
private var button3txt:text;
private var button4txt:text;
//private var textFormat:TextFormat;
//private var textFormatBlack:TextFormat;

private var load:Sprite;
private var main:Sprite;
private var main1:Sprite;
private var main2:Sprite;
private var main3:Sprite;
private var main4:Sprite;

private var footman:Sprite;
private var team_sostav:Sprite;
private var transfer:Sprite;
private var team_stat:Sprite;
private var player_liga:Sprite;
private var bet_fair:Sprite;

private var help_button:Sprite;
private var main_button:Sprite; 
private var mainhelp_button:Sprite;
private var help_buttontxt:text;
//private var help_exit:Sprite;
private var help:Sprite;
private var window:String;

private var yy__:int;
private var yy_r:int;

private var number:int;
		private var number_txt:text;
//		private var avatar:Loader;
		private var nazvanie:Array;
		private var nazvanie2:text;
		private var points_:Array;
//		private var info:Loader;
		private var sostav:Array;
		private var trophy:Array;
		private var liders_list:Sprite;
		
private var ticket_status:text;
		//private var avatar:Loader;
		//private var footman_name:text;
		private var footman_club:Array;
		private var footman_points:text;
		private var style:text;
		private var footman_pic:Array;
		private var razdelitel:Loader;
private var transfer_rating:Array;
//private var vk:VKApp;
private var player_name:String;
private var methodFromAPI:String;
private var request:URLRequest;
private var user_id:int;

private var apiMethod:String;
private var woff_request:URLRequest;
private var woff_lid_l_request:URLRequest;
private var woff_general_request:URLRequest;
//private var woff_lib:woff;
public var woffLoadComplete2:Function;
public var woff_sig:String;
private var woff_uid:int;
private var woff_api_id:int;
private var woff_secret:String;
private var woff_sid:String;
private var footman_array:Array;
private var team_stat_array:Array;
private var team_eu_cost:Array;
private var full_matches:Array;
private var partial_matches:Array;
private var goals:Array;
private var assists:Array;
private var penalties:Array;
private var autogoals:Array;
private var hat_tricks:Array;
private var failed_penatlies:Array;
private var reflected_penalties:Array;
private var reflected_goals:Array;
private var yellow_cards:Array;
private var red_cards:Array;
private var ko:Array;
private var summary:Array;
private var team_role:Array;

private var transfer_array:Array;
private var transfer_club_array:Array;
private var transfer_footman:text;
private var cost:Array;
private var transfer_points_array:Array;
private var transfer_efficiency:Array;
private var current_id:int;
private var current_role:int;
private var current_club:int;
private var all_lig:Array;
private var all_lig_p:Array;
private var transfer_get_array:Array;
private var club_array:Array;

private var current_foot_id1:int;
private var current_foot_id2:int;
private var current_foot_id1_:int;
private var current_foot_id2_:int;
private var current_status1:int;

private var rules:rules_s;
private var current_captain_id:int;
private var total_team_cost:int;
private var transfers_do:int;
private var transfers_left:int;
private var transfers_left2:int;
private var transfers_left3:int;
private var transfers_left4:int;
private var transfers_left5:int;
private var transfers_left6:int;
private var budget_left:int;
private var current_tour:int;
private var current_new_tour:int;

private var loading_balls:loadingProc;
public var user_photo:vk_photo;
private var myGlow:GlowFilter;
private var myGlow_green:GlowFilter;
private var myGlow_blue:GlowFilter;
private var innerGlow_red:GlowFilter;
private var innerGlow:GlowFilter;
private var myBevel:BevelFilter;
private var myShadow:DropShadowFilter;
private var test:text;
private var errorText:text;
public var wrapper: Object;
public var woff_isAppUser:int;
public var search_field:text;
public var search_xml:XMLList;
public var search_xml2:XML;
//private var woff_api:String;
private var woff_api1:String;
//private var woff_api2:String;
private var woff_api3:String;
private var current_woff_api:String;
private var fff:Array;
private var champ:String;
private var zope1:int;
private	var zope2:int;
private	var zope3:int;
private var footman_stat_tour:Array;
private	var footman_stat_array:Array;
private	var footman_stat_res:Array;
private	var footman_stat_points:Array;
private var team_fb_cost:Array;
private var leaders_list_array:Array;
private var zamena_first:int;
private var zamena_second:int;
private var zamena_third:int;
private var stat_hint:hint;
private var current_team_id:int;
private var current_budget:int;
private var current_tax:int;
private var current_tax_b:int;
private var current_tax_t:int;
private var current_transfers_mass:int;
private var current_tournament:int;
private var is_budget_bought:int;
private var is_transfers_bought:int;
//public var fil:FileReference;
private var buyBudgetTable:buyBudgetTableClass;
private var welcomeMessage:WelcomeMsg;
private var firstManual:firstManualHint;
private var VKAds:Ads;
private var page_button:Array;
private var page_button_sprite:Sprite;
private var winners_list:winners_list_sprite;
private var woff_from_id:int;
private var referrer:String;
private var poster_id:int;
private var post_id:int;
private var check_team_trigger:int;
private var down_arrows:Array;
private var friends_league_avatar:UserAvatar;
private var main4_avatar:Loader;
private var tour_array:Array;
private var panel_transfer_right:panel_transfer;
private var lc:LoaderContext;
private var select1smart:smartButton;
private var select2smart:smartButton;
private var select3smart:smartButton;
private var select4smart:smartButton;
private var select5smart:smartButton;
private var gamesListTransfers:gamesList;
private var favClubs:Array;
private var myShadow_o:DropShadowFilter;

[Embed(source='/Users/spycom/dev/FF/images/razdelitel.png')]
//[Embed(source='C:/Users/artem.akinchits/Dev/images/razdelitel.png')]
private var razdelitel_b:Class;
[Embed(source='/Users/spycom/dev/FF/images/zebra3.png')]
//[Embed(source='C:/Users/artem.akinchits/Dev/images/zebra3.png')]
private var zebra3_bitmap:Class;

	public function FF() {
		
				addEventListener(Event.COMPLETE, button2event2);
				//addEventListener(Event.ACTIVATE, transferPostEvent);
				
		//------- флэш обёртка !!!--------------------------------------
		
				this.addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
			}
		
		public function onAddedToStage(e: Event): void {
    			wrapper = Object(this.parent.parent);
				Security.allowDomain("vk.com", "vkontakte.ru");
				stage.dispatchEvent(new Event(Event.DEACTIVATE));
				stage.dispatchEvent(new Event(Event.ACTIVATE));
				
    	woff_isAppUser = stage.loaderInfo.parameters.is_app_user;
    	
    	if (woff_isAppUser !== 1) {
    		wrapper.external.showInstallBox();
    		wrapper.addEventListener("onApplicationAdded", showSettingsBox);
    		}
    		
    	//----- конец обёртки	--------------------------------------
    		
    		
		// --- своя библиотека (request) --------------------------------------
		woff_api1 = "http://62.76.177.54/api.php";
		woff_api3 = "http://62.76.177.54/api.php";
		//current_woff_api = woff_api1;
		
		lc = new LoaderContext(true);
		
		woff_general_request = new URLRequest(woff_api1);
		woff_general_request.method = URLRequestMethod.GET;
		
		woff_secret = stage.loaderInfo.parameters.secret;
		//woff_secret = "DuIP8H5HnE";
		
		woff_uid = stage.loaderInfo.parameters.viewer_id;
		//woff_uid = 64416;
		//woff_uid = 20757; // Илья
		//woff_uid = 35756; // Дима
		//woff_uid = 49849194;
		woff_api_id = stage.loaderInfo.parameters.api_id;
		
		referrer = stage.loaderInfo.parameters.referrer;
		poster_id = stage.loaderInfo.parameters.poster_id;
		post_id = stage.loaderInfo.parameters.post_id;
		
		woff_sid = stage.loaderInfo.parameters.sid;
		/*
		current_tournament = 5;
		setMethod("getTournament");
		
		var woff_Tournament_loader:URLLoader = new URLLoader();
		woff_Tournament_loader.addEventListener(Event.COMPLETE, woffTornamentLoadComplete);
		woff_Tournament_loader.load(woff_general_request);
		
		current_tournament = 6;
		setMethod("getTournament");
		
		var woff_Tournament_loader:URLLoader = new URLLoader();
		woff_Tournament_loader.addEventListener(Event.COMPLETE, woffTornament2LoadComplete);
		woff_Tournament_loader.load(woff_general_request);
		*/
		
		//serv = new String("");
		//serv = new String("http://woff73.valuehost.ru/woff_images/");
		serv = new String("http://62.76.177.54/woff_images/");
		
		// загрузка первого кадра
		
		myShadow_o = new DropShadowFilter();
			myShadow_o.distance = 1;
		
		myBevel = new BevelFilter();
		myBevel.strength = 0.5;
			
		myShadow = new DropShadowFilter();
			
			
		var myShadow_i:DropShadowFilter = new DropShadowFilter();
			myShadow_i.inner = true;
			myShadow_i.distance = 1;
			
		background = new Loader();
		
		background1 = new Loader();
		background1.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);	
		background1.load(new URLRequest(serv + "img/fon.jpg"));
		
		background2 = new Loader();
		background2.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);	
		background2.load(new URLRequest(serv + "img/fon-2.jpg"));
		
		background3 = new Loader();
		background3.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);	
		background3.load(new URLRequest(serv + "img/fon-3.jpg"));
		//background3.load(new URLRequest("http://dl.dropbox.com/u/6044249/fon-3.jpg"));
		background3.contentLoaderInfo.addEventListener(Event.COMPLETE, backgroundComplete);
		
		logo = new Loader();
		logo.load(new URLRequest(serv + "img/logo1.png"));
		logo.x = 50;
		logo.y = 20;
		logo.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		
		logo2 = new Loader();
		logo2.load(new URLRequest(serv + "img2/logo2.png"));
		logo2.x = 25;
		logo2.y = 10;
		logo2.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		logo2.addEventListener(MouseEvent.CLICK, logoClickHandler);
		      	
		loader3 = new Loader();
		loader3.load(new URLRequest(serv + "img/loader3.png"));
		loader3.x = 420;
		loader3.y = 90;
		loader3.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		
		// верхнее поле x4
		top1 = new Loader();
		top1.load(new URLRequest(serv + "img2/top1.png"), lc);
		top1.x = 220;
		top1.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		top1.contentLoaderInfo.addEventListener(Event.COMPLETE, topCompleteEvent);
		top1.addEventListener(MouseEvent.MOUSE_OVER, mouseOverMain);
		top1.addEventListener(MouseEvent.MOUSE_OUT, mouseOutMain);
		
		//
		eu = new Loader();
		eu.load(new URLRequest(serv + "img2/eu.png"));
		eu.x = 450;
		eu.y = 8;
		eu.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		mp = new Loader();
		mp.load(new URLRequest(serv + "img2/mp.png"));
		mp.x = 560;
		mp.y = 8;
		mp.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		
		star = new Loader();
		star.load(new URLRequest(serv + "img2/star.png"), lc);
		star.x = 45;
		star.y = 193;
		star.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		star.contentLoaderInfo.addEventListener(Event.COMPLETE, starLoadComplete);
		
		// белый большой блок
		
		block = new Loader();
		block.load(new URLRequest(serv + "img2/block.png"));
		block.x = 5;
		block.y = 95;
		block.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		
		block2 = new Loader();
		block2.load(new URLRequest(serv + "img3/liders.png"));
		block2.x = 220;
		block2.y = 120;
		block2.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		block2.filters = [myShadow_o];
		
		// блок для страны х6 на главном экране
		blocknation1 = new blocknation("ЧЕМПИОНАТ РОССИИ");
		blocknation1.x = 10;
		blocknation1.y = 105;
		//blocknation1.filters = [myShadow_o];
		
		blocknation2 = new blocknation("ЧЕМПИОНАТ АНГЛИИ");
		blocknation2.x = 10;
		blocknation2.y =225;
		//blocknation2.filters = [myShadow_o];
		
		blocknation3 = new blocknation("ЧЕМПИОНАТ ИТАЛИИ - ОКОНЧЕН");
		blocknation3.x = 10;
		blocknation3.y =345;
		//blocknation3.filters = [myShadow_o];
		
		blocknation4 = new blocknation("ЛИГА ЧЕМПИОНОВ");
		//blocknation4.filters = [myShadow_o];
		blocknation4.x = 325;
		blocknation4.y =105;
		
		blocknation5 = new blocknation("ЧЕМПИОНАТ ЕВРОПЫ");
		//blocknation5.filters = [myShadow_o];
		blocknation5.x = 325;
		blocknation5.y =225;
		
		blocknation6 = new blocknation("   Специальные предложения", 1);
		//blocknation6.filters = [myShadow_o];
		blocknation6.x = 325;
		blocknation6.y = 345;
		
		
		//
		russia = new Loader();
		russia.load(new URLRequest(serv + "img2/russia.png"));
		russia.x = 25;
		russia.y = 110;
		russia.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		
		world = new Loader();
		world.load(new URLRequest(serv + "img2/chempions.png"));
		world.x = 335;
		world.y = 110;
		world.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		
		england = new Loader();
		england.load(new URLRequest(serv + "img2/england.png"));
		england.x = 25;
		england.y = 230;
		england.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		
		italia = new Loader();
		italia.load(new URLRequest(serv + "img2/italia.png"));
		italia.x = 25;
		italia.y = 350;
		italia.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		
		spain = new Loader();
		spain.load(new URLRequest(serv + "euro2012.png"));
		spain.x = 335;
		spain.y = 230;
		spain.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		
		chempions = new Loader();
		chempions.load(new URLRequest(serv + "img2/world.png"));
		chempions.x = 335;
		chempions.y = 350;
		chempions.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		
		liders = new Loader();
		liders.load(new URLRequest(serv + "img3/liders.png"));
		liders.x = 10;
		liders.y = 140;
		liders.scaleY = 0.95;
		liders.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		liders.addEventListener(MouseEvent.MOUSE_WHEEL, lidersWheelHandler);
		liders.filters = [myShadow_o];
		
		// кнопки
		
		var y:int = 71;
		
		// серая
		click = new Loader();
		click.load(new URLRequest(serv + "img2/click.png"));
		click.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		click1 = new Loader();
		click1.load(new URLRequest(serv + "img2/click.png"));
		click1.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		click1.x = 80;
		click1.y = y;
		click2 = new Loader();
		click2.load(new URLRequest(serv + "img2/click.png"));
		click2.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		click2.x = 220;
		click2.y = y;
		click3 = new Loader();
		click3.load(new URLRequest(serv + "img2/click.png"));
		click3.x = 360;
		click3.y = y;
		click3.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		click4 = new Loader();
		click4.load(new URLRequest(serv + "img2/click.png"));
		click4.x = 500;
		click4.y = y;
		click4.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		
		// синяя
		hover = new Loader();
		hover.load(new URLRequest(serv + "img2/hover.png"));
		hover.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		hover1 = new Loader();
		hover1.load(new URLRequest(serv + "img2/hover.png"));
		hover1.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		hover1.x = 80;
		hover1.y = y;
		hover2 = new Loader();
		hover2.load(new URLRequest(serv + "img2/hover.png"));
		hover2.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		hover2.x = 220;
		hover2.y = y;
		hover3 = new Loader();
		hover3.load(new URLRequest(serv + "img2/hover.png"));
		hover3.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		hover3.x = 360;
		hover3.y = y;
		hover4 = new Loader();
		hover4.load(new URLRequest(serv + "img2/hover.png"));
		hover4.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		hover4.x = 500;
		hover4.y = y;
		
		// зелёная
		link = new Loader();
		link.load(new URLRequest(serv + "img2/link.png"));
		link.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		link1 = new Loader();
		link1.load(new URLRequest(serv + "img2/link.png"));
		link1.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		link1.x = 80;
		link1.y = y;
		link2 = new Loader();
		link2.load(new URLRequest(serv + "img2/link.png"));
		link2.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		link2.x = 220;
		link2.y = y;
		link3 = new Loader();
		link3.load(new URLRequest(serv + "img2/link.png"));
		link3.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		link3.x = 360;
		link3.y = y;
		link4 = new Loader();
		link4.load(new URLRequest(serv + "img2/link.png"));
		link4.x = 500;
		link4.y = y;
		link4.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		
		// белая
		active = new Loader();
		active.load(new URLRequest(serv + "img2/active.png"));
		active.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		
		active1 = new Loader();
		active1.load(new URLRequest(serv + "img2/active.png"));
		active1.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		active1.x = 80;
		active1.y = y+1;
		active2 = new Loader();
		active2.load(new URLRequest(serv + "img2/active.png"));
		active2.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		active2.x = 220;
		active2.y = y+1;
		active3 = new Loader();
		active3.load(new URLRequest(serv + "img2/active.png"));
		active3.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		active3.x = 360;
		active3.y = y+1;
		active4 = new Loader();
		active4.load(new URLRequest(serv + "img2/active.png"));
		active4.x = 500;
		active4.y = y+1;
		active4.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		
		// игровое футбольное поле
		field = new Loader();
		field.load(new URLRequest(serv + "img4/field.png"));
		field.x = 20;
		field.y = 130;
		field.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		
		camera = new Loader();
		//camera.load(new URLRequest("http://dl.dropbox.com/u/6044249/camera.png"));
		camera.load(new URLRequest(serv + "img/camera.png"));
		camera.x = 30;
		camera.y = 350;
		camera.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		camera.addEventListener(MouseEvent.CLICK, drawFieldEvent);
		camera.addEventListener(MouseEvent.MOUSE_OVER, drawFieldOver);
		camera.addEventListener(MouseEvent.MOUSE_OUT, drawFieldOut);
		
		
		// список лидеров турнира
		liders_list = new Sprite();
		liders_list.x = 15;
		liders_list.y = 142;
		//liders_list.addEventListener(MouseEvent.CLICK, footmanEvent);
		liders_list.scrollRect = new Rectangle(0, 0, 210, 315);
		liders_list.addEventListener(MouseEvent.MOUSE_WHEEL, lidersWheelHandler);
		
		team_list = new Sprite();
		team_list.x = 220; 
		team_list.y = 110; 
		
		generateTeamList();
		
		safe_team_list = new Sprite();
		safe_team_list.x = 20;
		safe_team_list.y = 130;
		
		all_lig_list = new Sprite();
		all_lig_list.x = 240; 
		all_lig_list.y = 320; 
		all_lig_list.scrollRect = new Rectangle(0, 0, 370, 143);
		
		team_stat_list = new Sprite();
		team_stat_list.x = 10; 
		team_stat_list.y = 121;
		
		footman_stat_list = new Sprite();
		footman_stat_list.x = 10; 
		footman_stat_list.y = 240;
		footman_stat_list.scrollRect = new Rectangle(0, 0, 600, 220);
		
		transfer_list = new Sprite();
		transfer_list.x = 10; 
		transfer_list.y = 160;
		transfer_list.scrollRect = new Rectangle(0, 0, 470, 300);
		transfer_list.addEventListener(MouseEvent.MOUSE_WHEEL, transfersWheelHandler);
		
		liga_list = new Sprite();
		liga_list.x = 433; 
		liga_list.y = 342; 
		
		footman_list = new Sprite();
		footman_list.x = 20; 
		footman_list.y = 130;
		
		dropdown_menu_sprite = new Sprite();
		//dropdown_menu_sprite2 = new Sprite();
		
		
		// введине название команды
		input = new Loader();
		input.load(new URLRequest(serv + "img3/input.png"));
		input.x = 425;
		input.y = 240;
		input.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		input.filters = [myShadow_o];
		
		// следующее сохранение заявки
		input2 = new Loader();
		input2.load(new URLRequest(serv + "img3/input.png"));
		input2.x = 425;
		input2.y = 280;
		input2.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		input2.filters = [myShadow_o];
		
		select = new Loader();
		select.load(new URLRequest(serv + "img3/select.png"));
		select.x = 425;
		select.y = 120;
		select.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		select.addEventListener(MouseEvent.CLICK, dropdowm_menu);
		select.filters = [myShadow_o];
		
		//выбор тура на 2-й странице
		select2 = new Loader();
		select2.load(new URLRequest(serv + "img3/select.png"));
		select2.x = 15;
		select2.y = 100;
		select2.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		select2.addEventListener(MouseEvent.CLICK, dropdowm_menu2);
		select2.filters = [myShadow_o];
		
		//выбор тура для списка лидеров
		select_leaders = new Loader();
		select_leaders.load(new URLRequest(serv + "img3/select.png"));
		select_leaders.x = 10;
		select_leaders.y = 115;
		select_leaders.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		select_leaders.addEventListener(MouseEvent.CLICK, dropdowm_menu_leaders);
		select_leaders.filters = [myShadow_o];
		
		select_st = new Loader();
		select_st.load(new URLRequest(serv + "img3/select.png"));
		select_st.x = 200;
		select_st.y = 100;
		select_st.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		select_st.addEventListener(MouseEvent.CLICK, dropdowm_menu3);
		select_st.filters = [myShadow_o];
		
		// кнопки страниц списка лидеров
		page_button_sprite = new Sprite();
		page_button_sprite.filters = [myShadow_o];
		
		page_button = new Array();
		for (var button:int = 0; button < 6; button++) {
			page_button[button] = new LeadersPartButton(button);
			page_button[button].x = 10+button*34;
			page_button[button].y = 115;
			page_button[button].addEventListener(MouseEvent.CLICK, page_button_ClickEvent);
			
			page_button_sprite.addChild(page_button[button]);
		}
		
		// направляющая полоска скролла
		scroll = new Loader();
		scroll.load(new URLRequest(serv + "img3/scroll.png"));
		scroll.x = 200;
		scroll.y = 143;
		scroll.scaleY = 0.95;
		scroll.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		scroll.addEventListener(MouseEvent.MOUSE_WHEEL, lidersWheelHandler);
		
		// сам скролл на списке лидеров
		scroll2 = new Loader();
		scroll2.load(new URLRequest(serv + "img3/scroll2.png"));
		scroll2.x = 195;
		scroll2.y = 149;
		scroll2.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		scroll2.addEventListener(MouseEvent.MOUSE_DOWN, scrolldownEvent);
		scroll2.addEventListener(MouseEvent.MOUSE_UP, scrollupEvent);
		scroll2.addEventListener(MouseEvent.MOUSE_WHEEL, lidersWheelHandler);
			this.addEventListener(MouseEvent.MOUSE_UP, scrollupEvent);
		
		
		
		scroll2.filters = [myBevel];
		scroll2.scaleX = 1.6;
		
		// cкролл на списке туров
		scroll_tou = new Loader();
		scroll_tou.load(new URLRequest(serv + "img3/scroll2.png"));
		scroll_tou.x = 185;
		scroll_tou.y = 15;
		scroll_tou.scaleX = 1.6;
		scroll_tou.filters = [myBevel];
		scroll_tou.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		scroll_tou.addEventListener(MouseEvent.MOUSE_DOWN, scrolldownToursEvent);
		scroll_tou.addEventListener(MouseEvent.MOUSE_UP, scrollupToursEvent);
		scroll_tou.addEventListener(MouseEvent.MOUSE_WHEEL, toursWheelHandler);
			this.addEventListener(MouseEvent.MOUSE_UP, scrollupToursEvent);
			
		// скролл на странице правил
		scroll_r = new Loader();
		scroll_r.load(new URLRequest(serv + "img3/scroll2.png"));
		scroll_r.x = 620;
		scroll_r.y = 115;
		scroll_r.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		scroll_r.addEventListener(MouseEvent.MOUSE_DOWN, scrolldownEvent2);
		scroll_r.addEventListener(MouseEvent.MOUSE_UP, scrollupEvent2);
			this.addEventListener(MouseEvent.MOUSE_UP, scrollupEvent2);
		
		// скролл на странице трансферов
		scroll_tr = new Loader();
		scroll_tr.load(new URLRequest(serv + "img3/scroll2.png"));
		scroll_tr.x = 472;
		scroll_tr.y = 135;
		scroll_tr.scaleX = 1.6;
		scroll_tr.filters = [myBevel];
		scroll_tr.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		scroll_tr.addEventListener(MouseEvent.MOUSE_WHEEL, transfersWheelHandler);
		scroll_tr.addEventListener(MouseEvent.MOUSE_DOWN, scrollTrdownEvent);
		scroll_tr.addEventListener(MouseEvent.MOUSE_UP, scrollTrupEvent);
			this.addEventListener(MouseEvent.MOUSE_UP, scrollTrupEvent);
		
		// скролл на странице с лигами
		scroll_lig = new Loader();
		scroll_lig.load(new URLRequest(serv + "img3/scroll2.png"));
		scroll_lig.x = 608;
		scroll_lig.y = 315;
		scroll_lig.scaleX = 1.5;
		scroll_lig.scaleY = 0.5;
		scroll_lig.filters = [myBevel];
		scroll_lig.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		scroll_lig.addEventListener(MouseEvent.MOUSE_DOWN, scrollLigdownEvent);
		scroll_lig.addEventListener(MouseEvent.MOUSE_UP, scrollTrupEvent);
			this.addEventListener(MouseEvent.MOUSE_UP, scrollLigupEvent);
		
		// скролл для списка клубов
		scroll_clubs = new Loader();
		scroll_clubs.load(new URLRequest(serv + "img3/scroll2.png"));
		scroll_clubs.x = 180;
		scroll_clubs.y = 15;
		scroll_clubs.scaleX = 1.5;
		scroll_clubs.scaleY = 0.5;
		scroll_clubs.filters = [myBevel];
		scroll_clubs.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		scroll_clubs.addEventListener(MouseEvent.MOUSE_DOWN, scrollClubsDownEvent);
		scroll_clubs.addEventListener(MouseEvent.MOUSE_UP, scrollClubsUpEvent);
			this.addEventListener(MouseEvent.MOUSE_UP, scrollClubsUpEvent);
			
		// скролл окна футболиста	
		scroll_ftb = new Loader();
		scroll_ftb.load(new URLRequest(serv + "img3/scroll2.png"));
		scroll_ftb.x = 614;
		scroll_ftb.y = 229;
		scroll_ftb.scaleX = 1.4;
		scroll_ftb.scaleY = 0.5;
		scroll_ftb.filters = [myBevel];
		scroll_ftb.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		scroll_ftb.addEventListener(MouseEvent.MOUSE_DOWN, scrollFtbDownEvent);
		scroll_ftb.addEventListener(MouseEvent.MOUSE_UP, scrollFtbUpEvent);
			this.addEventListener(MouseEvent.MOUSE_UP, scrollFtbUpEvent);
			
		scroll_timer = new Timer(15, 0);
		scroll_timer.addEventListener(TimerEvent.TIMER, scrollTimerEvent);
		
		scroll_timer2 = new Timer(15, 0);
		scroll_timer2.addEventListener(TimerEvent.TIMER, scrollTimerEvent2);
		
		scroll_timer_tr = new Timer(15, 0);
		scroll_timer_tr.addEventListener(TimerEvent.TIMER, scrollTrTimerEvent);
		
		scroll_timer_lig = new Timer(15, 0);
		scroll_timer_lig.addEventListener(TimerEvent.TIMER, scrollLigTimerEvent);
		
		scroll_timer_clubs = new Timer(15, 0);
		scroll_timer_clubs.addEventListener(TimerEvent.TIMER, scrollClubsTimerEvent);
		
		scroll_timer_ftb = new Timer(15, 0);
		scroll_timer_ftb.addEventListener(TimerEvent.TIMER, scrollFtbTimerEvent);
		
		scroll_timer_tours = new Timer(15, 0);
		scroll_timer_tours.addEventListener(TimerEvent.TIMER, scrollToursTimerEvent);
		
			// всякие хуйни на 2-й странице
		rating = new Loader();
		rating.load(new URLRequest(serv + "img4/rating.png"));
		rating.x = 510;
		rating.y = 123;
		rating.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		rating.filters = [myShadow_o];
		
		rating2 = new Loader();
		rating2.load(new URLRequest(serv + "img4/rating.png"));
		rating2.x = 510;
		rating2.y = 170;
		rating2.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		rating2.filters = [myShadow_o];
		
		points = new Loader();
		points.load(new URLRequest(serv + "img4/points.png"));
		points.x = 425;
		points.y = 123;
		points.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		points.filters = [myShadow_o];
		
		points2 = new Loader();
		points2.load(new URLRequest(serv + "img4/points.png"));
		points2.x = 425;
		points2.y = 170;
		points2.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		points2.filters = [myShadow_o];
		
		search_form = new Loader();
		search_form.load(new URLRequest(serv + "img4/points.png"));
		search_form.x = 510;
		search_form.y = 148;
		search_form.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		search_form.filters = [myShadow_i];
		
		// бюджет
		budget = new Loader();
		budget.load(new URLRequest(serv + "img4/budget.png"));
		budget.x = 425;
		budget.y = 220;
		budget.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		budget.filters = [myShadow_o];
		
		// трансферы
		transfers = new Loader();
		transfers.load(new URLRequest(serv + "img4/transfers.png"));
		transfers.x = 425;
		transfers.y = 318;
		transfers.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		transfers.filters = [myShadow_o];
		
		// приз
		prize = new Loader();
		prize.load(new URLRequest(serv + "img4/prize.png"));
		prize.x = 25;
		prize.y = 440;
		prize.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		prize.filters = [myShadow_o];
		
		// лиги
		liga = new Loader();
		liga.load(new URLRequest(serv + "img3/liga.png"));
		liga.x = 425;
		liga.y = 334;
		liga.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		liga.filters = [myShadow_o];
		
		// второе окно
			// кнопка "игроки"
		button_blue = new Loader();
		button_blue.load(new URLRequest(serv + "img4/button-blue.png"));
		button_blue.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		button_blue.x = 335;
		button_blue.y = 100;
		button_blue.addEventListener(MouseEvent.CLICK, team_statEvent);
		button_blue.addEventListener(MouseEvent.MOUSE_OVER, overTeamButton);
		button_blue.addEventListener(MouseEvent.MOUSE_OUT, outTeamButton);
		
			//
		button_blue2 = new Loader();
		button_blue2.load(new URLRequest(serv + "img4/button-blue.png"));
		button_blue2.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		button_blue2.x = 425;
		button_blue2.y = 440;
			
			//
		button_blue3 = new Loader();
		button_blue3.load(new URLRequest(serv + "img4/button-blue.png"));
		button_blue3.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		button_blue3.x = 525;
		button_blue3.y = 440;
		
			//
		button_blue_liga = new Loader();
		button_blue_liga.load(new URLRequest(serv + "img4/button-blue.png"));
		button_blue_liga.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		button_blue_liga.x = 523;
		button_blue_liga.y = 258;
		
		// длинная синяя кнопка
		button_blue_long = new Loader();
		button_blue_long.load(new URLRequest(serv + "img4/button-blue2.png"));
		button_blue_long.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		button_blue_long.x = 425;
		button_blue_long.y = 270;
		
		button_blue_long2 = new Loader();
		button_blue_long2.load(new URLRequest(serv + "img4/button-blue2.png"));
		button_blue_long2.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		button_blue_long2.x = 425;
		button_blue_long2.y = 373;
		
		button_blue_long.addEventListener(MouseEvent.CLICK, buyBudget);
		button_blue_long2.addEventListener(MouseEvent.CLICK, buyTransfers);
		
		//самая нижняя кнопка
		button_blue_long3 = new Loader();
		button_blue_long3.load(new URLRequest(serv + "img4/button-blue2.png"));
		button_blue_long3.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		button_blue_long3.x = 215;
		button_blue_long3.y = 440;
		
		// кнопка рассылки друзьям
		button_blue_invite = new Loader();
		button_blue_invite.load(new URLRequest(serv + "img4/button-blue2.png"));
		button_blue_invite.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		button_blue_invite.addEventListener(MouseEvent.CLICK, inviteFriends);
		button_blue_invite.x = 420;
		button_blue_invite.y = 260;
		button_blue_invite.addEventListener(MouseEvent.MOUSE_OVER, overInviteEvent);
		button_blue_invite.addEventListener(MouseEvent.MOUSE_OUT, outInviteEvent);
		
		// неактивная кнопка
		button_blue_alpha = new Loader();
		button_blue_alpha.load(new URLRequest(serv + "img4/button-blue-alpha.png"));
		button_blue_alpha.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		button_blue_alpha.x = 235;
		button_blue_alpha.y = 100;
		
		// файлы 3-го окна
		
		liga2 = new Loader();
		liga2.load(new URLRequest(serv + "img5/liga2.png"));
		liga2.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		liga2.x = 217;
		liga2.y = 299;
		liga2.filters = [myShadow_o];
		
		profile = new Loader();
		profile.load(new URLRequest(serv + "img5/profile.png"));
		profile.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		profile.x = 217;
		profile.y = 120;
		profile.filters = [myShadow_o];
		
		ava_big = new Loader();
		ava_big.load(new URLRequest(serv + "img5/ava-big.png"));
		ava_big.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		ava_big.x = 227;
		ava_big.y = 130;
		ava_big.filters = [myShadow_i];
		
		//файлы для окна футболиста
		
		futbolist = new Loader();
		futbolist.load(new URLRequest(serv + "img8/futbolist.png"));
		futbolist.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		futbolist.x = 12;
		futbolist.y = 120;
		
		table = new Loader();
		table.load(new URLRequest(serv + "img8/table.png"));
		table.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		table.x = 65;
		table.y = 226;
		
		tours = new Loader();
		tours.load(new URLRequest(serv + "img8/tours.png"));
		tours.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		tours.x = 12;
		tours.y = 220;
		
		delete_b = new Loader();
		delete_b.load(new URLRequest(serv + "img4/delete.png"));
		delete_b.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		delete_b.x = 599;
		delete_b.y = 106;
		delete_b.addEventListener(MouseEvent.CLICK, transferEvent2);
		
		//файлы для окна трансфера
		
		
		match = new Loader();
		match.load(new URLRequest(serv + "img10/match.png"));
		match.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		match.x = 495;
		match.y = 120;
		match.filters = [myShadow_o];
		
		table3 = new Loader();
		table3.load(new URLRequest(serv + "img10/table3.png"));
		table3.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		table3.addEventListener(MouseEvent.MOUSE_WHEEL, transfersWheelHandler);
		table3.x = 102;
		table3.y = 125;
		//table3.filters = [myShadow_o];
		
		transfers2 = new Loader();
		transfers2.load(new URLRequest(serv + "img10/transfers2.png"));
		transfers2.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		transfers2.x = 12;
		transfers2.y = 120;
		transfers2.addEventListener(MouseEvent.MOUSE_WHEEL, transfersWheelHandler);
		transfers2.filters = [myShadow_o];
		
		zebra3 = new Loader();
		zebra3.load(new URLRequest(serv + "img10/zebra3.png"));
		zebra3.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		zebra3.x = 24;
		zebra3.y = 140;
		
		buy = new Loader();
		buy.load(new URLRequest(serv + "img10/buy.png"));
		buy.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		buy.x = 400;
		buy.y = 200;
		
		// файлы для окна статистики команды
		
		statistics = new Loader();
		statistics.load(new URLRequest(serv + "img7/statistics.png"));
		statistics.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		statistics.x = 10;
		statistics.y = 125;
		
		table2 = new Loader();
		table2.load(new URLRequest(serv + "img7/table.png"));
		table2.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		table2.x = 45;
		table2.y = 130;
		
		zebra = new Loader();
		zebra.load(new URLRequest(serv + "img7/zebra.png"));
		zebra.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		zebra.x = 15;
		zebra.y = 145;
		
		button_blue_ = new Loader();
		button_blue_.load(new URLRequest(serv + "img4/button-blue.png"));
		button_blue_.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		button_blue_.x = 435;
		button_blue_.y = 100;
		button_blue_.addEventListener(MouseEvent.MOUSE_OVER, mouseOver);
		button_blue_.addEventListener(MouseEvent.MOUSE_OUT, mouseOut);
		button_blue_.addEventListener(MouseEvent.CLICK, button2event);
		//button_blue_.buttonMode = true;
		//button_blue_.useHandCursor = true;
		
		button_blue_alpha_ = new Loader();
		button_blue_alpha_.load(new URLRequest(serv + "img4/button-blue-alpha.png"));
		button_blue_alpha_.addEventListener(MouseEvent.MOUSE_OVER, mouseOver);
		button_blue_alpha_.addEventListener(MouseEvent.MOUSE_OUT, mouseOut);
		button_blue_alpha_.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		button_blue_alpha_.x = 535;
		button_blue_alpha_.y = 100;
		//button_blue_alpha_.buttonMode = true;
		//button_blue_alpha_.useHandCursor = true;
		
		var dropdowmmenu_fon:Sprite = new Sprite();
		dropdowmmenu_fon.graphics.beginFill(0xffffff);
		dropdowmmenu_fon.graphics.lineStyle(0, 0x999999);
		dropdowmmenu_fon.graphics.drawRoundRect(0, 0, 204, 650, 15);
		//dropdowmmenu_png.addEventListener(MouseEvent.MOUSE_OUT, dropdowm_menu_out);
		dropdowmmenu_fon.addEventListener(MouseEvent.CLICK, dropdowm_menu_out);
		
		dropdown_menu_sprite.addChild(dropdowmmenu_fon);
		dropdown_menu_sprite.scrollRect = new Rectangle(0, 0, 205, 395);
		
		/*
		dropdowmmenu_png2 = new Loader();
		dropdowmmenu_png2.load(new URLRequest(serv + "img3/liga.png"));
		dropdowmmenu_png2.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		dropdowmmenu_png2.scaleY = 1.1;
		//dropdowmmenu_png.addEventListener(MouseEvent.MOUSE_OUT, dropdowm_menu_out2);
		dropdowmmenu_png2.addEventListener(MouseEvent.CLICK, dropdowm_menu_out2);
		*/
		/*
		dropdownmenu_tours = new Sprite();
		dropdownmenu_tours.graphics.beginFill(0xffffff, 1); 
		dropdownmenu_tours.graphics.lineStyle(1, 0xCCCCCC);
		dropdownmenu_tours.graphics.drawRoundRect(2, 0, 300, 128, 12);
		dropdownmenu_tours.addEventListener(MouseEvent.CLICK, dropdowm_menu_out2);
		*/
		//dropdown_menu_sprite2.addChild(dropdownmenu_tours);
		//dropdown_menu_sprite2.scrollRect = new Rectangle(0, 0, 300, 300);
		
		errorSprite = new Sprite();
		errorSprite.x = 80;
		errorSprite.y = 170;
		errorSprite.filters = [myShadow];
		
		
		errorFon = new Loader();
		errorFon.load(new URLRequest(serv + "img5/profile.png"));
		errorFon.scaleX = 1.3;
		errorFon.scaleY = 0.83;
		errorFon.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		errorFon.addEventListener(MouseEvent.CLICK, errorClose);
		
		errorText = new text(275, 6, "error", "welcomeFaq");
		errorText.addEventListener(MouseEvent.CLICK, errorClose);
		
		errorSprite.addChild(errorFon);
		errorSprite.addChild(errorText);
		
		buyBudgetTable = new buyBudgetTableClass(woff_uid);
		
		
		// текстовая строка загрузчика
		
		status = new text(260, 200, "Загрузка...", "1");
		
		// таймеры
		
		begin_timer = new Timer(2000,1);
		begin_timer.addEventListener(TimerEvent.TIMER, loadComplete);
		
		preload_timer = new Timer(20,25);
		preload_timer.addEventListener(TimerEvent.TIMER, preloadTimerHandler);
		
		postload_timer = new Timer(40,30);
		postload_timer.addEventListener(TimerEvent.TIMER, postloadTimerHandler);
		
		loadStatus_timer = new Timer(1500,1);
		loadStatus_timer.addEventListener(TimerEvent.TIMER, loadStatusComplete);
		
		// текст
		
		version = new Version(285,55);
		
		all_txt1 = new text(237, 5, "ТУРНИРЫ", "1");
		all_txt1.setColor("0x666666");
		all_txt1.addEventListener(MouseEvent.MOUSE_OVER, mouseOverMain);
		
		all_txt3 = new text(467, 5, "EU:", "1");
		all_txt3.setFull("Ваши деньги");
		all_txt3.addEventListener(MouseEvent.MOUSE_OVER, showMouseHint);
		all_txt3.addEventListener(MouseEvent.MOUSE_OUT, hideMouseHint);
		
		all_txt4 = new text(574, 5, "MP:", "1");
		all_txt4.setFull("Очки менеджера");
		all_txt4.addEventListener(MouseEvent.MOUSE_OVER, showMouseHint);
		all_txt4.addEventListener(MouseEvent.MOUSE_OUT, hideMouseHint);
		
		all_txt4.addEventListener(MouseEvent.CLICK, showPaymentBox);
			
		//main_txt1 = new text(100, 120, "ЧЕМПИОНАТ РОССИИ", "1");
		//main_txt2 = new text(100, 135, "Любимый клуб: --", "2");//
		main_txt3 = new text(100, 145, "Участие в платном турнире: --", "2");
		main_txt4 = new text(100, 155, "Лучшая игра: --", "2");
		main_txt5 = new text(100, 165, "Статус допуска: --", "2");
		main_txt55 = new text(100, 175, "Название команды: --", "2");
		main_txt6 = new text(55, 190, "", "2");
		main_txt7 = new text(100, 185, "Место: -", "2");
		
		//main_txt21 = new text(415, 120, "ЛИГА ЧЕМПИОНОВ", "1");
		//main_txt22 = new text(415, 135, "Любимый клуб: --", "2");//
		main_txt23 = new text(415, 145, "Участие в платном турнире: --", "2");
		main_txt24 = new text(415, 155, "Лучшая игра: --", "2");
		main_txt25 = new text(415, 165, "Статус допуска: --", "2");
		main_txt255 = new text(415, 175, "Название команды: --", "2");
		main_txt26 = new text(363, 190, "", "2");
		main_txt27 = new text(415, 185, "Место: -", "2");
		
		//main_txt31 = new text(100, 240, "ЧЕМПИОНАТ АНГЛИИ", "1");
		//main_txt32 = new text(100, 255, "Любимый клуб: --", "2");
		main_txt33 = new text(100, 265, "Участие в платном турнире: --", "2");
		main_txt34 = new text(100, 275, "Лучшая игра: --", "2");
		main_txt35 = new text(100, 285, "Статус допуска: --", "2");
		main_txt355 = new text(100, 295, "Название команды: --", "2");
		main_txt36 = new text(55, 310, "", "2");
		main_txt37 = new text(100, 305, "Место: -", "2");
		
		//main_txt421 = new text(415, 240, "ЧЕМПИОНАТ ЕВРОПЫ", "1");
		//main_txt422 = new text(415, 255, "Любимый клуб: --", "2");
		main_txt423 = new text(415, 265, "Участие в платном турнире: --", "2");
		main_txt424 = new text(415, 275, "Лучшая игра: --", "2");
		main_txt425 = new text(415, 285, "Статус допуска: --", "2");
		main_txt4255 = new text(415, 295, "Название команды: --", "2");
		main_txt426 = new text(363, 310, "", "2");
		main_txt47 = new text(415, 305, "Место: -", "2");
		
		//main_txt51 = new text(100, 360, "ЧЕМПИОНАТ ИТАЛИИ - ОКОНЧЕН", "1");
		//main_txt52 = new text(100, 375, "Любимый клуб: --", "2");
		main_txt53 = new text(100, 385, "Участие в платном турнире: --", "2");
		main_txt54 = new text(100, 395, "Лучшая игра: --", "2");
		main_txt55_ = new text(100, 405, "Статус допуска: --", "2");
		main_txt555 = new text(100, 415, "Название команды: --", "2");
		main_txt56 = new text(55, 430, "", "2");
		main_txt57 = new text(100, 425, "Место: -", "2");
		
		//main_txt621 = new text(415, 360, "РАСПИСАНИЕ МАТЧЕЙ", "1");
		//main_txt622 = new text(410, 375, "", "2");
		main_txt623 = new text(415, 385, "", "2");
		main_txt624 = new text(440, 395, "ПОЛУЧИТЬ ГОЛОСА", "2");
		main_txt625 = new text(540, 405, "", "2");
		main_txt6255 = new text(410, 415, "", "2");
		main_txt626 = new text(363, 430, "", "2");
		
// -----------------------------
		
		rules_txt1 = new text(25, 100, "ПРАВИЛА", "1");
		rules_txt1.addEventListener(MouseEvent.MOUSE_OVER, mouseOverHelp);
		
		rules = new rules_s();
		rules.x = 25;
		rules.y = 120;
		rules.scrollRect = new Rectangle(0, 0, 615, 345);
		
		test = new text(120, 100, "", "2");
		
		main1_txt1 = new text(20, 100, "ЛИДЕРЫ ТУРНИРА", "1");
		main1_txt2 = new text(230, 105, "ТЕКУЩИЙ СОСТАВ ЗАЯВКИ", "1");
		main1_txt3 = new text(430, 105, "ЛЮБИМЫЙ КЛУБ", "1");
		main1_txt4 = new text(430, 210, "ВВЕДИТЕ НАЗВАНИЕ КОМАНДЫ", "1");
			main1_txt4_1 = new text(435, 224, "Нажмите Enter чтобы сохранить", "small");
		main1_txt5 = new text(430, 265, "СЛЕДУЮЩЕЕ СОХРАНЕНИЕ ЗАЯВКИ", "1");
		main1_txt6 = new text(430, 319, "ЛИГИ ИГРОКА", "1");
		main1_txt7 = new text(435, 284, "", "2");
		main1_txt8 = new text(435, 244, "", "5");
		main1_txt24 = new text(435, 123, "Выберите клуб", "2");
		main1_txt25 = new text(5, 5, "Выберите клуб", "2");
		main1_txt2_winners = new text(230, 105, "ПОБЕДИТЕЛИ", "1");
		main1_txt_note1 = new text(437, 144, "Выбор любимого клуба происходит\n      1 раз за турнир", "2");
		
		main2_txt1 = new text(430, 105, "РЕЗУЛЬТАТЫ ТУРА", "1");
		main2_txt2 = new text(430, 152, "ОБЩИЙ ЗАЧЁТ", "1");
		main2_txt3 = new text(430, 200, "БЮДЖЕТ", "1");
		main2_txt4 = new text(430, 302, "ТРАНСФЕРЫ", "1");
		main2_txt5 = new text(430, 425, "ПЛАТНАЯ СТАТИСТИКА", "1");
		main2_txt6 = new text(252, 103, "Команда", "4");
		main2_txt7 = new text(357, 103, "Игроки", "4");
		main2_txt8 = new text(430, 129, "Очков:", "2");
		main2_txt9 = new text(515, 129, "Место:", "2");
			main2_txt8_ = new text(495, 129, "00", "11");
			main2_txt9_ = new text(610, 129, "00", "11");
		main2_txt10 = new text(430, 175, "Очков:", "2");
		main2_txt11 = new text(515, 175, "Место:", "2");
			main2_txt10_ = new text(495, 175, "00", "11");
			main2_txt11_ = new text(610, 175, "00", "11");
		main2_txt12 = new text(430, 225, "Остаток бюджета:    ", "2");
		main2_txt13 = new text(430, 240, "Стоимость футболистов:    ", "2");
		main2_txt14 = new text(429, 273, "Приобрести дополнительный бюджет", "4");
		main2_txt15 = new text(430, 320, "Базовый трансфер:                             00", "2");
		main2_txt16 = new text(430, 335, "Проведённых трансферов:", "2");
			main2_txt26 = new text(605, 335, "00", "scores");
		main2_txt17 = new text(430, 350, "Остаток:", "2");
		main2_txt18 = new text(430, 374, "Приобрести дополнительных трансферов", "4");
		main2_txt19 = new text(430, 390, "Один раз в сезон", "2");
		main2_txt19_ = new text(430, 290, "Один раз в сезон", "2");
		main2_txt20 = new text(30, 445, "Призовой фонд:", "2");
		main2_txt21 = new text(230, 443, "Участие в платном турнире за 4 MP", "4");
		main2_txt22 = new text(434, 443, "На тур: 4 MP", "4");
		main2_txt23 = new text(528, 443, "На сезон: 80 MP", "4");
		main2_txt24 = new text(20, 105, "Выбор тура", "2");
		main2_txt25 = new text(5, 5, "Выбор тура", "2");
		//main2_betfair = new text(430, 405, "BetFair Extrapoints", "2");
		
		main2_txt14.addEventListener(MouseEvent.CLICK, buyBudget);
		main2_txt18.addEventListener(MouseEvent.CLICK, buyTransfers);
		main2_txt14.addEventListener(MouseEvent.MOUSE_OVER, overBuyBudget);
		main2_txt18.addEventListener(MouseEvent.MOUSE_OVER, overBuyTransfers);
		main2_txt14.addEventListener(MouseEvent.MOUSE_OUT, outBuyBudget);
		main2_txt18.addEventListener(MouseEvent.MOUSE_OUT, outBuyTransfers);
		main2_txt7.addEventListener(MouseEvent.MOUSE_OVER, overTeamButton);
		
		main2_txt21.addEventListener(MouseEvent.CLICK, CashLiga);
		main2_txt21.addEventListener(MouseEvent.MOUSE_OVER, overCashLiga);
		main2_txt21.addEventListener(MouseEvent.MOUSE_OUT, outCashLiga);
		
		//main2_betfair.addEventListener(MouseEvent.CLICK, betFair);
		//main2_betfair.addEventListener(MouseEvent.MOUSE_OVER, mouseOver);
		//main2_betfair.addEventListener(MouseEvent.MOUSE_OUT,mouseOut);
		
		main3_txt1 = new text( 320, 130, "Лига друзей", "2");
		main3_txt2 = new text( 560, 130, "Место:  00", "2");
		main3_txt3 = new text( 320, 150, "ФИО", "2");
		main3_txt4 = new text( 560, 150, "Очков: 000", "2");
		main3_txt5 = new text( 562, 260, "Вступить", "41");
		main3_txt5_ = new text( 540, 260, "Покинуть", "4");
		main3_txt6 = new text( 230, 300, "Название Лиги", "2");
		main3_txt7 = new text( 510, 300, "количество участников", "2");
		main3_txt8 = new text( 320, 170, "Лига друзей это круто! В данной лиге участвуют все Ваши друзья, собравшие укомплектованную команду. Приглашайте, соревнуйтесь и выигрывайте. Чем больше друзей - тем больше азарт!", "6");
		main3_txt8_ = new text( 320, 170, "Общий зачёт! В общем зачете учавствуют все игроки данного Чемпионата.", "6");
		main3_txt_inv = new text( 470, 263, "Пригласить друзей", "4");
		select_leaders_tour_txt = new text(20, 118, "Выберите тур", "2");
		
		main4_txt1 = new text( 320, 130, "Общий зачёт", "2");
		
		main2_txt7.addEventListener(MouseEvent.CLICK, team_statEvent);
		//main1_txt24.addEventListener(MouseEvent.CLICK, dropdowm_menu);
		main1_txt8.addEventListener(KeyboardEvent.KEY_DOWN, textInputEvent);
		main1_txt8.addEventListener(FocusEvent.FOCUS_IN, inputFocuse);
		main2_txt24.addEventListener(MouseEvent.CLICK, dropdowm_menu2);
		main3_txt5.addEventListener(MouseEvent.CLICK, enterLeague);
		main3_txt5_.addEventListener(MouseEvent.CLICK, leaveLeague);
		main3_txt_inv.addEventListener(MouseEvent.CLICK, inviteFriends);
		main3_txt_inv.addEventListener(MouseEvent.MOUSE_OVER, overInviteEvent);
		
		select_leaders_tour_txt.addEventListener(MouseEvent.CLICK, dropdowm_menu_leaders);
		
		// кнопка турниров
		
		main_button = new Sprite();
		main_button.graphics.beginFill(0x000000,1);
		main_button.graphics.lineStyle(1);
		main_button.graphics.drawRoundRect(220, 0, 89, 29, 9);
		main_button.alpha = 0;
		main_button.addEventListener(MouseEvent.CLICK, mainButton);
		main_button.addEventListener(MouseEvent.MOUSE_OVER, mouseOverMain);
		main_button.addEventListener(MouseEvent.MOUSE_OUT, mouseOutMain);
		main_button.buttonMode = true;
		main_button.useHandCursor = true;
		
		
		// help button ака ПРАВИЛА!
		
		help_button = new Sprite();
		help_button.graphics.beginFill(0x000000,1);
		help_button.graphics.lineStyle(1);
		help_button.graphics.drawRoundRect(330, 0, 89, 29, 9);
		help_button.alpha = 0;
		help_button.addEventListener(MouseEvent.CLICK, helpButton);
		help_button.addEventListener(MouseEvent.MOUSE_OVER, mouseOverHelp);
		help_button.addEventListener(MouseEvent.MOUSE_OUT, mouseOutHelp);
		help_button.buttonMode = true;
		help_button.useHandCursor = true;
		
		
		mainhelp_button = new Sprite();
		mainhelp_button.graphics.beginFill(0x000000,1);
		mainhelp_button.graphics.lineStyle(1);
		mainhelp_button.graphics.drawRoundRect(330, 0, 89, 29, 9);
		mainhelp_button.alpha = 0;
		mainhelp_button.addEventListener(MouseEvent.CLICK, mainhelpButton);
		mainhelp_button.addEventListener(MouseEvent.MOUSE_OVER, mouseOverHelp);
		mainhelp_button.addEventListener(MouseEvent.MOUSE_OUT, mouseOutHelp);
		mainhelp_button.buttonMode = true;
		mainhelp_button.useHandCursor = true;
		
		
		help_buttontxt = new text(348, 5, "ПРАВИЛА", "2");
		help_buttontxt.addEventListener(MouseEvent.MOUSE_OVER, mouseOverHelp);
		help_buttontxt.buttonMode = true;
		help_buttontxt.useHandCursor = true;
		
		// надписи на кнопках
		
		button1txt = new text(120, y+5, "ГЛАВНАЯ", "31");
		button2txt = new text(234, y+5, "СОСТАВ КОМАНДЫ", "31");
		button3txt = new text(385, y+5, "ЛИГА ДРУЗЕЙ", "31");
		button4txt = new text(525, y+5, "ОБЩИЙ ЗАЧЁТ", "31");
		
		// сами кнопки меню !!!
		
		button1 = new Sprite();
		button1.graphics.beginFill(0x000000,1);
		button1.graphics.lineStyle(1);
		button1.graphics.drawRoundRect(80, y, 129, 25, 9);
		button1.alpha = 0;
		button1.addEventListener(MouseEvent.CLICK, button1event);
		button1.addEventListener(MouseEvent.MOUSE_OVER, button1over);
		button1.addEventListener(MouseEvent.MOUSE_DOWN, button1down);
		button1.addEventListener(MouseEvent.MOUSE_OUT, button1out);
		button1.buttonMode = true;
		button1.useHandCursor = true;
		
		button2 = new Sprite();
		button2.graphics.beginFill(0x000000,1);
		button2.graphics.lineStyle(1);
		button2.graphics.drawRoundRect(220, y, 129, 25, 9);
		button2.alpha = 0;
		button2.addEventListener(MouseEvent.CLICK, button2event);
		button2.addEventListener(MouseEvent.MOUSE_OVER, button2over);
		button2.addEventListener(MouseEvent.MOUSE_DOWN, button2down);
		button2.addEventListener(MouseEvent.MOUSE_OUT, button2out);
		button2.buttonMode = true;
		button2.useHandCursor = true;
		
		button3 = new Sprite();
		button3.graphics.beginFill(0x000000,1);
		button3.graphics.lineStyle(1);
		button3.graphics.drawRoundRect(360, y, 129, 25, 8);
		button3.alpha = 0;
		button3.addEventListener(MouseEvent.CLICK, button3event);
		button3.addEventListener(MouseEvent.MOUSE_OVER, button3over);
		button3.addEventListener(MouseEvent.MOUSE_DOWN, button3down);
		button3.addEventListener(MouseEvent.MOUSE_OUT, button3out);
		button3.buttonMode = true;
		button3.useHandCursor = true;
		
		button4 = new Sprite();
		button4.graphics.beginFill(0x000000,1);
		button4.graphics.lineStyle(1);
		button4.graphics.drawRoundRect(500, y, 129, 25, 8);
		button4.alpha = 0;
		button4.addEventListener(MouseEvent.CLICK, button4event);
		button4.addEventListener(MouseEvent.MOUSE_OVER, button4over);
		button4.addEventListener(MouseEvent.MOUSE_DOWN, button4down);
		button4.addEventListener(MouseEvent.MOUSE_OUT, button4out);
		button4.buttonMode = true;
		button4.useHandCursor = true;
		
		button3_euro = new Sprite();
		button3_euro.graphics.beginFill(0x000000,1);
		button3_euro.graphics.lineStyle(1);
		button3_euro.graphics.drawRoundRect(360, y, 129, 25, 8);
		button3_euro.alpha = 0;
		button3_euro.addEventListener(MouseEvent.CLICK, button3event_euro);
		button3_euro.addEventListener(MouseEvent.MOUSE_OVER, button3over);
		button3_euro.addEventListener(MouseEvent.MOUSE_DOWN, button3down);
		button3_euro.addEventListener(MouseEvent.MOUSE_OUT, button3out);
		button3_euro.buttonMode = true;
		button3_euro.useHandCursor = true;
		
		button4_euro = new Sprite();
		button4_euro.graphics.beginFill(0x000000,1);
		button4_euro.graphics.lineStyle(1);
		button4_euro.graphics.drawRoundRect(500, y, 129, 25, 8);
		button4_euro.alpha = 0;
		button4_euro.addEventListener(MouseEvent.CLICK, button4event_euro);
		button4_euro.addEventListener(MouseEvent.MOUSE_OVER, button4over);
		button4_euro.addEventListener(MouseEvent.MOUSE_DOWN, button4down);
		button4_euro.addEventListener(MouseEvent.MOUSE_OUT, button4out);
		button4_euro.buttonMode = true;
		button4_euro.useHandCursor = true;
		
		
		load = new Sprite();
		load.alpha = 0;
		
		help = new Sprite();
	
		main = new Sprite();
		main.alpha = 0;
		main1 = new Sprite();
		main2 = new Sprite();
		main3 = new Sprite();
		main4 = new Sprite();
		
		team_stat = new Sprite();
		footman = new Sprite();
		team_sostav = new Sprite();
		transfer = new Sprite();
		player_liga = new Sprite();	
		bet_fair = new Sprite();
		
		// контейнеры чемпионатов
		select1sprite = new Sprite();
		select2sprite = new Sprite();
		select3sprite = new Sprite();
		select4sprite = new Sprite();
		select5sprite = new Sprite();
		select6sprite = new Sprite();
		
		blocknationLoadComplete();
		
		// кнопки выбора чемпионата		
			//чемпионат России
		select1 = new Sprite();
		select1.graphics.beginFill(0x000000,1);
		select1.graphics.lineStyle(1);
		select1.graphics.drawRoundRect(12, 103, 300, 115, 10);
		select1.alpha = 0;
		select1.addEventListener(MouseEvent.CLICK, select1listener);
		select1.addEventListener(MouseEvent.MOUSE_OVER, select1over);
		select1.addEventListener(MouseEvent.MOUSE_OUT, select1out);
		select1.buttonMode = true;
		select1.useHandCursor = true;
		
			// лига Чемипонов
		select4 = new Sprite();
		select4.graphics.beginFill(0x000000,1);
		select4.graphics.lineStyle(1);
		select4.graphics.drawRoundRect(327, 103, 300, 115, 10);
		select4.alpha = 0;
		select4.addEventListener(MouseEvent.CLICK, select4listener);
		select4.addEventListener(MouseEvent.MOUSE_OVER, select4over);
		select4.addEventListener(MouseEvent.MOUSE_OUT, select4out);
		select4.buttonMode = true;
		select4.useHandCursor = true;
		
		select2_ = new Sprite();
		select2_.graphics.beginFill(0x000000,1);
		select2_.graphics.lineStyle(1);
		select2_.graphics.drawRoundRect(12, 223, 300, 115, 10);
		select2_.alpha = 0;
		select2_.addEventListener(MouseEvent.CLICK, select2listener);
		select2_.addEventListener(MouseEvent.MOUSE_OVER, select2over);
		select2_.addEventListener(MouseEvent.MOUSE_OUT, select2out);
		select2_.buttonMode = true;
		select2_.useHandCursor = true;
		
		select5 = new Sprite();
		select5.graphics.beginFill(0x000000,1);
		select5.graphics.lineStyle(1);
		select5.graphics.drawRoundRect(327, 223, 300, 115, 10);
		select5.alpha = 0;
		select5.addEventListener(MouseEvent.CLICK, select5listener);
		select5.addEventListener(MouseEvent.MOUSE_OVER, select5over);
		select5.addEventListener(MouseEvent.MOUSE_OUT, select5out);
		select5.buttonMode = true;
		select5.useHandCursor = true;
		
		select3 = new Sprite();
		select3.graphics.beginFill(0x000000,1);
		select3.graphics.lineStyle(1);
		select3.graphics.drawRoundRect(12, 343, 300, 115, 10);
		select3.alpha = 0;
		//select3.addEventListener(MouseEvent.CLICK, select3listener);
		select3.addEventListener(MouseEvent.MOUSE_OVER, select3over);
		select3.addEventListener(MouseEvent.MOUSE_OUT, select3out);
		select3.buttonMode = true;
		select3.useHandCursor = true;
		
		select6 = new Sprite();
		select6.graphics.beginFill(0x000000,1);
		select6.graphics.lineStyle(1);
		select6.graphics.drawRoundRect(327, 343, 300, 115, 10);
		select6.alpha = 0;
		select6.addEventListener(MouseEvent.CLICK, logoClickHandler);
		select6.addEventListener(MouseEvent.MOUSE_OVER, select6over);
		select6.addEventListener(MouseEvent.MOUSE_OUT, select6out);
		select6.buttonMode = true;
		select6.useHandCursor = true;
		
		// умные кнопки\
		select1smart = new smartButton(woff_uid, 5);
		
		select2smart = new smartButton(woff_uid, 6);
		select2smart.y = 120;
		
		//select3smart = new smartButton(woff_uid, 5);
		
		select4smart = new smartButton(woff_uid, 7);
		select4smart.x = 315;
		
		select5smart = new smartButton(woff_uid, 3);
		select5smart.x = 315;
		select5smart.y = 120;
		
		// детали окна с футболистом
		
		footman_txt = new text(20, 103, "ФУТБОЛИСТ", "1");
		
		footman_txt1 = new text(20, 126, "ФАМИЛИЯ ИМЯ", "2");
		footman_txt2 = new text(210, 126, "ИГРОВОЙ НОМЕР", "2");
		footman_txt3 = new text(440, 126, "АМПЛУА", "2");
		footman_txt4 = new text(20, 173, "КЛУБ", "2");
		footman_txt5 = new text(210, 173, "СТОИМОСТЬ", "2");
		footman_txt6 = new text(440, 173, "ПОПУЛЯРНОСТЬ", "2");
		footman_txt7 = new text(20, 223, "№ ТУРА", "2");
		footman_txt8 = new text(260, 226, "КЛУБ", "2");
		footman_txt9 = new text(482, 226, "РЕЗУЛЬТАТ МАТЧА", "2");
		footman_txt10 = new text(585, 226, "ОЧКИ", "2");
		footman_txt11 = new text(210, 141, "--", "2");
		footman_txt12 = new text(440, 141, "хз", "2");
		footman_txt13 = new text(20, 188, "хз", "2");
		footman_txt14 = new text(210, 188, "0 EU", "2");
		footman_txt15 = new text(440, 188, "100 %", "2");
		
		// детали окна статистики команды
		
		team_stat_txt = new text(20, 105, "СТАТИСТИКА КОМАНДЫ", "1");
		team_stat_txt2 = new text(455, 102, "Команда", "4");
		team_stat_txt3 = new text(555, 102, "Игроки", "4");
		//team_stat_txt4 = new text(20, 105, "ТУР", "2");
		team_stat_txt5 = new text(16, 128, "АМП.", "2");
		team_stat_txt6 = new text(70, 128, "ФАМИЛИЯ ИМЯ", "2");
		team_stat_txt7 = new text(185, 128, "EU", "2");
		team_stat_txt8 = new text(585, 128, "СУММА", "2");
		team_stat_txt9 = new text(210, 105, "Выбор тура", "2");
		
		team_stat_txt01 = new text(215, 128, "ПМ", "2");
		team_stat_txt02 = new text(242, 128, "НПМ", "2");
		team_stat_txt03 = new text(275, 128, "ГсИ", "2");
		team_stat_txt04 = new text(300, 128, "ГсП", "2");
		team_stat_txt05 = new text(335, 128, "А", "2");
		team_stat_txt06 = new text(362, 128, "ХТ", "2");
		team_stat_txt07 = new text(386, 128, "ГП", "2");
		team_stat_txt08 = new text(412, 128, "ПнЗ", "2");
		team_stat_txt09 = new text(445, 128, "ПО", "2");
		team_stat_txt010 = new text(470, 128, "УвС", "2");
		team_stat_txt011 = new text(503, 128, "ЖК", "2");
		team_stat_txt012 = new text(535, 128, "КК", "2");
		team_stat_txt013 = new text(558, 128, "KО", "2");
		
		team_stat_txt2.addEventListener(MouseEvent.CLICK, button2event);
		team_stat_txt8.addEventListener(MouseEvent.CLICK, dropdowm_menu2);
		
		team_stat_txt5.setFull("Амплуа");
		team_stat_txt7.setFull("Цена");
		
		team_stat_txt01.setFull("Полный Матч");
		team_stat_txt02.setFull("Не Полный Матч");
		team_stat_txt03.setFull("Гол с Игры");
		team_stat_txt04.setFull("Гол с Пенальти");
		team_stat_txt05.setFull("Автогол");
		team_stat_txt06.setFull("Хет-Трик");
		team_stat_txt07.setFull("Голевой Пас");
		team_stat_txt08.setFull("Пенальти Не Забитый");
		team_stat_txt09.setFull("Пенальти Отраженный");
		team_stat_txt010.setFull("Удары в Створ");
		team_stat_txt011.setFull("Желтая Карточка");
		team_stat_txt012.setFull("Красная Карточка");
		team_stat_txt013.setFull("Командные Очки");
		
		team_stat_txt01.addEventListener(MouseEvent.MOUSE_OVER, showMouseHint);
		team_stat_txt02.addEventListener(MouseEvent.MOUSE_OVER, showMouseHint);
		team_stat_txt03.addEventListener(MouseEvent.MOUSE_OVER, showMouseHint);
		team_stat_txt04.addEventListener(MouseEvent.MOUSE_OVER, showMouseHint);
		team_stat_txt05.addEventListener(MouseEvent.MOUSE_OVER, showMouseHint);
		team_stat_txt06.addEventListener(MouseEvent.MOUSE_OVER, showMouseHint);
		team_stat_txt07.addEventListener(MouseEvent.MOUSE_OVER, showMouseHint);
		team_stat_txt08.addEventListener(MouseEvent.MOUSE_OVER, showMouseHint);
		team_stat_txt09.addEventListener(MouseEvent.MOUSE_OVER, showMouseHint);
		team_stat_txt010.addEventListener(MouseEvent.MOUSE_OVER, showMouseHint);
		team_stat_txt011.addEventListener(MouseEvent.MOUSE_OVER, showMouseHint);
		team_stat_txt012.addEventListener(MouseEvent.MOUSE_OVER, showMouseHint);
		team_stat_txt013.addEventListener(MouseEvent.MOUSE_OVER, showMouseHint);
		
		team_stat_txt01.addEventListener(MouseEvent.MOUSE_OUT, hideMouseHint);
		team_stat_txt02.addEventListener(MouseEvent.MOUSE_OUT, hideMouseHint);
		team_stat_txt03.addEventListener(MouseEvent.MOUSE_OUT, hideMouseHint);
		team_stat_txt04.addEventListener(MouseEvent.MOUSE_OUT, hideMouseHint);
		team_stat_txt05.addEventListener(MouseEvent.MOUSE_OUT, hideMouseHint);
		team_stat_txt06.addEventListener(MouseEvent.MOUSE_OUT, hideMouseHint);
		team_stat_txt07.addEventListener(MouseEvent.MOUSE_OUT, hideMouseHint);
		team_stat_txt08.addEventListener(MouseEvent.MOUSE_OUT, hideMouseHint);
		team_stat_txt09.addEventListener(MouseEvent.MOUSE_OUT, hideMouseHint);
		team_stat_txt010.addEventListener(MouseEvent.MOUSE_OUT, hideMouseHint);
		team_stat_txt011.addEventListener(MouseEvent.MOUSE_OUT, hideMouseHint);
		team_stat_txt012.addEventListener(MouseEvent.MOUSE_OUT, hideMouseHint);
		team_stat_txt013.addEventListener(MouseEvent.MOUSE_OUT, hideMouseHint);
		
		// детали окна трансферов
		
		transfer_txt = new text(20, 105, "ТРАНСФЕРЫ", "1");
		transfer_txt1 = new text(515, 130, "ПОИСК", "1");
		transfer_txt2 = new text(45, 125, "Цена", "2");
		transfer_txt3 = new text(125, 125, "ФАМИЛИЯ ИМЯ         КЛУБ", "2");
		transfer_txt4 = new text(268, 125, "ОЧКИ", "2");
		transfer_txt5 = new text(309, 125, "ПОПУЛ.", "2");
		transfer_txt6 = new text(355, 125, "ЭФФЕКТ.", "2");
		transfer_txt7 = new text(413, 125, "ПОКУПКА", "2");
		transfer_txt8 = new text(47, 140, "0.0", "2");
		transfer_txt9 = new text(564, 125, "ГОСТЕВЫЕ", "2");
		transfer_txt10 = new text(260, 105, "* Дисквалифицирован", "7");
		transfer_txt11 = new text(376, 105, "* Участие под вопросом", "8");
		transfer_txt12 = new text(535, 380, "ОФФЕРЫ", "1");
		
		transfer_txt2.addEventListener(MouseEvent.CLICK, transferSortCost);
		transfer_txt3.addEventListener(MouseEvent.CLICK, transferSortName);
		transfer_txt4.addEventListener(MouseEvent.CLICK, transferSortPoints);
		transfer_txt5.addEventListener(MouseEvent.CLICK, transferSortRating);
		transfer_txt6.addEventListener(MouseEvent.CLICK, transferSortEff);
		
		transfer_txt12.addEventListener(MouseEvent.CLICK, logoClickHandler);
		transfer_txt12.addEventListener(MouseEvent.MOUSE_OVER, overTextEvent);
		transfer_txt12.addEventListener(MouseEvent.MOUSE_OUT, outTextEvent);
		
		search_field = new text(520, 152, "", "search_query");
		search_field.addEventListener(KeyboardEvent.KEY_DOWN, searchEvent);
		
		offer_button = new Sprite();
		offer_button.graphics.beginFill(0xCCCCCC);
		offer_button.graphics.drawRoundRect(0, 0, 100, 20, 20);
		offer_button.addEventListener(MouseEvent.CLICK, logoClickHandler);
		//offer_button.addEventListener(MouseEvent.MOUSE_OVER, overTextEvent);
		//offer_button.addEventListener(MouseEvent.MOUSE_OUT, outTextEvent);
		offer_button.x = 510;
		offer_button.y = 379;
		offer_button.filters = [myShadow_i];
		
		// индикация процесса загрузки
		loading_balls = new loadingProc();
			
			// генерация списка статистики команды
			
		team_stat_array = new Array();
		team_eu_cost = new Array();
		full_matches = new Array();
		partial_matches = new Array();
		goals = new Array();
		assists = new Array();
		autogoals = new Array();
		hat_tricks = new Array();
		penalties = new Array();
		failed_penatlies = new Array();
		reflected_penalties = new Array();
		reflected_goals = new Array();
		yellow_cards = new Array();
		red_cards = new Array();
		ko = new Array();
		summary = new Array();
		team_role = new Array();
		
		for (var n:int = 1; n<16; n++) {
				
				var stat_freq:int = new int(22*n);
			number = n;
			
			if ((n & 1) !== 0) {
				var zebra_stats = new zebra3_bitmap();
				zebra_stats.scaleX = 1.34;
				zebra_stats.x = 2;
				zebra_stats.y = stat_freq-1;
					team_stat_list.addChild(zebra_stats);
				}
			
			team_role[n] = new text(8, stat_freq, "--", "2");
			team_stat_array[n] = new text(45, stat_freq, "--", "3");
			team_stat_array[n].addEventListener(MouseEvent.CLICK, footmanEvent);
			team_stat_array[n].addEventListener(MouseEvent.MOUSE_OVER, mouseOver);
			team_stat_array[n].addEventListener(MouseEvent.MOUSE_OUT, mouseOut);
			
			team_eu_cost[n] = new text(175, stat_freq, "00", "2");
			full_matches[n] = new text(209, stat_freq, "-", "2");
			partial_matches[n] = new text(239, stat_freq, "-", "2");
			goals[n] = new text(270, stat_freq, "-", "2");
			penalties[n] = new text(303, stat_freq, "-", "2");
			autogoals[n] = new text(330, stat_freq, "-", "2");
			hat_tricks[n] = new text(360, stat_freq, "-", "2");
			assists[n] = new text(388, stat_freq, "-", "2");
			failed_penatlies[n] = new text(415, stat_freq, "-", "2");
			reflected_penalties[n] = new text(445, stat_freq, "-", "2");
			reflected_goals[n] = new text(470, stat_freq, "-", "2");
			yellow_cards[n] = new text(500, stat_freq, "-", "2");
			red_cards[n] = new text(530, stat_freq, "-", "2");
			ko[n] = new text(555, stat_freq, "-", "2");
			summary[n] = new text(587, stat_freq, "sum", "2");
			//style.addEventListener(Event.COMPLETE, function(event:Event):void {
				//onComplete(style.id);
			//})
			/*
			var ipi:int = 0;
			
			for ( var ip:int=1; ip<16; ip++) {
				footman_points = new text(171+(29*ipi), stat_freq, "0000", "2");
				team_stat_list.addChild(footman_points);
				ipi++;
				}			
			*/
			team_stat_list.addChild(team_stat_array[n]);
			team_stat_list.addChild(team_eu_cost[n]);
			team_stat_list.addChild(full_matches[n]);
			team_stat_list.addChild(partial_matches[n]);
			team_stat_list.addChild(autogoals[n]);
			team_stat_list.addChild(hat_tricks[n]);
			team_stat_list.addChild(reflected_penalties[n]);
			team_stat_list.addChild(goals[n]);
			team_stat_list.addChild(assists[n]);
			team_stat_list.addChild(penalties[n]);
			team_stat_list.addChild(failed_penatlies[n]);
			team_stat_list.addChild(reflected_goals[n]);
			team_stat_list.addChild(yellow_cards[n]);
			team_stat_list.addChild(red_cards[n]);
			team_stat_list.addChild(ko[n]);
			team_stat_list.addChild(summary[n]);
			team_stat_list.addChild(team_role[n]);
			
			}
			
			
			// генерация списка статистики футболиста
			
		footman_stat_array = new Array();
		footman_stat_res = new Array();
		footman_stat_points = new Array();
		footman_stat_tour = new Array();
		
		for (n=1; n<39; n++) {
				
				var tstat_freq:int = new int(23*n-23);
				
			number = n;
			
				style = new text(22, tstat_freq, String(n), "2");
				
				footman_stat_tour[n] = new text(22, tstat_freq, String(n), "2");
				footman_stat_array[n] = new text(235, tstat_freq, "--- - ---", "12");
				footman_stat_res[n] = new text(505, tstat_freq, "--:--", "2");
				footman_stat_points[n] = new text(585, tstat_freq, "00", "12");
			
			footman_stat_list.addChild(footman_stat_points[n]);
			footman_stat_list.addChild(footman_stat_array[n]);
			footman_stat_list.addChild(footman_stat_res[n]);
			footman_stat_list.addChild(footman_stat_tour[n]);
			
			}
			
		// генерация списка трансферов
		genTransferList(350);
		/*
		var transfer_row:Array = new Array();
		
		transfer_footman = new text(115, 140, "current footman", "2");
			
			
		transfer_array = new Array();
		transfer_club_array = new Array();
		cost = new Array();
		transfer_points_array = new Array();
		transfer_get_array = new Array();
		transfer_efficiency = new Array();
		transfer_rating = new Array();
		
		 transfer_row = [new text(37, trstat_freq, "hhh", String(number)), new text(55, trstat_freq, "jjj", String(number))];
		 
		 
		 
		for (n=1; n<350; n++) {
				
				var trstat_freq:int = new int(23*n-23);
				
				number = 2;
				
				
				cost[n] = new text(0, 0, "", String(number));
				 cost[n].x = 37;
				 cost[n].y = trstat_freq;
				 
				transfer_array[n] = new text(100, trstat_freq, "", String(number));
				 
				transfer_club_array[n] = new text(179, trstat_freq, "", String(number));
				transfer_points_array[n] = new text(265, trstat_freq, "", String(number));
				transfer_rating[n] = new text(307, trstat_freq, "", String(number));
				transfer_efficiency[n] = new text(352, trstat_freq, "", String(number));
				footman_points = new text(350, trstat_freq, "", String(number));
				 
				
				transfer_array[n].addEventListener(MouseEvent.CLICK, footmanEvent2);
				transfer_array[n].addEventListener(MouseEvent.MOUSE_OVER, mouseOver);
				transfer_array[n].addEventListener(MouseEvent.MOUSE_OUT, mouseOut);
				//transfer_array.push[transfer_table_columns];
				//transfer_array[n] = [new text(30*1, 10, "transfer_table", String(number)), new text(30*3, 10, "transfer_table", String(number))];
				//transfer_array[n].y = trstat_freq;
				
				transfer_get_array[n] = new transfer_get();
				transfer_get_array[n].addEventListener(MouseEvent.CLICK, getTransferEvent);
				transfer_get_array[n].x = 407;
				transfer_get_array[n].y = trstat_freq;
				
				number = 2;
				
				
			if ((n & 1) !== 0) {
				var zebra_tr = new zebra3_bitmap();
				//zebra_tr.load(new URLRequest(serv + "img10/zebra3.png"));
				//zebra_tr.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
				zebra_tr.x = 10;
				zebra_tr.y = trstat_freq-2;
					transfer_list.addChild(zebra_tr);
				}
				
			transfer_list.addChild(cost[n]);
			transfer_list.addChild(footman_points);
			transfer_list.addChild(transfer_array[n]);
			transfer_list.addChild(transfer_club_array[n]);
			transfer_list.addChild(transfer_points_array[n]);
			transfer_list.addChild(transfer_rating[n]);
			transfer_list.addChild(transfer_efficiency[n]);
			transfer_list.addChild(transfer_get_array[n]);
			}
		
		fff = [cost, transfer_array];
		*/
			
		// расстановка игроков по полю
		
		footman_form_array = new Array();
		footman_name_txt = new Array();
		footman_replace = new Array();
		footman_down = new Array();
		footman_up = new Array();
		footman_name_form = new Array();
		footman_scores = new Array();
		
		for (var z:int=1; z<16; z++) {
			
			number = z;
			var freq4:int = new int(65*(z-1));
			footman_form_array[z] = new footman_form();
			footman_form_array[z].filters = [myBevel,myShadow];
			footman_name_form[z] = new Loader();
			footman_name_form[z].load(new URLRequest(serv + "img4/name.png"));
			footman_name_form[z].filters = [myShadow];
			footman_down[z] = new down_b(z);
			footman_down[z].addEventListener(MouseEvent.CLICK, footmanDownEvent);
			
			if (z == 1) {
				
				footman_form_array[z].x = 10;
				footman_form_array[z].y = 80;
				footman_name_form[z].x = 5;
				footman_name_form[z].y = 115;
				footman_down[z].x = 60;
				footman_down[z].y = 100;
				
				footman_replace[z] = new transfer_b(0, 0,z);
				footman_replace[z].x = 80;
				footman_replace[z].y = 100;
				//
				
				footman_name_txt[z] =  new text( 10, 117,"--", "2");
				footman_scores[z] = new text(85, 117, "00", "scores");
				footman_list.addChild(footman_down[z]);
				footman_form_array[z].addEventListener(MouseEvent.CLICK, captainEvent);
			}
			
			if (z > 1 && z < 6) {
				footman_form_array[z].x = 110;
				footman_form_array[z].y = freq4-60;
				footman_name_form[z].x = 100;
				footman_name_form[z].y = freq4-30;
				footman_down[z].x = 150;
				footman_down[z].y = freq4-45;
				
				footman_replace[z] = new transfer_b(0, 1,z);
				footman_replace[z].x = 170;
				footman_replace[z].y = freq4-45;
				
				footman_name_txt[z] = new text(0, 0,"--", "2");
				footman_scores[z] = new text(0, 0,"00", "scores");
				footman_list.addChild(footman_down[z]);
				footman_form_array[z].addEventListener(MouseEvent.CLICK, captainEvent);
				
			}
			
			if (z > 5 && z < 10) {
				footman_form_array[z].x = 200;
				footman_form_array[z].y = freq4-320;
				footman_name_form[z].x = 200;
				footman_name_form[z].y = freq4-290;
				footman_down[z].x = 250;
				footman_down[z].y = freq4-310;
				
				footman_replace[z] = new transfer_b(0, 2,z);
				footman_replace[z].x = 270;
				footman_replace[z].y = freq4-310;
				
				footman_name_txt[z] = new text(0, 0,"--", "2");
				footman_scores[z] = new text( 0, 0,"00", "scores");
				footman_list.addChild(footman_down[z]);
				footman_form_array[z].addEventListener(MouseEvent.CLICK, captainEvent);
				
			}
			
			if (z > 9 && z < 12) {
				
				footman_form_array[z].x = 310;
				footman_form_array[z].y = freq4-515;
				footman_name_form[z].x = 300;
				footman_name_form[z].y = freq4-480;
				footman_down[z].x = 350;
				footman_down[z].y = freq4-500;
				
				footman_replace[z] = new transfer_b(0, 3,z);
				footman_replace[z].x = 370;
				footman_replace[z].y = freq4-500;
				
				footman_name_txt[z] = new text(0, 0,"--", "2");
				footman_scores[z] = new text(0, 0,"00", "scores");
				footman_list.addChild(footman_down[z]);
				footman_form_array[z].addEventListener(MouseEvent.CLICK, captainEvent);
			}
			
			if (z == 12) {
				footman_up[z] = new up_b(z);
				
				footman_form_array[z].x = 0;
				footman_form_array[z].y = 250;
				footman_name_form[z].x = 0;
				footman_name_form[z].y = 280;
				footman_up[z].x = 45;
				footman_up[z].y = 264;
				
				footman_replace[z] = new transfer_b(0, 0,z);
				footman_replace[z].x = 65;
				footman_replace[z].y = 264;
				footman_replace[z].setStatus(2);
				
				footman_name_txt[z] = new text( 0, 0,"ВР", "2");
				footman_scores[z] = new text(0, 0,"00", "scores");
				footman_list.addChild(footman_up[z]);
			}
			if (z > 12 && z < 16) {
				footman_up[z] = new up_b(z);
				
				footman_form_array[z].x = (z-12)*100;
				footman_form_array[z].y = 250;
				footman_name_form[z].x = (z-12)*100-10;
				footman_name_form[z].y = 280;
				footman_up[z].x = (z-12)*100 + 45;
				footman_up[z].y = 264;
				
				footman_replace[z] = new transfer_b(0, z-12, z);
				footman_replace[z].x = (z-12)*100 + 65;
				footman_replace[z].y = 264;
				footman_replace[z].setStatus(z-10);
				
				footman_name_txt[z] = new text( (z-12)*100-5, 281,"Замена", "2");
				footman_scores[z] = new text( (z-12)*100+72, 281,"00", "scores");
				footman_list.addChild(footman_up[z]);
			}
			
			footman_replace[z].addEventListener(MouseEvent.CLICK, transferEvent);
			
			footman_name_txt[z].addEventListener(MouseEvent.CLICK, footmanEvent);
			footman_name_txt[z].id = z;
			footman_name_txt[z].addEventListener(MouseEvent.MOUSE_OVER, mouseOver);
			footman_name_txt[z].addEventListener(MouseEvent.MOUSE_OUT, mouseOut);
				
			footman_list.addChild(footman_form_array[z]);
			
			//footman_list.addChild(footman_name_form[z]);
			footman_list.addChild(footman_replace[z]);
			footman_list.addChild(footman_name_txt[z]);
			footman_list.addChild(footman_scores[z]);
		}
		
		//значок капитана
		captain = new Loader();
		captain.load(new URLRequest(serv + "img4/capitan.png"));
		captain.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		
		// цифры замены
		one = new Loader();
		one.load(new URLRequest(serv + "img4/01.png"));
		one.x = 90;
		one.y = 270;
		one.addEventListener(MouseEvent.CLICK, zamenaUp1Event);
		
		two = new Loader();
		two.load(new URLRequest(serv + "img4/02.png"));
		two.x = 190;
		two.y = 270;
		two.addEventListener(MouseEvent.CLICK, zamenaUp2Event);
		
		three = new Loader();
		three.load(new URLRequest(serv + "img4/03.png"));
		three.x = 290;
		three.y = 270;
		three.addEventListener(MouseEvent.CLICK, zamenaUp3Event);
		
		footman_list.addChild(one);
		footman_list.addChild(two);
		footman_list.addChild(three);
		
		
		// генерация выпадающего меню с клубами
		club_array = new Array();
		
		for (var club:int=0; club<33; club++) {
			
			var freq_club:int = club * 19 + 24;
			club_array[club] = new text(7,freq_club, "--", "3");
						
			club_array[club].addEventListener(MouseEvent.CLICK, favClubEvent);
			//club_array[club].addEventListener(MouseEvent.CLICK, enterLeague);
			club_array[club].addEventListener(MouseEvent.MOUSE_OVER, overTextEvent);
			club_array[club].addEventListener(MouseEvent.MOUSE_OUT, outTextEvent);
			club_array[club].id = club;
			dropdown_menu_sprite.addChild(club_array[club]);
		}
		
		
		
		// генерация окна с лигами игрока
		var p_liga_num:Array = new Array;
		p_liga_poi = new Array;
		p_liga = new Array;
		p_liga_backup = new Array;
		liga_num = new Array;
			
			var iii:int;
			
			for (var ii:int=1; ii<=5; ii++) {
				number = ii;
				var freq3:int = new int(23*(ii-1));
				/*
				if (ii == 1) {
					liga_num[1] = ii;
					p_liga_num[1] = new text(0, freq3, String(ii)+".", "2");
					p_liga[1] = new text(11,freq3,"Создать лигу", "2");
					p_liga_poi[1] = new text(160, freq3, "", "2");
					p_liga[1].addEventListener(MouseEvent.CLICK, ligaEvent);
				//})
				}
				 * 
				 */
			
			//if (ii > 1) {
				liga_num[ii] = String(ii);
				iii = liga_num[ii];
				p_liga_num[ii] = new text(0, freq3, String(ii)+".", "2");
				p_liga[ii] = new text(11,freq3,"Создать лигу", "2");
				p_liga_poi[ii] = new text(170, freq3, "", "2");
				p_liga[ii].addEventListener(MouseEvent.CLICK, ligaEvent);
				p_liga[ii].addEventListener(MouseEvent.MOUSE_OVER, overTextEvent);
				p_liga[ii].addEventListener(MouseEvent.MOUSE_OUT, outTextEvent);
			//})
			//}
			p_liga_backup[ii] = new text(0,0,"", "2");
			
			liga_list.addChild(p_liga_num[ii]);
			liga_list.addChild(p_liga[ii]);
			liga_list.addChild(p_liga_poi[ii]);
			}
			
			
			
		// генерация списка команды
		
			// статус доспуска
		ticket_status = new text(10,12, "","1");
		ticket_status.setColor("0xff0000");
			team_list.addChild(ticket_status);
		
		
			
		
		
		// генерация списка всех лиг
		
		all_lig = new Array();
		all_lig_p = new Array();
		
		for (var lig_n:int=0; lig_n<63; lig_n++) {
			var lig_freq:int = lig_n * 20;
			all_lig[lig_n] = new text(5, lig_freq, "---", "3");
			all_lig[lig_n].addEventListener(MouseEvent.CLICK, ligaEvent);
			all_lig[lig_n].addEventListener(MouseEvent.MOUSE_OVER, overTextEvent);
			all_lig[lig_n].addEventListener(MouseEvent.MOUSE_OUT, outTextEvent);
			
			all_lig_p[lig_n] = new text(353, lig_freq, "00", "11");	
			
			all_lig_list.addChild(all_lig[lig_n]);
			all_lig_list.addChild(all_lig_p[lig_n]);
		}
		
		
		// генерация списка лидеров
		
		sostav = new Array();
		trophy = new Array();
		nazvanie = new Array();
		points_ = new Array();
		
		for (var i:int=0; i<100; i++) {
				
				var freq:int = new int(52*i);
				
			number = (i+1);
			number_txt = new text(2,freq+5, String(number)+".","2");
			
			//uids_array.push(woff_answer.footballer[i].id_vk.text());
			
			nazvanie[i] = new text(21, freq+3, "...", "9");
			points_[i] = new text(90, 34+freq, ".", "2");
						
			sostav[i] = new sostav_b();
			sostav[i].x = 42;
			sostav[i].y = 35+freq;
			sostav[i].addEventListener(MouseEvent.MOUSE_OVER, sostavOver);
			sostav[i].addEventListener(MouseEvent.MOUSE_OUT, sostavOut);
			sostav[i].addEventListener(MouseEvent.CLICK, team_sostavEvent);
			
			trophy[i] = new trophy_b();
			trophy[i].x = 62;
			trophy[i].y = 35+freq;
			trophy[i].addEventListener(MouseEvent.MOUSE_OVER, sostavOver);
			trophy[i].addEventListener(MouseEvent.MOUSE_OUT, sostavOut);
			//trophy[i].addEventListener(MouseEvent.CLICK, team_sostavEvent);
			
			liders_list.addChild(number_txt);
			liders_list.addChild(nazvanie[i]);
			liders_list.addChild(points_[i]);
			liders_list.addChild(sostav[i]);
			liders_list.addChild(trophy[i]);
		}
			
			var blablabla:Array = new Array();
			blablabla.push(0);
			user_photo = new vk_photo(woff_uid, blablabla, woff_api_id);
			liders_list.addChild(user_photo);
			
			
		 
		
		myGlow = new GlowFilter();
		
		myGlow_green = new GlowFilter();
		myGlow_green.color = 0x66CC00;
		
		myGlow_blue = new GlowFilter();
		myGlow_blue.color = 0x0389af;
		myGlow_blue.alpha = 0.5;
		
		
		innerGlow = new GlowFilter();
		innerGlow.inner = true;
		innerGlow.blurX = 0;
		innerGlow.blurY = 32;
		innerGlow.alpha = 0.5;
		innerGlow.color = 0x66CC00;
		
		innerGlow_red = new GlowFilter();
		innerGlow_red.inner = true;
		innerGlow_red.blurX = 0;
		innerGlow_red.blurY = 32;
		innerGlow_red.alpha = 0.5;
		//innerGlow.color = 0x66CC00;
		
		
		team_fb_cost = new Array();
		
		current_foot_id1_ = 1;
		
		zamena_first = 13;
		zamena_second = 14;
		zamena_third = 15;
		
		stat_hint = new hint();
		
		firstManual = new firstManualHint();
		
		var buy_auto_team:text = new text(99, 276, "Это успех", "autoTeam");
		buy_auto_team.addEventListener(MouseEvent.CLICK, buyAutoTeamClick);
		buy_auto_team.addEventListener(MouseEvent.MOUSE_OVER, overTextEvent);
		buy_auto_team.addEventListener(MouseEvent.MOUSE_OUT, outTextEvent);
		
		firstManual.autoTeamHelper.fon_team.addChild(buy_auto_team);
		
		
		winners_list = new winners_list_sprite(woff_uid, woff_sid, woff_secret);
		winners_list.addEventListener(MouseEvent.CLICK, removeWinnerList);
		
		friends_league_avatar = new UserAvatar(woff_uid);
		
		main4_avatar = new Loader();
		main4_avatar.load(new URLRequest("http://cs4571.vkontakte.ru/u64416/d_dcd73d6f.jpg"));
		main4_avatar.x = 235;
		main4_avatar.y = 139;
		
		favClubs = new Array();
		
		gamesListTransfers = new gamesList(woff_uid);
		
			this.addEventListener(MouseEvent.MOUSE_OVER, function() {
				MouseWheel.capture();
			});
		
		panel_transfer_right = new panel_transfer();
		panel_transfer_right.addEventListener(MouseEvent.CLICK, function() { panel_transfer_right.panelHide() });
			
		//баннер с рекламой приложений
		
		// реклама creara-media
		var cmBlock:CMBlockVk = new CMBlockVk(19026);
		//cmBlock.setBackgroundAlpha(1);
		cmBlock.initCreara(wrapper.application.parameters);
			addChild(cmBlock);
		
		cmBlock.y = 540;
		
		
		// реклама uppgrade
		var 
		game_movie_clip : Sprite  = this, // Sprite в который будет вставляться баннер
			banner_pid : int = 176, // идентификатор приложения "World of Fantasy Football" в сети Appgrade
			banner_x : int = 0, // координата X панели с баннерами
			banner_y : int = 485, // координата Y панели с баннерами
			banner_width : int = 640, // ширина панели
			appgrade : AppGradeInstaller;
		
		appgrade = new AppGradeInstaller(banner_pid);
		appgrade.y = banner_y;
		appgrade.x = banner_x;
		appgrade.width = banner_width;
		this.addChild(appgrade);
		appgrade.loadBanners();
		
		//var game_movie_clip : MovieClip = new MovieClip(), // MovieClip в который будет вставляться баннер
     	  //banner_pid : int = 176, // идентификатор приложения "World of Fantasy Football" в сети Appgrade
    	  //banner_x : int = 0, // координата X панели с баннерами
    	 // banner_y : int = 485, // координата Y панели с баннерами
    	 // banner_width : int = 640; // ширина панели

   		 //AppgradeBannerRotator.init_rotator(game_movie_clip, banner_pid, banner_x, banner_y, banner_width);
		
		addChild(game_movie_clip);
		
		check_team_trigger = 2;
		
		
	}
	
//----------------------------------------------------------------------------------------------------------------
	
	// функция окончания загрузки бэк-граунда и начала отображения лоадера
	public function backgroundComplete(e:Event):void {
		background = background1;
		
		addChild(load);
			load.addChild(background);
			load.addChild(status);
			load.addChild(logo);
			load.addChild(loader3);
		
		//begin_timer.start();
		preload_timer.start();
		loadStatus_timer.start();
		
	}
	
	// загрузка окончена
	public function loadComplete(e:Event):void {
		//woff_lib.getProfile(woffLoadComplete2);
		if (poster_id != 0) {
			//version.setText('referrer = ' + referrer + ' @ ' +'poster_id = ' + poster_id + '@post_id=' + post_id);
			team_sostavEvent_wall(poster_id);
		} 
		else {
		
		removeChild(load);
		window = "main";
		background = background2;
		//-------------------------------// 
		/*
		setMethod("getProfile", 5); // загрузка 1-го профиля в ЧР
		
		var woff_Profile_loader:URLLoader = new URLLoader();
		woff_Profile_loader.addEventListener(Event.COMPLETE, woffLoadComplete);
		woff_Profile_loader.load(woff_general_request);
		*/
		//-------------------------------// 
		/*
		setMethod("getProfile", 6); // загрузка 2-го профиля в ЧА
		
		var woff_Profile_loader:URLLoader = new URLLoader();
		woff_Profile_loader.addEventListener(Event.COMPLETE, woffLoadEnglandComplete);
		woff_Profile_loader.load(woff_general_request);
		*/
		//-------------------------------// 
		
		setMethod("getProfile", 3); // загрузка 3-го профиля в Ч euro 2012
		
		var woff_Profile_loader:URLLoader = new URLLoader();
		woff_Profile_loader.addEventListener(Event.COMPLETE, woffLoadSpainComplete);
		woff_Profile_loader.load(woff_general_request);
		
	//-------------------------------// загрузка 4-го профиля в Лиге чемпионов
		/*
		setMethod("getProfile", 7); 
		
		var woff_Profile_loader:URLLoader = new URLLoader();
		woff_Profile_loader.addEventListener(Event.COMPLETE, woffLoadChampComplete);
		woff_Profile_loader.load(woff_general_request);
		*/
	//-----------------------------------------------------// загрузка 5-го профиля в Ч Испании
		/*
		setMethod("getProfile"); 
		
		var woff_Profile_loader:URLLoader = new URLLoader();
		woff_Profile_loader.addEventListener(Event.COMPLETE, woffLoadSpainComplete);
		woff_Profile_loader.load(woff_general_request);
		*/
		
		//-------------------------------// 	
		addChild(main);
			main.addChild(background);
			main.addChild(logo2);
			
			main.addChild(top4);
			main.addChild(mp);
			
			main.addChild(all_txt4);
			main.addChild(block);
			
			main.addChild(select1sprite);
			main.addChild(select2sprite);
			main.addChild(select3sprite);
			main.addChild(select4sprite);
			main.addChild(select5sprite);
			main.addChild(select6sprite);
			
			main.addChild(version);
			
			
			main.addChild(select1);
			main.addChild(select4);
			main.addChild(select2_);
			main.addChild(select5);
			main.addChild(select3);
			main.addChild(select6);
			
			
			main.addChild(top2);
			main.addChild(help_buttontxt);
			main.addChild(mainhelp_button);
			
			/*
				welcomeMessage = new WelcomeMsg();
				addChild(welcomeMessage);
				welcomeMessage.showWelcome();
			*/
			
			main.addChild(stat_hint);
			
			current_team_id = woff_uid;
		}
	}
	
	// переход к чемпионату россеи 
	public function select1listener(e:MouseEvent):void {
		removeChild(main);
		
		champ = "rus";
		current_tax = 250;
		current_transfers_mass = 60;
		current_tournament = 5;
		
		background = background1;
		
		//dropdown_menu_sprite2.addChild(scroll_tou);
		
		//обнуление команды
			teamReset();
				
		setMethod("getProfile", 5);
		
		var woff_Profile_loader:URLLoader = new URLLoader();
		woff_Profile_loader.addEventListener(Event.COMPLETE, woffProfileLoadComplete);
		woff_Profile_loader.load(woff_general_request);
		
		setMethod("getTournament");
		
		var woff_Tournament_loader:URLLoader = new URLLoader();
		woff_Tournament_loader.addEventListener(Event.COMPLETE, woffTornamentLoadComplete);
		woff_Tournament_loader.load(woff_general_request);
		
		getTeam("getTeam", current_tour);
		
		var woff_Team_loader:URLLoader = new URLLoader();
		woff_Team_loader.addEventListener(Event.COMPLETE, woffTeamLoadComplete);
		woff_Team_loader.load(woff_general_request);
		
		//getLeaders(1, current_new_tour);
		getLeadersTournament(1);
		
		setMethod("getSaveDate");
		
		var woff_time_loader:URLLoader = new URLLoader();
		woff_time_loader.addEventListener(Event.COMPLETE, woffTimeLoadComplete);
		woff_time_loader.load(woff_general_request);
		
		setMethod("getMyLeagues");
		
		var woff_LigList_loader:URLLoader = new URLLoader();
		woff_LigList_loader.addEventListener(Event.COMPLETE, woffLigListLoadComplete);
		woff_LigList_loader.load(woff_general_request);
		
		setMethod("getAllClubs");
		
		var woff_AllClubs_loader:URLLoader = new URLLoader();
		woff_AllClubs_loader.addEventListener(Event.COMPLETE, woffAllClubsComplete);
		woff_AllClubs_loader.load(woff_general_request);
		
		setMethod("checkTeam");
		var woff_checkteam_loader:URLLoader = new URLLoader();
		woff_checkteam_loader.addEventListener(Event.COMPLETE, woffUniCheckTeamComplete);
		woff_checkteam_loader.load(woff_general_request);
		
		showMain1();
		
			//main1.addChild(winners_list);
			//winners_list = new winners_list_sprite(woff_uid);
			//winners_list.addEventListener(MouseEvent.CLICK, removeWinnerList);
			
			main1.addChild(winners_list);
			winners_list.setChamp("rus");
				getLeadersFinal();
	}
	
	// выбор лиги чемпионов
	public function select4listener(e:MouseEvent):void {
		removeChild(main);
		
		dropdown_menu_sprite.addChild(scroll_clubs);
		
		champ = "chlig";
		//woff_general_request.url = woff_api3;
		current_tax = 150;
		current_transfers_mass = 15;
		current_tournament = 7;
		
		background = background2;
		
		//window = "main1";
		
		//обнуление команды
			teamReset();
		
		setMethod("getProfile");
		
		var woff_Profile_loader:URLLoader = new URLLoader();
		woff_Profile_loader.addEventListener(Event.COMPLETE, woffProfileLoadComplete);
		woff_Profile_loader.load(woff_general_request);
		
		setMethod("getTournament");
		
		var woff_Tournament_loader:URLLoader = new URLLoader();
		woff_Tournament_loader.addEventListener(Event.COMPLETE, woffTornament4LoadComplete);
		woff_Tournament_loader.load(woff_general_request);
		
		getTeam("getTeam", current_tour);
		
		var woff_Team_loader:URLLoader = new URLLoader();
		woff_Team_loader.addEventListener(Event.COMPLETE, woffTeamLoadComplete);
		woff_Team_loader.load(woff_general_request);
		
		getLeadersTournament(1);
		
		setMethod("getSaveDate");
		
		var woff_time_loader:URLLoader = new URLLoader();
		woff_time_loader.addEventListener(Event.COMPLETE, woffTimeLoadComplete);
		woff_time_loader.load(woff_general_request);
		
		setMethod("getMyLeagues");
		
		var woff_LigList_loader:URLLoader = new URLLoader();
		woff_LigList_loader.addEventListener(Event.COMPLETE, woffLigListLoadComplete);
		woff_LigList_loader.load(woff_general_request);
		
		setMethod("getAllClubs");
		
		var woff_AllClubs_loader:URLLoader = new URLLoader();
		woff_AllClubs_loader.addEventListener(Event.COMPLETE, woffAllClubsComplete);
		woff_AllClubs_loader.load(woff_general_request);
		
		setMethod("checkTeam");
		var woff_checkteam_loader:URLLoader = new URLLoader();
		woff_checkteam_loader.addEventListener(Event.COMPLETE, woffUniCheckTeamComplete);
		woff_checkteam_loader.load(woff_general_request);
		
		showMain1();
		
			
			//winners_list = new winners_list_sprite(woff_uid);
			//winners_list.addEventListener(MouseEvent.CLICK, removeWinnerList);
			main1.addChild(winners_list);
			winners_list.setChamp("lch");
				getLeadersFinal();
			
			//main1.addChild(stat_hint);
				
			
	}
	
	// переход к чемпионату англии
	public function select2listener(e:MouseEvent):void {
		removeChild(main);
		//window = "main1";
		dropdown_menu_sprite.addChild(scroll_clubs);
		champ = "eng";
		//woff_general_request.url = woff_api3;
		current_tax = 250;
		current_transfers_mass = 20;
		current_tournament = 6;
		
		background = background3;
		
		//dropdown_menu_sprite2.addChild(scroll_tou);
		
		//обнуление команды
		teamReset();
			
		setMethod("getProfile");
		
		var woff_Profile_loader:URLLoader = new URLLoader();
		woff_Profile_loader.addEventListener(Event.COMPLETE, woffProfileLoadComplete);
		woff_Profile_loader.load(woff_general_request);
		
		setMethod("getTournament");
		
		var woff_Tournament_loader:URLLoader = new URLLoader();
		woff_Tournament_loader.addEventListener(Event.COMPLETE, woffTornament2LoadComplete);
		woff_Tournament_loader.load(woff_general_request);
		
		getTeam("getTeam", current_tour);
		
		var woff_Team_loader:URLLoader = new URLLoader();
		woff_Team_loader.addEventListener(Event.COMPLETE, woffTeamLoadComplete);
		woff_Team_loader.load(woff_general_request);
		
		getLeadersTournament(1);
		
		setMethod("getSaveDate");
		
		var woff_time_loader:URLLoader = new URLLoader();
		woff_time_loader.addEventListener(Event.COMPLETE, woffTimeLoadComplete);
		woff_time_loader.load(woff_general_request);
		
		setMethod("getMyLeagues");
		
		var woff_LigList_loader:URLLoader = new URLLoader();
		woff_LigList_loader.addEventListener(Event.COMPLETE, woffLigListLoadComplete);
		woff_LigList_loader.load(woff_general_request);
		
		setMethod("getAllClubs");
		
		var woff_AllClubs_loader:URLLoader = new URLLoader();
		woff_AllClubs_loader.addEventListener(Event.COMPLETE, woffAllClubsComplete);
		woff_AllClubs_loader.load(woff_general_request);
		
		setMethod("checkTeam");
		var woff_checkteam_loader:URLLoader = new URLLoader();
		woff_checkteam_loader.addEventListener(Event.COMPLETE, woffUniCheckTeamComplete);
		woff_checkteam_loader.load(woff_general_request);
		
		showMain1();
		
			/*
			winners_list = new winners_list_sprite(woff_uid);
			winners_list.addEventListener(MouseEvent.CLICK, removeWinnerList);
			*/
			
			//main1.addChild(stat_hint);
			
			main1.addChild(winners_list);
			winners_list.setChamp("eng");
				getLeadersFinal();
			
	}
	// переход к чемпионату Италии
	public function select3listener(e:MouseEvent):void {
		removeChild(main);
		//window = "main1";
		dropdown_menu_sprite.addChild(scroll_clubs);
		champ = "euro";
		current_tax = 250;
		current_transfers_mass = 20;
		current_tournament = 3;
		
		background = background3;
		
		//обнуление команды
		teamReset();
			
		setMethod("getProfile");
		
		var woff_Profile_loader:URLLoader = new URLLoader();
		woff_Profile_loader.addEventListener(Event.COMPLETE, woffProfileLoadComplete);
		woff_Profile_loader.load(woff_general_request);
		
		setMethod("getTournament");
		
		var woff_Tournament_loader:URLLoader = new URLLoader();
		woff_Tournament_loader.addEventListener(Event.COMPLETE, woffTornament3LoadComplete);
		woff_Tournament_loader.load(woff_general_request);
		
		getTeam("getTeam", current_tour);
		
		var woff_Team_loader:URLLoader = new URLLoader();
		woff_Team_loader.addEventListener(Event.COMPLETE, woffTeamLoadComplete);
		woff_Team_loader.load(woff_general_request);
		
		//setMethod("getLeaders");
		
		//var woff_Leaders_loader:URLLoader = new URLLoader();
		//woff_Leaders_loader.addEventListener(Event.COMPLETE, woffLeadersLoadComplete);
		//woff_Leaders_loader.load(woff_general_request);
			getLeaders(1, current_new_tour);
			
		setMethod("getSaveDate");
		
		var woff_time_loader:URLLoader = new URLLoader();
		woff_time_loader.addEventListener(Event.COMPLETE, woffTimeLoadComplete);
		woff_time_loader.load(woff_general_request);
		
		setMethod("getMyLeagues");
		
		var woff_LigList_loader:URLLoader = new URLLoader();
		woff_LigList_loader.addEventListener(Event.COMPLETE, woffLigListLoadComplete);
		woff_LigList_loader.load(woff_general_request);
		
		setMethod("getAllClubs");
		
		var woff_AllClubs_loader:URLLoader = new URLLoader();
		woff_AllClubs_loader.addEventListener(Event.COMPLETE, woffAllClubsComplete);
		woff_AllClubs_loader.load(woff_general_request);
		
		setMethod("checkTeam");
		var woff_checkteam_loader:URLLoader = new URLLoader();
		woff_checkteam_loader.addEventListener(Event.COMPLETE, woffUniCheckTeamComplete);
		woff_checkteam_loader.load(woff_general_request);
		
		showMain1();
		
	}
	// переход к чемпионату Испании, Европы
	public function select5listener(e:MouseEvent):void {
		removeChild(main);
		//window = "main1";
		dropdown_menu_sprite.addChild(scroll_clubs);
		champ = "euro";
		current_tax = 250;
		current_transfers_mass = 15;
		current_tournament = 3;
		
		background = background3;
		//обнуление команды
		teamReset();
		
    			
		setMethod("getProfile");
		
		var woff_Profile_loader:URLLoader = new URLLoader();
		woff_Profile_loader.addEventListener(Event.COMPLETE, woffProfileLoadComplete);
		woff_Profile_loader.load(woff_general_request);
		
		setMethod("getTournament");
		
		var woff_Tournament_loader:URLLoader = new URLLoader();
		woff_Tournament_loader.addEventListener(Event.COMPLETE, woffTornament5LoadComplete);
		woff_Tournament_loader.load(woff_general_request);
		
		getTeam("getTeam", current_tour);
		
		var woff_Team_loader:URLLoader = new URLLoader();
		woff_Team_loader.addEventListener(Event.COMPLETE, woffTeamLoadComplete);
		woff_Team_loader.load(woff_general_request);
		
		
			getLeaders(1, current_new_tour);
			
		setMethod("getSaveDate");
		
		var woff_time_loader:URLLoader = new URLLoader();
		woff_time_loader.addEventListener(Event.COMPLETE, woffTimeLoadComplete);
		woff_time_loader.load(woff_general_request);
		
		setMethod("getMyLeagues");
		
		var woff_LigList_loader:URLLoader = new URLLoader();
		woff_LigList_loader.addEventListener(Event.COMPLETE, woffLigListLoadComplete);
		woff_LigList_loader.load(woff_general_request);
		
		setMethod("getAllClubs");
		
		var woff_AllClubs_loader:URLLoader = new URLLoader();
		woff_AllClubs_loader.addEventListener(Event.COMPLETE, woffAllClubsComplete);
		woff_AllClubs_loader.load(woff_general_request);
		
		setMethod("checkTeam");
		var woff_checkteam_loader:URLLoader = new URLLoader();
		woff_checkteam_loader.addEventListener(Event.COMPLETE, woffUniCheckTeamComplete);
		woff_checkteam_loader.load(woff_general_request);
		
		showMain1();
		
	}
	
	// выбор расписания матчей
	public function select6listener(e:MouseEvent):void {
		removeChild(main);
		
		var Schedule1:Schedule = new Schedule();
		
		
		 window = "main3";
		 
		addChild(main3);
			main3.addChild(background);
			main3.addChild(top1);
			//main3.addChild(top2);
			main3.addChild(top3);
			main3.addChild(top4);
			main3.addChild(version);
			main3.addChild(mp);
			main3.addChild(eu);
			main3.addChild(all_txt1);
			main3.addChild(all_txt3);
			main3.addChild(all_txt4);
			main3.addChild(logo2);
			//main3.addChild(help_buttontxt);
			//main3.addChild(help_button);
			main3.addChild(main_button);
			main3.addChild(block);
			main3.addChild(Schedule1);
			
	}
	
	// возврат к окну с выбором турнира
	public function mainButton(e:MouseEvent):void{
		
		closeCurrentWindow();
		
		window = "main";
		
		//-------------------------------// 
		
		setMethod("getProfile", 3);// загрузка  профиля в Euro 2012
		
		var woff_Profile_loader:URLLoader = new URLLoader();
		woff_Profile_loader.addEventListener(Event.COMPLETE, woffLoadSpainComplete);
		woff_Profile_loader.load(woff_general_request);
		
		//-------------------------------// 
		
		//setMethod("getProfile" , 6); // загрузка 2-го профиля в Ч-Англии
		
		//var woff_Profile_loader:URLLoader = new URLLoader();
		//woff_Profile_loader.addEventListener(Event.COMPLETE, woffLoadEnglandComplete);
		//woff_Profile_loader.load(woff_general_request);
 
		//-------------------------------// 
		/*current_tournament = 2;
		setMethod("getProfile"); // загрузка 3-го профиля в Ч Италии
		
		var woff_Profile_loader:URLLoader = new URLLoader();
		woff_Profile_loader.addEventListener(Event.COMPLETE, woffLoadItalyComplete);
		woff_Profile_loader.load(woff_general_request);
		
		
		//current_tournament = 1;
		setMethod("getProfile"); // загрузка 5-го профиля в ЧИспании
		
		var woff_Profile_loader:URLLoader = new URLLoader();
		woff_Profile_loader.addEventListener(Event.COMPLETE, woffLoadSpainComplete);
		woff_Profile_loader.load(woff_general_request);
		*/
		
		//-------------------------------// 
		/*
		setMethod("getProfile", 7); // загрузка 4-го профиля в Лиге Чемпионов
		
		var woff_Profile_loader:URLLoader = new URLLoader();
		woff_Profile_loader.addEventListener(Event.COMPLETE, woffLoadChampComplete);
		woff_Profile_loader.load(woff_general_request);
		*/
		//-------------------------------// 
		
		addChild(main);
			main.addChild(background);
			main.addChild(logo2);
			//main.addChild(top1);
			main.addChild(top2);
			//main.addChild(top3);
			main.addChild(top4);
			main.addChild(version);
			main.addChild(all_txt4);
			main.addChild(mp);
			//main.addChild(eu);
			main.addChild(block);
			
			main.addChild(select1sprite);
			main.addChild(select2sprite);
			main.addChild(select3sprite);
			main.addChild(select4sprite);
			main.addChild(select5sprite);
			main.addChild(select6sprite);
			
			main.addChild(select1);
			main.addChild(select4);
			main.addChild(select2_);
			main.addChild(select3);
			main.addChild(select5);
			main.addChild(select6);
			
			
			main.addChild(help_buttontxt);
			main.addChild(mainhelp_button);
			main.addChild(stat_hint);
	}
	
	// окно с праивлами
	public function helpButton(e:MouseEvent):void{
		
		closeCurrentWindow();
		
		window = "help";
		addChild(help);
			help.addChild(background);
			help.addChild(top1);
			help.addChild(top2);
			//help.addChild(top3);
			help.addChild(top4);
			help.addChild(version);
			help.addChild(mp);
			//help.addChild(eu);
			help.addChild(all_txt1);
			
			help.addChild(all_txt4);
			help.addChild(logo2);
			help.addChild(block);
			help.addChild(help_buttontxt);
			help.addChild(rules_txt1);
			help.addChild(rules);
			help.addChild(main_button);
			help.addChild(link1);
			help.addChild(link2);
			help.addChild(link3);
			help.addChild(link4);
			help.addChild(button1txt);
			help.addChild(button2txt);
			help.addChild(button3txt);
			help.addChild(button4txt);
				button1txt.setColor("0xffffff");
				button2txt.setColor("0xffffff");
				button3txt.setColor("0xffffff");
				button4txt.setColor("0xffffff");
		
			//help.addChild(help_exit);
			help.addChild(button1);
			help.addChild(button2);
			help.addChild(button3);
			help.addChild(button4);
			help.addChild(scroll_r);
			
			help.addChild(stat_hint);
			
	}
	public function mainhelpButton(e:MouseEvent):void{
		removeChild(main);
		window = "help";
		
		addChild(help);
			help.addChild(background);
			help.addChild(top1);
			help.addChild(top2);
			//help.addChild(top3);
			help.addChild(top4);
			help.addChild(version);
			help.addChild(mp);
			//help.addChild(eu);
			help.addChild(all_txt1);
			
			help.addChild(all_txt4);
			
			help.addChild(logo2);
			help.addChild(block);
			help.addChild(help_buttontxt);
			help.addChild(rules_txt1);
			help.addChild(rules);
			help.addChild(main_button);
			help.addChild(scroll_r);
			help.addChild(stat_hint);
	}
	
	public function mouseOverHelp(e:MouseEvent):void {
		  top2.filters = [myShadow];
	}
	
	public function mouseOutHelp(e:MouseEvent):void {
		top2.filters = [];
	}
	
	public function mouseOverMain(e:MouseEvent):void {
		top1.filters = [myShadow];
	}
	
	public function mouseOutMain(e:MouseEvent):void {
		top1.filters = [];
	}
	/*
	public function helpExitButton(e:MouseEvent):void {
		removeChild(help);
		if (window == "main") {
			addChild(main);
		} 
		if (window == "main1") {
			addChild(main1);
		}
		if (window == "main2") {
			addChild(main2);
		} 
		if (window == "main3") {
			addChild(main3);
		}
		if (window == "main4") {
			addChild(main4);
		} 
		
	}
	*/
	
	// функции кнопок *****
	
	public function button1event(e:MouseEvent):void {
		
		closeCurrentWindow();
		
		setMethod("getProfile");
		
		var woff_Profile_loader:URLLoader = new URLLoader();
		woff_Profile_loader.addEventListener(Event.COMPLETE, woffProfileLoadComplete);
		woff_Profile_loader.load(woff_general_request);
		
		getTeam("getTeam", current_tour);
		
		var woff_Team_loader:URLLoader = new URLLoader();
		woff_Team_loader.addEventListener(Event.COMPLETE, woffTeamLoadComplete);
		woff_Team_loader.load(woff_general_request); 
		
		setMethod("checkTeam");
		var woff_checkteam_loader:URLLoader = new URLLoader();
		woff_checkteam_loader.addEventListener(Event.COMPLETE, woffUniCheckTeamComplete);
		woff_checkteam_loader.load(woff_general_request);
		
		getLeadersTournament(1);
		
		setMethod("getMyLeagues");
		
		var woff_LigList_loader:URLLoader = new URLLoader();
		woff_LigList_loader.addEventListener(Event.COMPLETE, woffLigListLoadComplete);
		woff_LigList_loader.load(woff_general_request);
		
		setMethod("getAllClubs");
		
		var woff_AllClubs_loader:URLLoader = new URLLoader();
		woff_AllClubs_loader.addEventListener(Event.COMPLETE, woffAllClubsComplete);
		woff_AllClubs_loader.load(woff_general_request);
		
		setMethod("getSaveDate");
		
		var woff_time_loader:URLLoader = new URLLoader();
		woff_time_loader.addEventListener(Event.COMPLETE, woffTimeLoadComplete);
		woff_time_loader.load(woff_general_request);
		
		window = "main1";
		addChild(main1);
			
			main1.addChild(background);
			main1.addChild(top1);
			main1.addChild(top2);
			main1.addChild(top3);
			main1.addChild(top4);
			main1.addChild(version);
			main1.addChild(mp);
			main1.addChild(eu);
			main1.addChild(all_txt1);
			main1.addChild(all_txt3);
			main1.addChild(all_txt4);
			main1.addChild(logo2);
			main1.addChild(help_buttontxt);
			main1.addChild(help_button);
			main1.addChild(main_button);
			main1.addChild(block);
			main1.addChild(block2);
			main1.addChild(liders);
			main1.addChild(active1);
			main1.addChild(link2);
			main1.addChild(link3);
			main1.addChild(link4);
			main1.addChild(button1txt);
			main1.addChild(button2txt);
			main1.addChild(button3txt);
			main1.addChild(button4txt);
				button1txt.setColor("0x696969");
				button2txt.setColor("0xffffff");
				button3txt.setColor("0xffffff");
				button4txt.setColor("0xffffff");
			main1.addChild(button2);
			main1.addChild(button3);
			main1.addChild(button4);
			main1.addChild(input);
			main1.addChild(input2);
			main1.addChild(main1_txt1);
			main1.addChild(main1_txt2);
			main1.addChild(main1_txt3);
			main1.addChild(main1_txt4);
			main1.addChild(main1_txt4_1);
			main1.addChild(main1_txt5);
			main1.addChild(main1_txt6);
			main1.addChild(main1_txt7);
			main1.addChild(main1_txt8);
			main1.addChild(main1_txt_note1);
				addLeadersButtons();
			main1.addChild(select);
			main1.addChild(liga);
			main1.addChild(liders_list);
			main1.addChild(team_list);
			main1.addChild(liga_list);
			main1.addChild(main1_txt24);
			main1.addChild(scroll);
			main1.addChild(scroll2);
			main1.addChild(stat_hint);
		}
	
	public function button2event(e:Event):void {
		
		closeCurrentWindow();
		
			//window = "main2";
		
		current_team_id = woff_uid;
		
		var rect:Rectangle = dropdown_menu_sprite2.scrollRect;
					rect.y = 0;
					dropdown_menu_sprite2.scrollRect = rect;
					
		getTeam("getTeam", current_new_tour);
		
		var woff_Team_loader:URLLoader = new URLLoader();
		woff_Team_loader.addEventListener(Event.COMPLETE, woffTeamLoadComplete);
		woff_Team_loader.load(woff_general_request);
		
		setMethod("checkTeam");
		var woff_checkteam_loader:URLLoader = new URLLoader();
		woff_checkteam_loader.addEventListener(Event.COMPLETE, woffUniCheckTeamComplete);
		woff_checkteam_loader.load(woff_general_request);
		
		
		getMyTourScore(current_new_tour);
		
		
		setMethod("getTeamStat");
		
		var woff_TeamStat_loader:URLLoader = new URLLoader();
		woff_TeamStat_loader.addEventListener(Event.COMPLETE, woffTeamStatLoadComplete);
		woff_TeamStat_loader.load(woff_general_request);
		
		
		setMethod("getProfile");
		
		var woff_Profile_loader:URLLoader = new URLLoader();
		woff_Profile_loader.addEventListener(Event.COMPLETE, woffProfileLoadComplete);
		woff_Profile_loader.load(woff_general_request);
		 
		setMethod("getMyTournamentScore");
		
		var woff_MyTournamentScore_loader:URLLoader = new URLLoader();
		woff_MyTournamentScore_loader.addEventListener(Event.COMPLETE, woffMyTournamentScoreLoadComplete);
		woff_MyTournamentScore_loader.load(woff_general_request);
		
		showMain2();
		main2.addChild(camera);
		
			main2_txt18.setText("Приобрести "+ current_transfers_mass +" трансферов за "+ current_tax +" MP");
			
			if (current_new_tour < current_tour) {
				main2.removeChild(footman_list);
				main2.addChild(safe_team_list);
				
					for (var iiiiii:int=1; iiiiii<=15; iiiiii++){
				safe_team_list.addChild(footman_form_array[iiiiii]);
				safe_team_list.addChild(footman_name_form[iiiiii]);
				safe_team_list.addChild(footman_name_txt[iiiiii]);
				safe_team_list.addChild(footman_scores[iiiiii]);
				
				}
				safe_team_list.addChild(captain);
		
			} else {
				for (var iiiiii:int=1; iiiiii<=15; iiiiii++){
				footman_list.addChild(footman_form_array[iiiiii]);
				footman_list.addChild(footman_name_form[iiiiii]);
				footman_list.addChild(footman_name_txt[iiiiii]);
				footman_list.addChild(footman_scores[iiiiii]);
				}
				footman_list.addChild(captain);
			}
			 
		}
		
	// окно набора команды для первого посещения чемпионата россеи
	public function button2event2(e:Event):void {
		removeChild(main);
		window = "main2";
		champ = "rus";
		
		current_tax = 250;
		current_tournament = 5;
		
		down_arrows = new Array();
		panel_transfer_right.trigger = 1;
		
		//обнуление команды
		
		for (var zope___:int=1; zope___< 16; zope___++) {
					footman_array[zope___].setText("null");
					footman_array[zope___].setId(0);
					footman_club[zope___].setText("club null");
					footman_name_txt[zope___].setText("ooo");
					footman_name_txt[zope___].setId(0);
					footman_pic[zope___].setRole("4");
					if (footman_form_array[zope___].clubId != 0)
						footman_form_array[zope___].setClub(0);
					footman_form_array[zope___].champ = champ;
					footman_replace[zope___].setId(0);
					footman_replace[zope___].filters = [myGlow];
					footman_scores[zope___].setText("0");
					team_role[zope___].setText("--");
					team_stat_array[zope___].setText("---");
					team_eu_cost[zope___].setText("-");
					
					down_arrows[zope___] = new down_arrow();
					down_arrows[zope___].x = footman_replace[zope___].x + 9;
					down_arrows[zope___].y = footman_replace[zope___].y+90;
					
					if (zope___ > 1 && zope___ <= 5){
						footman_replace[zope___].setRole(1);
					}
					if (zope___ > 5 && zope___ <= 9){
						footman_replace[zope___].setRole(2);
					}
					if (zope___ > 9 && zope___ <= 11){
						footman_replace[zope___].setRole(3);
					}
					if (zope___ > 12){
						footman_replace[zope___].setRole(zope___-12);
					}
					
					
				}
				
		setMethod("getProfile");
		
		var woff_Profile_loader:URLLoader = new URLLoader();
		woff_Profile_loader.addEventListener(Event.COMPLETE, woffProfileLoadComplete);
		woff_Profile_loader.load(woff_general_request);
		
		setMethod("getTournament");
		
		var woff_Tournament_loader:URLLoader = new URLLoader();
		woff_Tournament_loader.addEventListener(Event.COMPLETE, woffTornamentLoadComplete);
		woff_Tournament_loader.load(woff_general_request);
		
		getTeam("getTeam", current_new_tour);
		
		var woff_Team_loader:URLLoader = new URLLoader();
		woff_Team_loader.addEventListener(Event.COMPLETE, woffTeamLoadComplete);
		woff_Team_loader.load(woff_general_request);
		
		
		for (var iiiiii:int=1; iiiiii<=15; iiiiii++){
			footman_list.addChild(footman_form_array[iiiiii]);
			footman_list.addChild(footman_name_form[iiiiii]);
			footman_list.addChild(footman_name_txt[iiiiii]);
			footman_list.addChild(footman_scores[iiiiii]);
			
			footman_replace[iiiiii].filters = [myGlow];
		}
		
		
		showMain2();
		
			addChild(firstManual);
				firstManual.showMan();
				firstManual.setChamp(current_tournament);
				getFavClubs();
				
			main2_txt18.setText("Приобрести "+ current_transfers_mass +" трансферов за "+ current_tax +" MP");
			
		
	}
	
	// окно набора команды для первого посещения чемпионата Англии
	public function button2event4(e:Event):void {
		removeChild(main);
		
		dropdown_menu_sprite.addChild(scroll_clubs);
		window = "main2";
		current_tax = 150;
		current_tournament = 6;
		
		background = background3;
		champ = "eng";
		
		down_arrows = new Array();
		panel_transfer_right.trigger = 1;
		
		//обнуление команды
		for (var zope___:int=1; zope___< 16; zope___++) {
					footman_array[zope___].setText("null");
					footman_array[zope___].setId(0);
					footman_club[zope___].setText("club null");
					footman_name_txt[zope___].setText("ooo");
					footman_pic[zope___].setRole("4");
					if (footman_form_array[zope___].clubId != 0)
						footman_form_array[zope___].setClub(0);
					footman_form_array[zope___].champ = champ;
					footman_replace[zope___].setId(0);
					footman_replace[zope___].filters = [myGlow];
					footman_scores[zope___].setText("0");
					team_role[zope___].setText("--");
					team_stat_array[zope___].setText("---");
					team_eu_cost[zope___].setText("-");
					
					down_arrows[zope___] = new down_arrow();
					down_arrows[zope___].x = footman_replace[zope___].x + 9;
					down_arrows[zope___].y = footman_replace[zope___].y+90;
					
					if (zope___ > 1 && zope___ <= 5){
						footman_replace[zope___].setRole(1);
					}
					if (zope___ > 5 && zope___ <= 9){
						footman_replace[zope___].setRole(2);
					}
					if (zope___ > 9 && zope___ <= 11){
						footman_replace[zope___].setRole(3);
					}
					if (zope___ > 12){
						footman_replace[zope___].setRole(zope___-12);
					}
				}
				
		setMethod("getProfile");
		
		var woff_Profile_loader:URLLoader = new URLLoader();
		woff_Profile_loader.addEventListener(Event.COMPLETE, woffProfileLoadComplete);
		woff_Profile_loader.load(woff_general_request);
		
		setMethod("getTournament");
		
		var woff_Tournament_loader:URLLoader = new URLLoader();
		woff_Tournament_loader.addEventListener(Event.COMPLETE, woffTornament2LoadComplete);
		woff_Tournament_loader.load(woff_general_request);
		
		getTeam("getTeam", current_new_tour);
		
		var woff_Team_loader:URLLoader = new URLLoader();
		woff_Team_loader.addEventListener(Event.COMPLETE, woffTeamLoadComplete);
		woff_Team_loader.load(woff_general_request);
		
		for (var iiiiii:int=1; iiiiii<=15; iiiiii++){
			footman_list.addChild(footman_form_array[iiiiii]);
			footman_list.addChild(footman_name_form[iiiiii]);
			footman_list.addChild(footman_name_txt[iiiiii]);
			footman_list.addChild(footman_scores[iiiiii]);
			
			footman_replace[iiiiii].filters = [myGlow];
		}
		
		showMain2();
		
    			addChild(firstManual);
						firstManual.showMan();
						firstManual.setChamp(current_tournament);
						getFavClubs();
						
    			main2_txt18.setText("Приобрести "+current_transfers_mass+" трансферов за "+ current_tax +" MP");
	}
	
	// окно набора команды для первого посещения чемпионата Лиги Чемпионов
	public function button2event4_(e:Event):void {
		removeChild(main);
		
		dropdown_menu_sprite.addChild(scroll_clubs);
		window = "main2";
		current_tax = 150;
		current_tournament = 7;
		
		background = background3;
		champ = "chlig";
		woff_general_request.url = woff_api3;
		
		down_arrows = new Array();
		panel_transfer_right.trigger = 1;
		
		//обнуление команды
		for (var zope___:int=1; zope___< 16; zope___++) {
					footman_array[zope___].setText("null");
					footman_array[zope___].setId(0);
					footman_club[zope___].setText("club null");
					footman_name_txt[zope___].setText("ooo");
					footman_pic[zope___].setRole("4");
					if (footman_form_array[zope___].clubId != 0)
						footman_form_array[zope___].setClub(0);
					footman_form_array[zope___].champ = champ;
					footman_replace[zope___].setId(0);
					footman_replace[zope___].filters = [myGlow];
					footman_scores[zope___].setText("0");
					team_role[zope___].setText("--");
					team_stat_array[zope___].setText("---");
					team_eu_cost[zope___].setText("-");
					
					down_arrows[zope___] = new down_arrow();
					down_arrows[zope___].x = footman_replace[zope___].x + 9;
					down_arrows[zope___].y = footman_replace[zope___].y+90;
					
					if (zope___ > 1 && zope___ <= 5){
						footman_replace[zope___].setRole(1);
					}
					if (zope___ > 5 && zope___ <= 9){
						footman_replace[zope___].setRole(2);
					}
					if (zope___ > 9 && zope___ <= 11){
						footman_replace[zope___].setRole(3);
					}
					if (zope___ > 12){
						footman_replace[zope___].setRole(zope___-12);
					}
					
				}
				
		setMethod("getProfile");
		
		var woff_Profile_loader:URLLoader = new URLLoader();
		woff_Profile_loader.addEventListener(Event.COMPLETE, woffProfileLoadComplete);
		woff_Profile_loader.load(woff_general_request);
		
		setMethod("getTournament");
		
		var woff_Tournament_loader:URLLoader = new URLLoader();
		woff_Tournament_loader.addEventListener(Event.COMPLETE, woffTornament4LoadComplete);
		woff_Tournament_loader.load(woff_general_request);
		
		getTeam("getTeam", current_new_tour);
		
		var woff_Team_loader:URLLoader = new URLLoader();
		woff_Team_loader.addEventListener(Event.COMPLETE, woffTeamLoadComplete);
		woff_Team_loader.load(woff_general_request);
		
		for (var iiiiii:int=1; iiiiii<=15; iiiiii++){
			footman_list.addChild(footman_form_array[iiiiii]);
			footman_list.addChild(footman_name_form[iiiiii]);
			footman_list.addChild(footman_name_txt[iiiiii]);
			footman_list.addChild(footman_scores[iiiiii]);
			
			footman_replace[iiiiii].filters = [myGlow];
		}
		
		showMain2();
		
    			 addChild(firstManual);
						firstManual.showMan();
						firstManual.setChamp(current_tournament);
						getFavClubs();
						
    			 main2_txt18.setText("Приобрести "+current_transfers_mass+" трансферов за "+ current_tax +" MP");
	}
	
	// окно набора команды для первого посещения чемпионата Италии
	public function button2event3(e:Event):void {
		removeChild(main);
		
		dropdown_menu_sprite.addChild(scroll_clubs);
		window = "main2";
		current_tax = 150;
		current_tournament = 2;
		
		background = background3;
		champ = "ita";
		//woff_general_request.url = woff_api3;
		
		down_arrows = new Array();
		
		//обнуление команды
		for (var zope___:int=1; zope___< 16; zope___++) {
					footman_array[zope___].setText("null");
					footman_array[zope___].setId(0);
					footman_club[zope___].setText("club null");
					footman_name_txt[zope___].setText("ooo");
					footman_pic[zope___].setRole("4");
					if (footman_form_array[zope___].clubId != 0)
						footman_form_array[zope___].setClub(0);
					footman_form_array[zope___].champ = champ;
					footman_replace[zope___].setId(0);
					footman_replace[zope___].filters = [myGlow];
					footman_scores[zope___].setText("0");
					team_role[zope___].setText("--");
					team_stat_array[zope___].setText("---");
					team_eu_cost[zope___].setText("-");
					
					down_arrows[zope___] = new down_arrow();
					down_arrows[zope___].x = footman_replace[zope___].x + 9;
					down_arrows[zope___].y = footman_replace[zope___].y+90;
					
					if (zope___ > 1 && zope___ <= 5){
						footman_replace[zope___].setRole(1);
					}
					if (zope___ > 5 && zope___ <= 9){
						footman_replace[zope___].setRole(2);
					}
					if (zope___ > 9 && zope___ <= 11){
						footman_replace[zope___].setRole(3);
					}
					if (zope___ > 12){
						footman_replace[zope___].setRole(zope___-12);
					}
				}
				
		setMethod("getProfile");
		
		var woff_Profile_loader:URLLoader = new URLLoader();
		woff_Profile_loader.addEventListener(Event.COMPLETE, woffProfileLoadComplete);
		woff_Profile_loader.load(woff_general_request);
		
		setMethod("getTournament");
		
		var woff_Tournament_loader:URLLoader = new URLLoader();
		woff_Tournament_loader.addEventListener(Event.COMPLETE, woffTornament3LoadComplete);
		woff_Tournament_loader.load(woff_general_request);
		
		getTeam("getTeam", current_new_tour);
		
		var woff_Team_loader:URLLoader = new URLLoader();
		woff_Team_loader.addEventListener(Event.COMPLETE, woffTeamLoadComplete);
		woff_Team_loader.load(woff_general_request);
		
		for (var iiiiii:int=1; iiiiii<=15; iiiiii++){
			footman_list.addChild(footman_form_array[iiiiii]);
			footman_list.addChild(footman_name_form[iiiiii]);
			footman_list.addChild(footman_name_txt[iiiiii]);
			footman_list.addChild(footman_scores[iiiiii]);
			
			footman_replace[iiiiii].filters = [myGlow];
		}
		
		showMain2();
		
    			 addChild(firstManual);
					firstManual.showMan();
					firstManual.setChamp(current_tournament);
					getFavClubs();
					
    			 main2_txt18.setText("Приобрести "+current_transfers_mass+" трансферов за "+ current_tax +" MP");
	}
	
	// окно набора команды для первого посещения чемпионата Испании, Европы
	public function button2event5(e:Event):void {
		removeChild(main);
		
		dropdown_menu_sprite.addChild(scroll_clubs);
		//window = "main2";
		current_tax = 250;
		current_tournament = 3;
		
		background = background3;
		champ = "euro";
		
		down_arrows = new Array();
		panel_transfer_right.trigger = 1;
		
		//обнуление команды
		for (var zope___:int=1; zope___< 16; zope___++) {
					footman_array[zope___].setText("null");
					footman_array[zope___].setId(0);
					footman_club[zope___].setText("club null");
					footman_name_txt[zope___].setText("ooo");
					footman_pic[zope___].setRole("4");
					if (footman_form_array[zope___].clubId != 0)
						footman_form_array[zope___].setClub(0);
					footman_form_array[zope___].champ = champ;
					footman_replace[zope___].setId(0);
					footman_replace[zope___].filters = [myGlow];
					footman_scores[zope___].setText("0");
					team_role[zope___].setText("--");
					team_stat_array[zope___].setText("---");
					team_eu_cost[zope___].setText("-");
					
					down_arrows[zope___] = new down_arrow();
					down_arrows[zope___].x = footman_replace[zope___].x + 9;
					down_arrows[zope___].y = footman_replace[zope___].y+90;
					
					if (zope___ > 1 && zope___ <= 5){
						footman_replace[zope___].setRole(1);
					}
					if (zope___ > 5 && zope___ <= 9){
						footman_replace[zope___].setRole(2);
					}
					if (zope___ > 9 && zope___ <= 11){
						footman_replace[zope___].setRole(3);
					}
					if (zope___ > 12){
						footman_replace[zope___].setRole(zope___-12);
					}
				}
				
		setMethod("getProfile");
		
		var woff_Profile_loader:URLLoader = new URLLoader();
		woff_Profile_loader.addEventListener(Event.COMPLETE, woffProfileLoadComplete);
		woff_Profile_loader.load(woff_general_request);
		
		setMethod("getTournament");
		
		var woff_Tournament_loader:URLLoader = new URLLoader();
		woff_Tournament_loader.addEventListener(Event.COMPLETE, woffTornament5LoadComplete);
		woff_Tournament_loader.load(woff_general_request);
		
		getTeam("getTeam", current_new_tour);
		
		var woff_Team_loader:URLLoader = new URLLoader();
		woff_Team_loader.addEventListener(Event.COMPLETE, woffTeamLoadComplete);
		woff_Team_loader.load(woff_general_request);
		
		for (var iiiiii:int=1; iiiiii<=15; iiiiii++){
			footman_list.addChild(footman_form_array[iiiiii]);
			footman_list.addChild(footman_name_form[iiiiii]);
			footman_list.addChild(footman_name_txt[iiiiii]);
			footman_list.addChild(footman_scores[iiiiii]);
			
			footman_replace[iiiiii].filters = [myGlow];
		}
		
		showMain2();
		
    			 addChild(firstManual);
					firstManual.showMan();
					firstManual.setChamp(current_tournament);
					getFavClubs();
					
    			 main2_txt18.setText("Приобрести "+current_transfers_mass+" трансферов за "+ current_tax +" MP");
	}
	
	public function button3event(e:MouseEvent):void {
		
		closeCurrentWindow();
		
		setMethod("getAllLeagues");
		
		var woff_AllLeagues_loader:URLLoader = new URLLoader();
		woff_AllLeagues_loader.addEventListener(Event.COMPLETE, woffAllLeaguesLoadComplete);
		woff_AllLeagues_loader.load(woff_general_request);
		
		getFriends();
		
		main3_txt1.setText("Лига друзей");
		
		window = "main3";
		addChild(main3);
			main3.addChild(background);
			main3.addChild(top1);
			main3.addChild(top2);
			main3.addChild(top3);
			main3.addChild(top4);
			main3.addChild(version);
			main3.addChild(mp);
			main3.addChild(eu);
			main3.addChild(all_txt1);
			main3.addChild(all_txt3);
			main3.addChild(all_txt4);
			main3.addChild(logo2);
			main3.addChild(help_buttontxt);
			main3.addChild(help_button);
			main3.addChild(main_button);
			main3.addChild(block);
			main3.addChild(link1);
			main3.addChild(link2);
			main3.addChild(active3);
			main3.addChild(link4);
			main3.addChild(button1txt);
			main3.addChild(button2txt);
			main3.addChild(button3txt);
			main3.addChild(button4txt);
				button1txt.setColor("0xffffff");
				button3txt.setColor("0x696969");
				button2txt.setColor("0xffffff");
				button4txt.setColor("0xffffff");
			main3.addChild(button1);
			main3.addChild(button2);
			
			main3.addChild(button4);
			main3.addChild(select_leaders);
			main3.addChild(select_leaders_tour_txt);
			main3.addChild(liders);
			main3.addChild(liders_list);
			main3.addChild(profile);
			main3.addChild(liga2);
			main3.addChild(ava_big);
			main3.addChild(scroll);
			main3.addChild(scroll2);
			main3.addChild(main3_txt1);
			main3.addChild(main3_txt2);
			//main3.addChild(main3_txt3);
			main3.addChild(main3_txt4);
			
			main3.addChild(main3_txt6);
			main3.addChild(main3_txt7);
			main3.addChild(main3_txt8);
			main3.addChild(all_lig_list);
			main3.addChild(button_blue_invite);
			main3.addChild(main3_txt_inv);
			main3.addChild(scroll_lig);
			main3.addChild(friends_league_avatar);
			main3.addChild(stat_hint);
		}
		
	
	public function button4event(e:MouseEvent):void {
		
		closeCurrentWindow();
		
		getLeaders(1, current_new_tour);
		
		setMethod("getAllLeagues");
			var woff_AllLeagues_loader:URLLoader = new URLLoader();
			woff_AllLeagues_loader.addEventListener(Event.COMPLETE, woffAllLeaguesLoadComplete);
			woff_AllLeagues_loader.load(woff_general_request);
		
		
		window = "main4";
		addChild(main4);
			main4.addChild(background);
			main4.addChild(top1);
			main4.addChild(top2);
			main4.addChild(top3);
			main4.addChild(top4);
			main4.addChild(version);
			main4.addChild(mp);
			main4.addChild(eu);
			main4.addChild(all_txt1);
			main4.addChild(all_txt3);
			main4.addChild(all_txt4);
			main4.addChild(logo2);
			main4.addChild(help_buttontxt);
			main4.addChild(help_button);
			main4.addChild(main_button);
			main4.addChild(block);
			main4.addChild(link1);
			main4.addChild(link2);
			main4.addChild(link3);
			main4.addChild(active4);
			main4.addChild(button1txt);
			main4.addChild(button2txt);
			main4.addChild(button3txt);
			main4.addChild(button4txt);
				button1txt.setColor("0xffffff");
				button4txt.setColor("0x696969");
				button3txt.setColor("0xffffff");
				button2txt.setColor("0xffffff");
			main4.addChild(button1);
			main4.addChild(button2);
			main4.addChild(button3);
			main4.addChild(liders);
			main4.addChild(select_leaders);
			main4.addChild(select_leaders_tour_txt);
			main4.addChild(main1_txt1);
			main4.addChild(liders_list);
			main4.addChild(profile);
			main4.addChild(liga2);
			main4.addChild(ava_big);
			main4.addChild(main4_avatar);
			main4.addChild(scroll);
			main4.addChild(scroll2);
			main4.addChild(main4_txt1);
			main4.addChild(main3_txt2);
			//main4.addChild(main3_txt3);
			main4.addChild(main3_txt4);
			main4.addChild(main3_txt6);
			main4.addChild(main3_txt7);
			main4.addChild(main3_txt8_);
			main4.addChild(all_lig_list);
			main4.addChild(scroll_lig);
			main4.addChild(stat_hint);
		}
		
		
	public function button3event_euro(e:MouseEvent):void {
		
		//if (window == "main1") {
		////	removeChild(main1);
		//} 
		//if (window == "main2") {
		//	removeChild(main2);
		//}
		if (window == "main4") {
			removeChild(main4);
		} 
		if (window == "help") {
			removeChild(help);
		}
		if (window == "footman") {
			removeChild(footman);
		}
		if (window == "team_sostav") {
			removeChild(team_sostav);
		}
		if (window == "team_stat") {
			removeChild(team_stat);
		}
		if (window == "transfer") {
			removeChild(transfer);
		}
		
		setMethod("getAllLeagues");
		
		var woff_AllLeagues_loader:URLLoader = new URLLoader();
		woff_AllLeagues_loader.addEventListener(Event.COMPLETE, woffAllLeaguesLoadComplete);
		woff_AllLeagues_loader.load(woff_general_request);
		
		getFriends();
		
		main3_txt1.setText("Лига друзей");
		
		window = "main3";
		addChild(main3);
			main3.addChild(background);
			main3.addChild(top1);
			main3.addChild(top2);
			main3.addChild(top3);
			main3.addChild(top4);
			main3.addChild(version);
			main3.addChild(mp);
			main3.addChild(eu);
			main3.addChild(all_txt1);
			main3.addChild(all_txt3);
			main3.addChild(all_txt4);
			main3.addChild(logo2);
			main3.addChild(help_buttontxt);
			main3.addChild(help_button);
			main3.addChild(main_button);
			main3.addChild(block);
			//main3.addChild(link1);
			//main3.addChild(link2);
			main3.addChild(active3);
			main3.addChild(link4);
			//main3.addChild(button1txt);
			//main3.addChild(button2txt);
			main3.addChild(button3txt);
			main3.addChild(button4txt);
				//button1txt.setColor("0xffffff");
				button3txt.setColor("0x696969");
				//button2txt.setColor("0xffffff");
				button4txt.setColor("0xffffff");
			//main3.addChild(button1);
			//main3.addChild(button2);
			
			main3.addChild(button4_euro);
			//main3.addChild(select_leaders);
			//main3.addChild(select_leaders_tour_txt);
			main3.addChild(liders);
			main3.addChild(liders_list);
			main3.addChild(profile);
			main3.addChild(liga2);
			main3.addChild(ava_big);
			main3.addChild(scroll);
			main3.addChild(scroll2);
			main3.addChild(main3_txt1);
			main3.addChild(main3_txt2);
			main3.addChild(main3_txt3);
			main3.addChild(main3_txt4);
			
			main3.addChild(main3_txt6);
			main3.addChild(main3_txt7);
			main3.addChild(main3_txt8);
			main3.addChild(all_lig_list);
			main3.addChild(button_blue_invite);
			main3.addChild(main3_txt_inv);
			main3.addChild(scroll_lig);
		}
		
		public function button4event_euro(e:MouseEvent):void {
		//if (window == "main1") {
		//	removeChild(main1);
		//} 
		if (window == "main3") {
			removeChild(main3);
		}
		//if (window == "main2") {
		//	removeChild(main2);
		//} 
		if (window == "help") {
			removeChild(help);
		}
		if (window == "footman") {
			removeChild(footman);
		}
		if (window == "team_sostav") {
			removeChild(team_sostav);
		} 
		if (window == "team_stat") {
			removeChild(team_stat);
		}
		if (window == "transfer") {
			removeChild(transfer);
		}
		
		getLeaders(1, current_new_tour);
		
		setMethod("getAllLeagues");
			var woff_AllLeagues_loader:URLLoader = new URLLoader();
			woff_AllLeagues_loader.addEventListener(Event.COMPLETE, woffAllLeaguesLoadComplete);
			woff_AllLeagues_loader.load(woff_general_request);
		
		
		window = "main4";
		addChild(main4);
			main4.addChild(background);
			main4.addChild(top1);
			main4.addChild(top2);
			main4.addChild(top3);
			main4.addChild(top4);
			main4.addChild(version);
			main4.addChild(mp);
			main4.addChild(eu);
			main4.addChild(all_txt1);
			main4.addChild(all_txt3);
			main4.addChild(all_txt4);
			main4.addChild(logo2);
			main4.addChild(help_buttontxt);
			main4.addChild(help_button);
			main4.addChild(main_button);
			main4.addChild(block);
			//main4.addChild(link1);
			//main4.addChild(link2);
			main4.addChild(link3);
			main4.addChild(active4);
			//main4.addChild(button1txt);
			//main4.addChild(button2txt);
			main4.addChild(button3txt);
			main4.addChild(button4txt);
				//button1txt.setColor("0xffffff");
				button4txt.setColor("0x696969");
				button3txt.setColor("0xffffff");
				//button2txt.setColor("0xffffff");
			//main4.addChild(button1);
			//main4.addChild(button2);
			main4.addChild(button3_euro);
			main4.addChild(liders);
			//main4.addChild(select_leaders);
			//main4.addChild(select_leaders_tour_txt);
			main4.addChild(main1_txt1);
			main4.addChild(liders_list);
			main4.addChild(profile);
			main4.addChild(liga2);
			main4.addChild(ava_big);
			main4.addChild(scroll);
			main4.addChild(scroll2);
			main4.addChild(main4_txt1);
			main4.addChild(main3_txt2);
			main4.addChild(main3_txt3);
			main4.addChild(main3_txt4);
			main4.addChild(main3_txt6);
			main4.addChild(main3_txt7);
			main4.addChild(main3_txt8_);
			main4.addChild(all_lig_list);
			main4.addChild(scroll_lig);
		}
		
		// окно футболиста 
		
		public function footmanEvent(e:MouseEvent):void {
			
			var test:String = new String(e.target.text);
			var footman_txt__:text = new text(20, 142, test, "2");
		
		closeCurrentWindow();
		
		window = "footman";
		
		getFootballerStats(e.currentTarget.id);
		
		addChild(footman);
			
			footman.addChild(background);
			footman.addChild(top1);
			footman.addChild(top2);
			footman.addChild(top3);
			footman.addChild(top4);
			footman.addChild(version);
			footman.addChild(mp);
			footman.addChild(eu);
			footman.addChild(all_txt1);
			footman.addChild(all_txt3);
			footman.addChild(all_txt4);
			footman.addChild(logo2);
			footman.addChild(help_buttontxt);
			footman.addChild(help_button);
			footman.addChild(main_button);
			footman.addChild(block);
			footman.addChild(link1);
			footman.addChild(link2);
			footman.addChild(link3);
			footman.addChild(link4);
			footman.addChild(button1txt);
			footman.addChild(button2txt);
			footman.addChild(button3txt);
			footman.addChild(button4txt);
				button1txt.setColor("0xffffff");
				button2txt.setColor("0xffffff");
				button3txt.setColor("0xffffff");
				button4txt.setColor("0xffffff");
			footman.addChild(button1);
			footman.addChild(button2);
			footman.addChild(button3);
			footman.addChild(button4);
			footman.addChild(footman_txt);
			footman.addChild(tours);
			footman.addChild(table);
			footman.addChild(futbolist);
			footman.addChild(footman_txt__);
			footman.addChild(footman_txt1);
			footman.addChild(footman_txt2);
			footman.addChild(footman_txt3);
			footman.addChild(footman_txt4);
			footman.addChild(footman_txt5);
			footman.addChild(footman_txt6);
			footman.addChild(footman_txt7);
			footman.addChild(footman_txt8);
			footman.addChild(footman_txt9);
			footman.addChild(footman_txt10);
			footman.addChild(footman_txt11);
			footman.addChild(footman_txt12);
			footman.addChild(footman_txt13);
			footman.addChild(footman_txt14);
			footman.addChild(footman_txt15);
			footman.addChild(footman_stat_list);
			footman.addChild(scroll_ftb);
			
		}
		
		public function captainEvent(e:MouseEvent):void {
			
			captain.x = e.currentTarget.x+20;
			captain.y = e.currentTarget.y+20;
			footman_list.addChild(captain);
			
			setStatus(current_captain_id, 0, e.currentTarget.foot_id, 1);
			current_captain_id = e.currentTarget.foot_id;
		
		}
		
		public function footmanEvent2(e:MouseEvent):void {
			
			var test:String = new String(e.target.text);
			var footman_txt__:text = new text(20, 142, test, "2");
		
			
		window = "footman";
		
				footman_txt11.setText("-");
				footman_txt12.setText("--");
				footman_txt13.setText("--");
				footman_txt14.setText("- EU");
				footman_txt15.setText("--");
				
		getFootballerStats(e.currentTarget.id);
		
		addChild(footman);
			
			footman.addChild(background);
			footman.addChild(top1);
			footman.addChild(top2);
			footman.addChild(top3);
			footman.addChild(top4);
			footman.addChild(version);
			footman.addChild(mp);
			footman.addChild(eu);
			footman.addChild(all_txt1);
			footman.addChild(all_txt3);
			footman.addChild(all_txt4);
			footman.addChild(logo2);
			footman.addChild(help_buttontxt);
			footman.addChild(help_button);
			footman.addChild(main_button);
			footman.addChild(block);
			//footman.addChild(block2);
			//footman.addChild(liders);
			footman.addChild(link1);
			footman.addChild(link2);
			footman.addChild(link3);
			footman.addChild(link4);
			footman.addChild(button1txt);
			footman.addChild(button2txt);
			footman.addChild(button3txt);
			footman.addChild(button4txt);
				button1txt.setColor("0xffffff");
				button2txt.setColor("0xffffff");
				button3txt.setColor("0xffffff");
				button4txt.setColor("0xffffff");
			footman.addChild(button1);
			footman.addChild(button2);
			footman.addChild(button3);
			footman.addChild(button4);
			
			footman.addChild(footman_txt);
			footman.addChild(tours);
			footman.addChild(table);
			footman.addChild(futbolist);
			footman.addChild(footman_txt__);
			footman.addChild(footman_txt1);
			footman.addChild(footman_txt2);
			footman.addChild(footman_txt3);
			footman.addChild(footman_txt4);
			footman.addChild(footman_txt5);
			footman.addChild(footman_txt6);
			footman.addChild(footman_txt7);
			footman.addChild(footman_txt8);
			footman.addChild(footman_txt9);
			footman.addChild(footman_txt10);
			footman.addChild(footman_txt11);
			footman.addChild(footman_txt12);
			footman.addChild(footman_txt13);
			footman.addChild(footman_txt14);
			footman.addChild(footman_txt15);
			footman.addChild(footman_stat_list);
			footman.addChild(delete_b);
		}
		
		
		
		
		
		
		// окно состава команды противника
		
		public function team_sostavEvent(e:MouseEvent):void {
		
			closeCurrentWindow();
			
		window = "team_sostav";
		
		current_team_id = e.currentTarget.teamId;
		
		getTeam2("getTeam", current_new_tour, current_team_id);
		
		var woff_Team_loader:URLLoader = new URLLoader();
		woff_Team_loader.addEventListener(Event.COMPLETE, woffTeamLoadComplete);
		woff_Team_loader.load(woff_general_request);
		
		getLigs(current_team_id);
		
		var woff_LigList_loader:URLLoader = new URLLoader();
		woff_LigList_loader.addEventListener(Event.COMPLETE, woffLigListLoadComplete2);
		woff_LigList_loader.load(woff_general_request);
		
		
		for (var iiiiii:int=1; iiiiii<=15; iiiiii++){
			safe_team_list.addChild(footman_form_array[iiiiii]);
			safe_team_list.addChild(footman_name_form[iiiiii]);
			safe_team_list.addChild(footman_name_txt[iiiiii]);
			safe_team_list.addChild(footman_scores[iiiiii]);
		}
		
		safe_team_list.addChild(captain);
		
		addChild(team_sostav);
			
			team_sostav.addChild(background);
			team_sostav.addChild(top1);
			team_sostav.addChild(top2);
			team_sostav.addChild(top3);
			team_sostav.addChild(top4);
			team_sostav.addChild(version);
			team_sostav.addChild(mp);
			team_sostav.addChild(eu);
			team_sostav.addChild(all_txt1);
			team_sostav.addChild(all_txt3);
			team_sostav.addChild(all_txt4);
			team_sostav.addChild(logo2);
			team_sostav.addChild(help_buttontxt);
			team_sostav.addChild(help_button);
			team_sostav.addChild(main_button);
			team_sostav.addChild(block);
			team_sostav.addChild(link1);
			team_sostav.addChild(link2);
			team_sostav.addChild(link3);
			team_sostav.addChild(link4);
			team_sostav.addChild(button1txt);
			team_sostav.addChild(button2txt);
			team_sostav.addChild(button3txt);
			team_sostav.addChild(button4txt);
				button1txt.setColor("0xffffff");
				button2txt.setColor("0xffffff");
				button3txt.setColor("0xffffff");
				button4txt.setColor("0xffffff");
			team_sostav.addChild(button1);
			team_sostav.addChild(button2);
			team_sostav.addChild(button3);
			team_sostav.addChild(button4);
			/*
			team_sostav.addChild(main1_txt1);
			team_sostav.addChild(main1_txt2);
			team_sostav.addChild(main1_txt3);
			team_sostav.addChild(main1_txt4);
			team_sostav.addChild(main1_txt5);
						 
			 */
			team_sostav.addChild(field);
			//team_sostav.addChild(input);
			team_sostav.addChild(select2);
			team_sostav.addChild(main2_txt24);
			team_sostav.addChild(safe_team_list);
			team_sostav.addChild(liga);
			team_sostav.addChild(liga_list);
			//team_sostav.addChild(liders_list);
			
			//main1.addChild(team_list);
			//main1.addChild(hover);
			
		}
		
		// окно состава команды противника - вход со стены
		
		public function team_sostavEvent_wall(teamId:int):void {
			
			closeCurrentWindow();
			
			window = "team_sostav";
			
			current_team_id = teamId;
			current_tournament = 5;
			woff_general_request.url = woff_api3;
			current_new_tour = 1;
			main2_txt24.setText("Текущий тур: №" + current_new_tour);
			
			getTeam2("getTeam", current_new_tour, current_team_id);
			
			var woff_Team_loader:URLLoader = new URLLoader();
			woff_Team_loader.addEventListener(Event.COMPLETE, woffTeamLoadComplete);
			woff_Team_loader.load(woff_general_request);
			
			getLigs(current_team_id);
			
			var woff_LigList_loader:URLLoader = new URLLoader();
			woff_LigList_loader.addEventListener(Event.COMPLETE, woffLigListLoadComplete2);
			woff_LigList_loader.load(woff_general_request);
			
			
			for (var iiiiii:int=1; iiiiii<=15; iiiiii++){
				safe_team_list.addChild(footman_form_array[iiiiii]);
				safe_team_list.addChild(footman_name_form[iiiiii]);
				safe_team_list.addChild(footman_name_txt[iiiiii]);
				safe_team_list.addChild(footman_scores[iiiiii]);
			}
			
			safe_team_list.addChild(captain);
			
			addChild(team_sostav);
			
			team_sostav.addChild(background);
			team_sostav.addChild(top1);
			team_sostav.addChild(top2);
			team_sostav.addChild(top3);
			team_sostav.addChild(top4);
			team_sostav.addChild(version);
			team_sostav.addChild(mp);
			team_sostav.addChild(eu);
			team_sostav.addChild(all_txt1);
			team_sostav.addChild(all_txt3);
			team_sostav.addChild(all_txt4);
			team_sostav.addChild(logo2);
			team_sostav.addChild(help_buttontxt);
			team_sostav.addChild(help_button);
			team_sostav.addChild(main_button);
			team_sostav.addChild(block);
			team_sostav.addChild(link1);
			team_sostav.addChild(link2);
			team_sostav.addChild(link3);
			team_sostav.addChild(link4);
			team_sostav.addChild(button1txt);
			team_sostav.addChild(button2txt);
			team_sostav.addChild(button3txt);
			team_sostav.addChild(button4txt);
				button1txt.setColor("0xffffff");
				button2txt.setColor("0xffffff");
				button3txt.setColor("0xffffff");
				button4txt.setColor("0xffffff");
			team_sostav.addChild(button1);
			team_sostav.addChild(button2);
			team_sostav.addChild(button3);
			team_sostav.addChild(button4);
			/*
			team_sostav.addChild(main1_txt1);
			team_sostav.addChild(main1_txt2);
			team_sostav.addChild(main1_txt3);
			team_sostav.addChild(main1_txt4);
			team_sostav.addChild(main1_txt5);
			
			*/
			team_sostav.addChild(field);
			//team_sostav.addChild(input);
			team_sostav.addChild(select2);
			team_sostav.addChild(main2_txt24);
			team_sostav.addChild(safe_team_list);
			team_sostav.addChild(liga);
			team_sostav.addChild(liga_list);
			//team_sostav.addChild(liders_list);
			
			//main1.addChild(team_list);
			//main1.addChild(hover);
			
		}
		// окно статистики команды
		
		public function team_statEvent(e:MouseEvent):void {
		
			closeCurrentWindow();
			
		window = "team_stat";
		
		getTeamStats(current_tour);
		
		addChild(team_stat);
			
			team_stat.addChild(background);
			team_stat.addChild(top1);
			team_stat.addChild(top2);
			team_stat.addChild(top3);
			team_stat.addChild(top4);
			team_stat.addChild(version);
			team_stat.addChild(mp);
			team_stat.addChild(eu);
			team_stat.addChild(all_txt1);
			team_stat.addChild(all_txt3);
			team_stat.addChild(all_txt4);
			team_stat.addChild(logo2);
			team_stat.addChild(help_buttontxt);
			team_stat.addChild(help_button);
			team_stat.addChild(main_button);
			team_stat.addChild(block);
			//team_sostav.addChild(block2);
			//team_sostav.addChild(liders);
			team_stat.addChild(link1);
			team_stat.addChild(link2);
			team_stat.addChild(link3);
			team_stat.addChild(link4);
			team_stat.addChild(button1txt);
			team_stat.addChild(button2txt);
			team_stat.addChild(button3txt);
			team_stat.addChild(button4txt);
				button1txt.setColor("0xffffff");
				button2txt.setColor("0xffffff");
				button3txt.setColor("0xffffff");
				button4txt.setColor("0xffffff");
			team_stat.addChild(button1);
			team_stat.addChild(button2);
			team_stat.addChild(button3);
			team_stat.addChild(button4);
			
			team_stat.addChild(team_stat_txt);
			
			 /*
			team_sostav.addChild(main1_txt2);
			team_sostav.addChild(main1_txt3);
			team_sostav.addChild(main1_txt4);
			team_sostav.addChild(main1_txt5);
			team_sostav.addChild(main1_txt6);			 
			 */
			team_stat.addChild(statistics);
			//team_stat.addChild(zebra);
			team_stat.addChild(table2);
			team_stat.addChild(select_st);
			team_stat.addChild(button_blue_alpha_);
			team_stat.addChild(button_blue_);
			team_stat.addChild(team_stat_txt2);
			team_stat.addChild(team_stat_txt3);
			//team_stat.addChild(team_stat_txt4);
			team_stat.addChild(team_stat_txt5);
			team_stat.addChild(team_stat_txt6);
			team_stat.addChild(team_stat_txt7);
			team_stat.addChild(team_stat_txt8);
			team_stat.addChild(team_stat_txt9);
			team_stat.addChild(team_stat_txt01);
			team_stat.addChild(team_stat_txt02);
			team_stat.addChild(team_stat_txt03);
			team_stat.addChild(team_stat_txt04);
			team_stat.addChild(team_stat_txt05);
			team_stat.addChild(team_stat_txt06);
			team_stat.addChild(team_stat_txt07);
			team_stat.addChild(team_stat_txt08);
			team_stat.addChild(team_stat_txt09);
			team_stat.addChild(team_stat_txt010);
			team_stat.addChild(team_stat_txt011);
			team_stat.addChild(team_stat_txt012);
			team_stat.addChild(team_stat_txt013);
			team_stat.addChild(team_stat_list);
			team_stat.addChild(stat_hint);
		}
		
		// окно трансферов - test
		/*
		public function transfer11Event(e:MouseEvent):void {
			
			//addChild(background);
			
			current_id = (e.currentTarget.foot_id);
		current_role = (e.currentTarget.amplua);
		var current_position:int = (e.currentTarget.position);
		var current_status:int = (e.currentTarget.status);
		
		//all_txt3.setText(current_id + " v " + String(current_role) + " v " + String(current_position));
		
		//getTransfer(current_id, current_role);
		
		var woff_Transfer_loader:URLLoader = new URLLoader();
		woff_Transfer_loader.addEventListener(Event.COMPLETE, woffTransferLoadComplete);
		woff_Transfer_loader.load(woff_general_request);
		
		if (current_id !== 0) {
			var blabla:String = footman_name_txt[current_position].txt();
			transfer_footman.setText(blabla);
			} else {
			transfer_footman.setText("new player! yo");
			}
			
		for (var tb:int=1; tb<150; tb++) {
			transfer_get_array[tb].setId1(current_id); 
			transfer_get_array[tb].setStatus(current_status);
			
		}
			
		}
		 * 
		 */
		
		
		// окно трансферов
		public function transferEvent(e:Event):void {
		
			closeCurrentWindow();	
		
		window = "transfer";
		
		current_id = (e.currentTarget.foot_id);
		current_role = (e.currentTarget.amplua);
		var current_position:int = (e.currentTarget.position);
		var current_status:int = (e.currentTarget.status);
		current_club =  (footman_form_array[current_position].clubId);
		
		transfer_txt8.setText(String(team_fb_cost[current_position]/10));
		
		getTransfer(current_id, current_role, current_club);
		
		var woff_Transfer_loader:URLLoader = new URLLoader();
		woff_Transfer_loader.addEventListener(Event.COMPLETE, woffTransferLoadComplete);
		woff_Transfer_loader.load(woff_general_request);
		
		if (current_id !== 0) {
			//var blabla:String = footman_name_txt[current_position].txt();
			transfer_footman.setText(footman_name_txt[current_position].txt());
			} else {
			transfer_footman.setText("новый игрок");
			}
		
		/*
		for (var tb:int=1; tb<300; tb++) {
			transfer_get_array[tb].setId1(current_id); 
			transfer_get_array[tb].setStatus(current_status);
		}
		*/
		addChild(transfer);
			
			transfer.addChild(background);
			transfer.addChild(top1);
			transfer.addChild(top2);
			transfer.addChild(top3);
			transfer.addChild(top4);
			transfer.addChild(version);
			transfer.addChild(mp);
			transfer.addChild(eu);
			transfer.addChild(all_txt1);
			transfer.addChild(all_txt3);
			transfer.addChild(all_txt4);
			transfer.addChild(logo2);
			transfer.addChild(help_buttontxt);
			transfer.addChild(help_button);
			transfer.addChild(main_button);
			transfer.addChild(block);
			//team_sostav.addChild(block2);
			//team_sostav.addChild(liders);
			transfer.addChild(link1);
			transfer.addChild(link2);
			transfer.addChild(link3);
			transfer.addChild(link4);
			transfer.addChild(button1txt);
			transfer.addChild(button2txt);
			transfer.addChild(button3txt);
			transfer.addChild(button4txt);
				button1txt.setColor("0xffffff");
				button2txt.setColor("0xffffff");
				button3txt.setColor("0xffffff");
				button4txt.setColor("0xffffff");
			transfer.addChild(button1);
			transfer.addChild(button2);
			transfer.addChild(button3);
			transfer.addChild(button4);
			
			transfer.addChild(transfer_txt);
			
			
			transfer.addChild(transfers2);
			transfer.addChild(match);
			
			transfer.addChild(transfer_txt7);
			//transfer.addChild(transfer_txt8);
			//transfer.addChild(transfer_txt9);
			transfer.addChild(transfer_txt10);
			transfer.addChild(transfer_txt11);
			transfer.addChild(table3);
			transfer.addChild(transfer_footman);
			transfer.addChild(transfer_txt8);
			
			transfer.addChild(transfer_list);
			transfer.addChild(transfer_txt1);
			transfer.addChild(search_form);
			transfer.addChild(search_field);
			transfer.addChild(scroll_tr);
			transfer.addChild(transfer_txt2);
			transfer.addChild(transfer_txt3);
			transfer.addChild(transfer_txt4);
			transfer.addChild(transfer_txt5);
			transfer.addChild(transfer_txt6);
			transfer.addChild(offer_button);
			transfer.addChild(transfer_txt12);
			
			transfer.addChild(gamesListTransfers);	
				gamesListTransfers.request(current_tournament);
				
			transfer.addChild(panel_transfer_right);
				
			stage.addChild(loading_balls);
			
			var myBlur:BlurFilter = new BlurFilter();
			transfer.filters = [myBlur];
		
		}
		
		// функция возврата к странице трансферов
		public function transferEvent2(e:MouseEvent):void {
		
			closeCurrentWindow();
			
		window = "transfer";
		
		//current_id = (e.currentTarget.foot_id);
		//current_role = (e.currentTarget.amplua);
		
		getTransfer(current_id, current_role, current_club);
		
		var woff_Transfer_loader:URLLoader = new URLLoader();
		woff_Transfer_loader.addEventListener(Event.COMPLETE, woffTransferLoadComplete);
		woff_Transfer_loader.load(woff_general_request);
		
		//transfer_footman.setText(footman_name_txt[current_id].text);
		
		addChild(transfer);
			
			transfer.addChild(background);
			transfer.addChild(top1);
			transfer.addChild(top2);
			transfer.addChild(top3);
			transfer.addChild(top4);
			transfer.addChild(version);
			transfer.addChild(mp);
			transfer.addChild(eu);
			transfer.addChild(all_txt1);
			transfer.addChild(all_txt3);
			transfer.addChild(all_txt4);
			transfer.addChild(logo2);
			transfer.addChild(help_buttontxt);
			transfer.addChild(help_button);
			transfer.addChild(main_button);
			transfer.addChild(block);
			transfer.addChild(link1);
			transfer.addChild(link2);
			transfer.addChild(link3);
			transfer.addChild(link4);
			transfer.addChild(button1txt);
			transfer.addChild(button2txt);
			transfer.addChild(button3txt);
			transfer.addChild(button4txt);
				button1txt.setColor("0xffffff");
				button2txt.setColor("0xffffff");
				button3txt.setColor("0xffffff");
				button4txt.setColor("0xffffff");
			transfer.addChild(button1);
			transfer.addChild(button2);
			transfer.addChild(button3);
			transfer.addChild(button4);
			
			transfer.addChild(transfer_txt);
			
			transfer.addChild(transfers2);
			transfer.addChild(match);
			
			transfer.addChild(transfer_txt4);
			transfer.addChild(transfer_txt5);
			transfer.addChild(transfer_txt6);
			transfer.addChild(transfer_txt7);
			transfer.addChild(transfer_txt10);
			transfer.addChild(transfer_txt11);
			transfer.addChild(transfer_txt1);
			transfer.addChild(search_form);
			transfer.addChild(search_field);
			transfer.addChild(table3);
			transfer.addChild(transfer_footman);
			transfer.addChild(transfer_txt8);
			transfer.addChild(offer_button);
			transfer.addChild(transfer_txt12);
			
			transfer.addChild(transfer_list);
			transfer.addChild(scroll_tr);
			transfer.addChild(transfer_txt2);
			transfer.addChild(transfer_txt3);
		}
		
		// окно лиги
		public function ligaEvent(e:MouseEvent):void {
		
			closeCurrentWindow();
			
		window = "player_liga";
		
		main3_txt1.setText(e.currentTarget.txt());
		var current_liga_id:String = e.currentTarget.league_id;
		
		if (current_liga_id == "33"){
					main3_txt5.setText("Вступить за 4 MP");
					//main3_txt5.set
					} else {
					main3_txt5.setText("Вступить");	
					}
			
		
		getLeagueMembers(e.currentTarget.league_id);
		
		
		var woff_LeagueMembers_loader:URLLoader = new URLLoader();
		woff_LeagueMembers_loader.addEventListener(Event.COMPLETE, woffLeagueMembersLoadComplete);
		woff_LeagueMembers_loader.load(woff_general_request);
		
		
		setMethod("getAllLeagues");
		
		var woff_AllLeagues_loader:URLLoader = new URLLoader();
		woff_AllLeagues_loader.addEventListener(Event.COMPLETE, woffAllLeaguesLoadComplete);
		woff_AllLeagues_loader.load(woff_general_request);
		
		var rect:Rectangle = liders_list.scrollRect;
		rect.y = 0;
		liders_list.scrollRect = rect;
			scroll2.y = 147;			
		
		window = "player_liga";
		addChild(player_liga);
			
			player_liga.addChild(background);
			player_liga.addChild(top1);
			player_liga.addChild(top2);
			player_liga.addChild(top3);
			player_liga.addChild(top4);
			player_liga.addChild(version);
			player_liga.addChild(mp);
			player_liga.addChild(eu);
			player_liga.addChild(all_txt1);
			player_liga.addChild(all_txt3);
			player_liga.addChild(all_txt4);
			player_liga.addChild(logo2);
			player_liga.addChild(help_buttontxt);
			player_liga.addChild(help_button);
			player_liga.addChild(main_button);
			player_liga.addChild(block);
			//team_sostav.addChild(block2);
			player_liga.addChild(liders);
			
			player_liga.addChild(link3);
			player_liga.addChild(link4);
			
			//if (champ != "euro") {
				player_liga.addChild(link1);
				player_liga.addChild(link2);
				player_liga.addChild(button1txt);
				player_liga.addChild(button2txt);
				player_liga.addChild(button3txt);
				player_liga.addChild(button4txt);
				
				button1txt.setColor("0xffffff");
				button2txt.setColor("0xffffff");
				player_liga.addChild(button1);
				player_liga.addChild(button2);
				player_liga.addChild(button3);
				player_liga.addChild(button4);
				player_liga.addChild(select_leaders);
				player_liga.addChild(select_leaders_tour_txt);
				
			//} else {
				/*player_liga.addChild(button3txt);
				player_liga.addChild(button4txt);
				
				player_liga.addChild(button3_euro);
				player_liga.addChild(button4_euro);*/
				
			//}
			
			
				button3txt.setColor("0xffffff");
				button4txt.setColor("0xffffff");
			
				
			//transfer.addChild(transfer_txt);
			player_liga.addChild(main1_txt1);
			
			
			player_liga.addChild(liders_list);
			player_liga.addChild(profile);
			player_liga.addChild(liga2);
			player_liga.addChild(ava_big);
			player_liga.addChild(main4_avatar);
			player_liga.addChild(scroll);
			player_liga.addChild(scroll2);
			player_liga.addChild(main3_txt1);
			player_liga.addChild(main3_txt2);
			//player_liga.addChild(main3_txt3);
			player_liga.addChild(main3_txt4);
			
			player_liga.addChild(main3_txt6);
			player_liga.addChild(main3_txt7);
			player_liga.addChild(all_lig_list);
			player_liga.addChild(button_blue_liga);
			player_liga.addChild(main3_txt5);
				main3_txt5.setLeagueId(current_liga_id);
			player_liga.addChild(scroll_lig);
			for (var blo:int=1; blo < 6; blo++) {
				if (p_liga_backup[blo].league_id == e.currentTarget.league_id) {
					player_liga.removeChild(main3_txt5);
					player_liga.addChild(main3_txt5_);
					main3_txt5_.setLeagueId(current_liga_id);
					} 
				}
		}
		
		/*
		public function betFair(e:MouseEvent):void {
		
			closeCurrentWindow();
			
		window = "BetFair";
		
		addChild(bet_fair);
			
			bet_fair.addChild(background);
			bet_fair.addChild(top1);
			bet_fair.addChild(top2);
			bet_fair.addChild(top3);
			bet_fair.addChild(top4);
			bet_fair.addChild(version);
			bet_fair.addChild(mp);
			bet_fair.addChild(eu);
			bet_fair.addChild(all_txt1);
			bet_fair.addChild(all_txt3);
			bet_fair.addChild(all_txt4);
			bet_fair.addChild(logo2);
			bet_fair.addChild(help_buttontxt);
			bet_fair.addChild(help_button);
			bet_fair.addChild(main_button);
			bet_fair.addChild(block);
			bet_fair.addChild(link1);
			bet_fair.addChild(link2);
			bet_fair.addChild(link3);
			bet_fair.addChild(link4);
			bet_fair.addChild(button1txt);
			bet_fair.addChild(button2txt);
			bet_fair.addChild(button3txt);
			bet_fair.addChild(button4txt);
				button1txt.setColor("0xffffff");
				button2txt.setColor("0xffffff");
				button3txt.setColor("0xffffff");
				button4txt.setColor("0xffffff");
			bet_fair.addChild(button1);
			bet_fair.addChild(button2);
			bet_fair.addChild(button3);
			bet_fair.addChild(button4);
			
			
			var betfair_logo:Loader = new Loader();
			betfair_logo.x = 10;
			betfair_logo.y = 105;
			betfair_logo.load(new URLRequest("http://cache.cdnbf.net/sports/ALL_BRANDS/GBR/ru/prospect/images/logo/logo_www.gif"));
			
			bet_fair.addChild(betfair_logo);
			
			for(var lines:int=0; lines<7; lines++) {
				var new_line:text = new text(290, 110+lines*48, "название команды -", "11");
				var new_line2:text = new text(375, 110+lines*48, " - название команды", "2");
				
				
				var new_insert:BetFair = new BetFair();
					new_insert.x = 200;
					new_insert.y = 108+lines*48;
				
				bet_fair.addChild(new_insert);
				bet_fair.addChild(new_line);
				bet_fair.addChild(new_line2);
				
			}
			
			//bet_fair.addChild(stat_hint);
		}
		*/
	
		// загрузчик
		
		public function progressHandler (e:ProgressEvent):void{
			//var loaded:uint = background.contentLoaderInfo.bytesLoaded;
			//var total:uint = background.contentLoaderInfo.bytesTotal;
			
			var loaded:uint = e.bytesLoaded;
			var total:uint = e.bytesTotal;
			
			if (loaded == total) {
				loadedFiles += total;
			}
			
			//var PersentLoaded:Number = Math.round((loadedFiles/381962)*100); 
			var PersentLoaded:Number = (loadedFiles/385934)*100; 
			
			
			status.setText("Загрузка " + Math.round(PersentLoaded) + "% ");
			//status.setText("Загрузка "  + "% " + loadedFiles);
				if (PersentLoaded == 100) {
					begin_timer.start();
					postload_timer.start();
				}
		}
		
		// обработчики таймеров
		
		public function preloadTimerHandler (e:TimerEvent):void {
			if (load.alpha < 1) {
			load.alpha += 0.05;
			}			
		}
		public function loadStatusComplete (e:TimerEvent):void {
			//!!!
			//postload_timer.start();
			//load.removeChild(status);
		}
		public function postloadTimerHandler (e:TimerEvent):void {
			
			
			if (load.alpha <= 0) {
				main.alpha += 0.07;
			} else {
				load.alpha -= 0.08;
			}
		}
		public function loadedFilesComplete(e:ProgressEvent):void{
			//loadedFiles += e.bytesTotal;
			//status.text = status.text + " " + String(loadedFiles);
			
		}
		
		// фичи 1-й кнопки
		public function button1over (e:MouseEvent):void{
			if (window == "main1") {
				main1.addChildAt(hover1, main1.getChildIndex(link1)+1);
			} 
			if (window == "main2") {
				main2.addChildAt(hover1, main2.getChildIndex(link1)+1);
			} 
			if (window == "main3") {
				main3.addChildAt(hover1, main3.getChildIndex(link1)+1);
			}
			if (window == "main4") {
				main4.addChildAt(hover1, main4.getChildIndex(link1)+1);
			} 
			if (window == "help") {
				help.addChildAt(hover1, help.getChildIndex(link1)+1);
			}
			if (window == "footman") {
				footman.addChildAt(hover1, footman.getChildIndex(link1)+1);
			}
			if (window == "team_sostav") {
				team_sostav.addChildAt(hover1, team_sostav.getChildIndex(link1)+1);
			}
			if (window == "team_stat") {
				team_stat.addChildAt(hover1, team_stat.getChildIndex(link1)+1);
			}
			if (window == "transfer") {
				transfer.addChildAt(hover1, transfer.getChildIndex(link1)+1);
			}
			
			
		}
		public function button1down (e:MouseEvent):void{
			if (window == "main1") {
				main1.addChildAt(click1, main1.getChildIndex(hover1)+1);
			} 
			if (window == "main2") {
				main2.addChildAt(click1, main2.getChildIndex(hover1)+1);
			} 
			if (window == "main3") {
				main3.addChildAt(click1, main3.getChildIndex(hover1)+1);
			}
			if (window == "main4") {
				main4.addChildAt(click1, main4.getChildIndex(hover1)+1);
			} 
			if (window == "help") {
				help.addChildAt(click1, help.getChildIndex(hover1)+1);
			}
			if (window == "footman") {
				footman.addChildAt(click1, footman.getChildIndex(hover1)+1);
			}
			if (window == "team_sostav") {
				team_sostav.addChildAt(click1, team_sostav.getChildIndex(hover1)+1);
			}
			if (window == "team_stat") {
				team_stat.addChildAt(click1, team_stat.getChildIndex(hover1)+1);
			}
			if (window == "transfer") {
				transfer.addChildAt(click1, transfer.getChildIndex(hover1)+1);
			}
		}
		public function button1out (e:MouseEvent):void{
			if (window == "main1") {
				main1.removeChild(hover1);
			} 
			if (window == "main2") {
				main2.removeChild(hover1);
			} 
			if (window == "main3") {
				main3.removeChild(hover1);
			}
			if (window == "main4") {
				main4.removeChild(hover1);
			} 
			if (window == "help") {
				help.removeChild(hover1);
			}
			if (window == "footman") {
				footman.removeChild(hover1);
			}
			if (window == "team_sostav") {
				team_sostav.removeChild(hover1);
			}
			if (window == "team_stat") {
				team_stat.removeChild(hover1);
			}
			if (window == "transfer") {
				transfer.removeChild(hover1);
			}
		}
		
		// фичи 2-й кнопки ############################
		public function button2over (e:MouseEvent):void{
			if (window == "main1") {
				main1.addChildAt(hover2, main1.getChildIndex(link2)+1); // link2
			} 
			if (window == "main2") {
				main2.addChildAt(hover2, main2.getChildIndex(link2)+1);
			} 
			if (window == "main3") {
				main3.addChildAt(hover2, main3.getChildIndex(link2)+1);
			}
			if (window == "main4") {
				main4.addChildAt(hover2, main4.getChildIndex(link2)+1);
			} 
			if (window == "help") {
				help.addChildAt(hover2, help.getChildIndex(link2)+1);
			}
			if (window == "footman") {
				footman.addChildAt(hover2, footman.getChildIndex(link2)+1);
			}
			if (window == "team_sostav") {
				team_sostav.addChildAt(hover2, team_sostav.getChildIndex(link2)+1);
			}
			if (window == "team_stat") {
				team_stat.addChildAt(hover2, team_stat.getChildIndex(link2)+1);
			}
			if (window == "transfer") {
				transfer.addChildAt(hover2, transfer.getChildIndex(link2)+1);
			}
			
		}
		public function button2down (e:MouseEvent):void{
			if (window == "main1") {
				main1.addChildAt(click2, main1.getChildIndex(hover2)+1);
			} 
			if (window == "main2") {
				main2.addChildAt(click2, main2.getChildIndex(hover2)+1);
			} 
			if (window == "main3") {
				main3.addChildAt(click2, main3.getChildIndex(hover2)+1);
			}
			if (window == "main4") {
				main4.addChildAt(click2, main4.getChildIndex(hover2)+1);
			} 
			if (window == "help") {
				help.addChildAt(click2, help.getChildIndex(hover2)+1);
			}
			if (window == "footman") {
				footman.addChildAt(click2, footman.getChildIndex(hover2)+1);
			}
			if (window == "team_sostav") {
				team_sostav.addChildAt(click2, team_sostav.getChildIndex(hover2)+1);
			}
			if (window == "team_stat") {
				team_stat.addChildAt(click2, team_stat.getChildIndex(hover2)+1);
			}
			if (window == "transfer") {
				transfer.addChildAt(click2, transfer.getChildIndex(hover2)+1);
			}
		}
		public function button2out (e:MouseEvent):void{
			if (window == "main1") {
				main1.removeChild(hover2);
			} 
			if (window == "main2") {
				main2.removeChild(hover2);
			} 
			if (window == "main3") {
				main3.removeChild(hover2);
			}
			if (window == "main4") {
				main4.removeChild(hover2);
			} 
			if (window == "help") {
				help.removeChild(hover2);
			}
			if (window == "footman") {
				footman.removeChild(hover2);
			}
			if (window == "team_sostav") {
				team_sostav.removeChild(hover2);
			}
			if (window == "team_stat") {
				team_stat.removeChild(hover2);
			}
			if (window == "transfer") {
				transfer.removeChild(hover2);
			}
		}
		
		// фичи 3-й кнопки ######################
		public function button3over (e:MouseEvent):void{
			if (window == "main1") {
				main1.addChildAt(hover3, main1.getChildIndex(link3)+1);
			} 
			if (window == "main2") {
				main2.addChildAt(hover3, main2.getChildIndex(link3)+1);
			} 
			if (window == "main3") {
				main3.addChildAt(hover3, main3.getChildIndex(link3)+1);
			}
			if (window == "main4") {
				main4.addChildAt(hover3, main4.getChildIndex(link3)+1);
			} 
			if (window == "help") {
				help.addChildAt(hover3, help.getChildIndex(link3)+1);
			}
			if (window == "footman") {
				footman.addChildAt(hover3, footman.getChildIndex(link3)+1);
			}
			if (window == "team_sostav") {
				team_sostav.addChildAt(hover3, team_sostav.getChildIndex(link3)+1);
			}
			if (window == "team_stat") {
				team_stat.addChildAt(hover3, team_stat.getChildIndex(link3)+1);
			}
			if (window == "transfer") {
				transfer.addChildAt(hover3, transfer.getChildIndex(link3)+1);
			}
			
		}
		public function button3down (e:MouseEvent):void{
			if (window == "main1") {
				main1.addChildAt(click3, main1.getChildIndex(hover3)+1);
			} 
			if (window == "main2") {
				main2.addChildAt(click3, main2.getChildIndex(hover3)+1);
			} 
			if (window == "main3") {
				main3.addChildAt(click3, main3.getChildIndex(hover3)+1);
			}
			if (window == "main4") {
				main4.addChildAt(click3, main4.getChildIndex(hover3)+1);
			} 
			if (window == "help") {
				help.addChildAt(click3, help.getChildIndex(hover3)+1);
			}
			if (window == "footman") {
				footman.addChildAt(click3, footman.getChildIndex(hover3)+1);
			}
			if (window == "team_sostav") {
				team_sostav.addChildAt(click3, team_sostav.getChildIndex(hover3)+1);
			}
			if (window == "team_stat") {
				team_stat.addChildAt(click3, team_stat.getChildIndex(hover3)+1);
			}
			if (window == "transfer") {
				transfer.addChildAt(click3, transfer.getChildIndex(hover3)+1);
			}
		}
		public function button3out (e:MouseEvent):void{
			if (window == "main1") {
				main1.removeChild(hover3);
			} 
			if (window == "main2") {
				main2.removeChild(hover3);
			} 
			if (window == "main3") {
				main3.removeChild(hover3);
			}
			if (window == "main4") {
				main4.removeChild(hover3);
			} 
			if (window == "help") {
				help.removeChild(hover3);
			}
			if (window == "footman") {
				footman.removeChild(hover3);
			}
			if (window == "team_sostav") {
				team_sostav.removeChild(hover3);
			}
			if (window == "team_stat") {
				team_stat.removeChild(hover3);
			}
			if (window == "transfer") {
				transfer.removeChild(hover3);
			}
		}
		
		// фичи 4-й кнопки #########################
		public function button4over (e:MouseEvent):void{
			if (window == "main1") {
				main1.addChildAt(hover4, main1.getChildIndex(link4)+1);
			} 
			if (window == "main2") {
				main2.addChildAt(hover4, main2.getChildIndex(link4)+1);
			} 
			if (window == "main3") {
				main3.addChildAt(hover4, main3.getChildIndex(link4)+1);
			}
			if (window == "main4") {
				main4.addChildAt(hover4, main4.getChildIndex(link4)+1);
			} 
			if (window == "help") {
				help.addChildAt(hover4, help.getChildIndex(link4)+1);
			}
			if (window == "footman") {
				footman.addChildAt(hover4, footman.getChildIndex(link4)+1);
			}
			if (window == "team_sostav") {
				team_sostav.addChildAt(hover4, team_sostav.getChildIndex(link4)+1);
			}
			if (window == "team_stat") {
				team_stat.addChildAt(hover4, team_stat.getChildIndex(link4)+1);
			}
			if (window == "transfer") {
				transfer.addChildAt(hover4, transfer.getChildIndex(link4)+1);
			}
			
		}
		public function button4down (e:MouseEvent):void{
			if (window == "main1") {
				main1.addChildAt(click4, main1.getChildIndex(hover4)+1);
			} 
			if (window == "main2") {
				main2.addChildAt(click4, main2.getChildIndex(hover4)+1);
			} 
			if (window == "main3") {
				main3.addChildAt(click4, main3.getChildIndex(hover4)+1);
			}
			if (window == "main4") {
				main4.addChildAt(click4, main4.getChildIndex(hover4)+1);
			} 
			if (window == "help") {
				help.addChildAt(click4, help.getChildIndex(hover4)+1);
			}
			if (window == "footman") {
				footman.addChildAt(click4, footman.getChildIndex(hover4)+1);
			}
			if (window == "team_sostav") {
				team_sostav.addChildAt(click4, team_sostav.getChildIndex(hover4)+1);
			}
			if (window == "team_stat") {
				team_stat.addChildAt(click4, team_stat.getChildIndex(hover4)+1);
			}
			if (window == "transfer") {
				transfer.addChildAt(click4, transfer.getChildIndex(hover4)+1);
			}
		}
		public function button4out (e:MouseEvent):void{
			if (window == "main1") {
				main1.removeChild(hover4);
			} 
			if (window == "main2") {
				main2.removeChild(hover4);
			} 
			if (window == "main3") {
				main3.removeChild(hover4);
			}
			if (window == "main4") {
				main4.removeChild(hover4);
			} 
			if (window == "help") {
				help.removeChild(hover4);
			}
			if (window == "footman") {
				footman.removeChild(hover4);
			}
			if (window == "team_sostav") {
				team_sostav.removeChild(hover4);
			}
			if (window == "team_stat") {
				team_stat.removeChild(hover4);
			}
			if (window == "transfer") {
				transfer.removeChild(hover4);
			}
		}
		
	// функция окончания загрузки профиля игрока для ЧР !!!
		public function woffLoadComplete(e:Event):void {
			
			var woff_answer:XML = new XML(e.target.data);
			
			if (String(woff_answer.profile.tournament_score.text()) !== "") {
				//main_txt2.setText("Любимый клуб: " + woff_answer.profile.club_title.text());
				
				main_txt55.setText("Название команды: " + woff_answer.profile.team_title.text());
				all_txt3.setText("EU: " + int(woff_answer.profile.budget.text())/10 + "");
				
				if ( String(woff_answer.profile.is_part_in_paid_tournament.text()) !== "0") {
					main_txt3.setText("Участие в платном турнире: участвует");
					} else {
					main_txt3.setText("Участие в платном турнире: не участвует");
					}
				
				main_txt4.setText("Кол-во очков: " + int(woff_answer.profile.tournament_score.text())/10);
				main_txt7.setText("Место: " + woff_answer.profile.place_in_tournament.text());
					
				if ( woff_answer.profile.is_expert.text() == 1) {
					//main.removeChild(main_txt6);
					select1sprite.addChild(star);
					main_txt6.setText("Эксперт");
				}
			
			all_txt4.setText("MP: " + woff_answer.profile.MP.text());
			transfers_left = int(woff_answer.profile.transfers_left.text());
			
			main2_txt17.setText("Остаток:		                        	     " + transfers_left);
			
			//current_tournament = 5;
			
			setMethod("checkTeam", 5);
			var woff_checkteam_loader:URLLoader = new URLLoader();
			woff_checkteam_loader.addEventListener(Event.COMPLETE, woffCheckTeamComplete);
			woff_checkteam_loader.load(woff_general_request);
			
			//welcomeMessage = new WelcomeMsg();
			//addChild(welcomeMessage);
					
			}  else {
				
				//current_tournament = 5;
				
				setMethod("registerNewPlayer", 5);
				
				var woff_RegNew_loader:URLLoader = new URLLoader();
				woff_RegNew_loader.load(woff_general_request);
				
				select1.removeEventListener(MouseEvent.CLICK, select1listener);
				select1.addEventListener(MouseEvent.CLICK, button2event2);
				
					welcomeMessage = new WelcomeMsg();
					addChild(welcomeMessage);
					welcomeMessage.showWelcome();
			}
			 
		}
		
		// функция окончания загрузки профиля игрока для чемпионата англии !! 
		public function woffLoadEnglandComplete(e:Event):void {
			
			var woff_answer:XML = new XML(e.target.data);
			
			if (String(woff_answer.profile.MP.text()) !== "") {
				//main_txt32.setText("Любимый клуб: " + woff_answer.profile.club_title.text());
				
				main_txt355.setText("Название команды: " + woff_answer.profile.team_title.text());
				all_txt3.setText("EU: " + int(woff_answer.profile.budget.text())/10 + "");
				
				if ( String(woff_answer.profile.is_part_in_paid_tournament.text()) !== "0") {
					main_txt33.setText("Участие в платном турнире: участвует");
					} else {
					main_txt33.setText("Участие в платном турнире: не участвует");
					}
				
				main_txt34.setText("Кол-во очков: " + int(woff_answer.profile.tournament_score.text())/10);
				main_txt37.setText("Место: " + woff_answer.profile.place_in_tournament.text());
				
				if ( woff_answer.profile.is_expert.text() == 1) {
					//main.removeChild(main_txt6);
					select2sprite.addChild(star3);
					main_txt36.setText("Эксперт");
				}
			
			all_txt4.setText("MP: " + woff_answer.profile.MP.text());
			transfers_left2 = int(woff_answer.profile.transfers_left.text());
			main2_txt17.setText("Остаток:		                        	     " + transfers_left);
			
			//woff_general_request.url = woff_api1;
			//current_tournament = 6;
			
			setMethod("checkTeam", 6);
			var woff_checkteam_loader:URLLoader = new URLLoader();
			woff_checkteam_loader.addEventListener(Event.COMPLETE, woffCheckTeam2Complete);
			woff_checkteam_loader.load(woff_general_request);
			
			
		
			}  else {
				//current_tournament = 6;
				setMethod("registerNewPlayer", 6);
				
				var woff_RegNew_loader:URLLoader = new URLLoader();
				woff_RegNew_loader.load(woff_general_request);
				
				select2_.removeEventListener(MouseEvent.CLICK, select2listener);
				select2_.addEventListener(MouseEvent.CLICK, button2event4);
				
			}
			
		}
		
		// функция окончания загрузки профиля игрока для чемпионата лиги чемпионов
		public function woffLoadChampComplete(e:Event):void {
			
			var woff_answer:XML = new XML(e.target.data);
			
			if (String(woff_answer.profile.MP.text()) !== "") {
				//main_txt22.setText("Любимый клуб: " + woff_answer.profile.club_title.text());
				
				main_txt255.setText("Название команды: " + woff_answer.profile.team_title.text());
				all_txt3.setText("EU: " + int(woff_answer.profile.budget.text())/10 + "");
				
				if ( String(woff_answer.profile.is_part_in_paid_tournament.text()) !== "0") {
					main_txt23.setText("Участие в платном турнире: участвует");
					} else {
					main_txt23.setText("Участие в платном турнире: не участвует");
					}
				
				main_txt24.setText("Кол-во очков: " + int(woff_answer.profile.tournament_score.text())/10);
				main_txt27.setText("Место: " + woff_answer.profile.place_in_tournament.text());
				
				if ( woff_answer.profile.is_expert.text() == 1) {
					select4sprite.addChild(star2);
					main_txt26.setText("Эксперт");
				}
			
			all_txt4.setText("MP: " + woff_answer.profile.MP.text());
			transfers_left4 = int(woff_answer.profile.transfers_left.text());
			main2_txt17.setText("Остаток:		                        	     " + transfers_left);
			
			//current_tournament = 7;
			
			setMethod("checkTeam", 7);
			var woff_checkteam_loader:URLLoader = new URLLoader();
			woff_checkteam_loader.addEventListener(Event.COMPLETE, woffCheckTeam4Complete);
			woff_checkteam_loader.load(woff_general_request);
			
			
			}  else {
			
				//current_tournament = 7;
			
				setMethod("registerNewPlayer", 7);
				
				var woff_RegNew_loader:URLLoader = new URLLoader();
				woff_RegNew_loader.load(woff_general_request);
				
				select4.removeEventListener(MouseEvent.CLICK, select4listener);
				select4.addEventListener(MouseEvent.CLICK, button2event4_);
				
				
			}
			
		}
		
		
		// функция окончания загрузки профиля игрока для чемпионата Италии !! 
		public function woffLoadItalyComplete(e:Event):void {
			
			var woff_answer:XML = new XML(e.target.data);
			
			if (String(woff_answer.profile.MP.text()) !== "") {
				//main_txt52.setText("Любимый клуб: " + woff_answer.profile.club_title.text());
				
				main_txt555.setText("Название команды: " + woff_answer.profile.team_title.text());
				all_txt3.setText("EU: " + int(woff_answer.profile.budget.text())/10 + "");
				
				if ( String(woff_answer.profile.is_part_in_paid_tournament.text()) !== "0") {
					main_txt53.setText("Участие в платном турнире: участвует");
					} else {
					main_txt53.setText("Участие в платном турнире: не участвует");
					}
				
				main_txt54.setText("Кол-во очков: " + int(woff_answer.profile.tournament_score.text())/10);
				main_txt57.setText("Место: " + woff_answer.profile.place_in_tournament.text());
				
				if ( woff_answer.profile.is_expert.text() == 1) {
					//main.removeChild(main_txt6);
					select3sprite.addChild(star5);
					main_txt56.setText("Эксперт");
				}
			
			all_txt4.setText("MP: " + woff_answer.profile.MP.text());
			transfers_left2 = int(woff_answer.profile.transfers_left.text());
			//transfers_do = 30 - transfers_left;
			//main2_txt16.setText("Проведённых трансферов:           	     " + transfers_do);
			main2_txt17.setText("Остаток:		                        	     " + transfers_left);
			
			//woff_general_request.url = woff_api3;
			//current_tournament = 2;
			
			setMethod("checkTeam");
			var woff_checkteam_loader:URLLoader = new URLLoader();
			woff_checkteam_loader.addEventListener(Event.COMPLETE, woffCheckTeam3Complete);
			woff_checkteam_loader.load(woff_general_request);
			
			
		
			}  else {
				//current_tournament = 2;
				//woff_general_request.url = woff_api3;
				setMethod("registerNewPlayer");
				
				var woff_RegNew_loader:URLLoader = new URLLoader();
				woff_RegNew_loader.load(woff_general_request);
				
				select3.removeEventListener(MouseEvent.CLICK, select3listener);
				select3.addEventListener(MouseEvent.CLICK, button2event3);
				
				
			}
			
		}
		
		
		// функция окончания загрузки профиля игрока для чемпионата Европы !!     
		public function woffLoadSpainComplete(e:Event):void {
			
			var woff_answer:XML = new XML(e.target.data);
			
			if (String(woff_answer.profile.MP.text()) !== "") {
				//main_txt422.setText("Любимый клуб: " + woff_answer.profile.club_title.text());
				
				main_txt4255.setText("Название команды: " + woff_answer.profile.team_title.text());
				all_txt3.setText("EU: " + int(woff_answer.profile.budget.text())/10 + "");
				
				if ( String(woff_answer.profile.is_part_in_paid_tournament.text()) !== "0") {
					main_txt423.setText("Участие в платном турнире: участвует");
					} else {
					main_txt423.setText("Участие в платном турнире: не участвует");
					}
				
				main_txt424.setText("Кол-во очков: " + int(woff_answer.profile.tournament_score.text())/10);
				main_txt47.setText("Место: " + woff_answer.profile.place_in_tournament.text());
				
				if ( woff_answer.profile.is_expert.text() == 1) {
					//main.removeChild(main_txt6);
					select5sprite.addChild(star4);
					main_txt426.setText("Эксперт");
				}
			
			all_txt4.setText("MP: " + woff_answer.profile.MP.text());
			transfers_left5 = int(woff_answer.profile.transfers_left.text());
			main2_txt17.setText("Остаток:		                        	     " + transfers_left5);
			
			//current_tournament = 1;
			
			setMethod("checkTeam", 3);
			var woff_checkteam_loader:URLLoader = new URLLoader();
			woff_checkteam_loader.addEventListener(Event.COMPLETE, woffCheckTeam5Complete);
			woff_checkteam_loader.load(woff_general_request);
			
			
		
			}  else {
				//current_tournament = 3;
				
				setMethod("registerNewPlayer", 3);
				
				var woff_RegNew_loader:URLLoader = new URLLoader();
				woff_RegNew_loader.load(woff_general_request);
				
				select5.removeEventListener(MouseEvent.CLICK, select5listener);
				select5.addEventListener(MouseEvent.CLICK, button2event5);
				
				
			}
			
		}
		
		
		// функция  загрузки профиля игрока для всего !!
		public function woffProfileLoadComplete(e:Event):void {
			
			var woff_answer:XML = new XML(e.target.data);
			
			//if (String(woff_answer.profile.score.text()) !== "") {
				//main_txt22.setText("Любимый клуб: " + woff_answer.profile.club_title.text());
				if (woff_answer.profile.club_title.text() == "no_fav_club") {
					main1_txt24.setText(woff_answer.profile.club_title.text());
					
					} else {
						main1_txt24.setText(woff_answer.profile.club_title.text());
						//select.removeEventListener(MouseEvent.CLICK, dropdowm_menu);
					}
				//main_txt255.setText("Название команды: " + woff_answer.profile.team_title.text());
				all_txt3.setText("EU: " + int(woff_answer.profile.budget.text())/10 + "");
				main2_txt12.setText("Остаток бюджета:			" + int(woff_answer.profile.budget.text())/10);
					//budget_left = int(woff_answer.profile.budget.text());
				if (String(woff_answer.profile.team_title.text()) !== "") {
					main1_txt8.setText(woff_answer.profile.team_title.text());
					main1_txt8.removeEventListener(KeyboardEvent.KEY_DOWN, textInputEvent);
					} else {
					main1_txt8.setText("no team title");
					}
			
			
			all_txt4.setText("MP: " + woff_answer.profile.MP.text());
			transfers_left = int(woff_answer.profile.transfers_left.text());
			transfers_left2 = int(woff_answer.profile.transfers_left.text());
			main2_txt17.setText("Остаток:		                        	     " + transfers_left);
			
			is_budget_bought = int(woff_answer.profile.is_budget_bought.text());
			is_transfers_bought = int(woff_answer.profile.is_transfers_bought.text());
			
			
		}
		
		// список победителей
		public function woffLeadersFinalLoadComplete(e:Event):void {
			var woff_answer:XML = new XML(e.target.data);
			
			var leaders_final_array:Array = new Array();
			
			for (var i:int=0; i<10; i++) {
				leaders_final_array.push({id_vk:woff_answer.footballer[i].id_vk.text(), 
					score:woff_answer.footballer[i].score.text(),
					team_title:woff_answer.footballer[i].team_title.text()});
			}
			
			winners_list.setScores(leaders_final_array);
		}
		
		// список лидеров
		public function woffLeadersLoadComplete(e:Event):void {
			
			var woff_answer:XML = new XML(e.target.data);
			
		
		liders_list.removeChild(user_photo);
		
		var uids_array:Array = new Array();
		leaders_list_array = new Array();
		
		for (var i:int=0; i<woff_answer.footballer.length(); i++) {
				
				var freq:int = new int(52*i);
				
			
			if (int(woff_answer.footballer[i].id_vk.text()) == 64418) 	{
				uids_array.push(2);	
			} else {
				if (int(woff_answer.footballer[i].id_vk.text()) == 26691057) 	{
				uids_array.push(3);	
			} else {
				uids_array.push(woff_answer.footballer[i].id_vk.text());
			}
			}
			
			leaders_list_array.push({id_vk:woff_answer.footballer[i].id_vk.text(), 
								score:woff_answer.footballer[i].score.text(),
								team_title:woff_answer.footballer[i].team_title.text()});
			
			
			if (String(woff_answer.footballer[i].team_title.text()) == "") {
				nazvanie[i].setText(" -- no name --");
			} else {
				nazvanie[i].setText(woff_answer.footballer[i].team_title.text());
			}
			
			points_[i].setText(int(woff_answer.footballer[i].score.text())/10);
			
			/*
			if (champ=="euro") {
				sostav[i].x = -20;
				} else {	
				sostav[i].x = 42;
				sostav[i].setId(woff_answer.footballer[i].id_vk.text());
				}
			*/
			
			}
			
			user_photo = new vk_photo(woff_uid, uids_array, woff_api_id);
			user_photo.x = 0;
			user_photo.y = 5;
			liders_list.addChild(user_photo);
			
			for (var i:int=woff_answer.footballer.length(); i<100; i++) {
			nazvanie[i].setText("");
			points_[i].setText("0");
			sostav[i].setId(0);
				}
		}
		
		// список лидеров в лигах
		public function woffLeagueMembersLoadComplete(e:Event):void {
			
			var woff_answer:XML = new XML(e.target.data);
			
			liders_list.removeChild(user_photo);
			//user_photo.clear();
			
		var uids_array:Array = new Array();
		
		for (var i:int=0; i<100; i++) {
			nazvanie[i].setText("----");
			points_[i].setText("0");
			sostav[i].setId(0);
			}
			
		main3_txt2.setText("Место: --");
		//main3_txt4.setText("Очков: "+ woff_answer.league_member[i].score.text()/10);
		
		for (var i:int=0; i<woff_answer.league_member.length() && i<100; i++) {
				
				var freq:int = new int(52*i);
			if (woff_answer.league_member[i].id_vk.text() !== "0")
				uids_array.push(woff_answer.league_member[i].id_vk.text());
			
			if (String(woff_answer.league_member[i].team_title.text()) == "") {
				nazvanie[i].setText(" -- no name --");
			} else {
				nazvanie[i].setText(woff_answer.league_member[i].team_title.text());
			}
			
			points_[i].setText(int(woff_answer.league_member[i].score.text())/10);
			
			/*
			if (champ=="euro") {
				sostav[i].x = -20;
			} else {
			*/
				sostav[i].x = 42;
				sostav[i].setId(woff_answer.league_member[i].id_vk.text());
			//}
			
			if (woff_answer.league_member[i].id_vk.text() == String(woff_uid)) {
				main3_txt2.setText("Место: "+ String(i+1));
				main3_txt4.setText("Очков: "+ woff_answer.league_member[i].score.text()/10);
				}
		
			}
			//user_photo.clear();
			user_photo = new vk_photo(woff_uid, uids_array, woff_api_id);
			user_photo.x = 0;
			user_photo.y = 5;
			liders_list.addChild(user_photo);
			
		}
		
		// --- универсальная функция загрузки списка команды ---
		
		public function woffTeamLoadComplete(e:Event):void {
			//stage.removeChild(loading_balls);
			var woff_answer:XML = new XML(e.target.data);
			
					var zope0:int = 1;
					zope1 = 0;
					zope2 = 0;
					zope3 = 0;
					
					var zope1_:int = 2;
					var zope2_:int = 6;
					var zope3_:int = 10;
					
					var zamena_trig1:int = 0;
					var zamena_trig2:int = 0;
					var zamena_trig3:int = 0;
					
			// --- обнуление списка --- 	
			for (var zope___:int=1; zope___< 16; zope___++) {
					footman_array[zope___].setText("null");
					footman_array[zope___].setId(0);
					footman_club[zope___].setText("club null");
					footman_name_txt[zope___].setText("ooo");
					footman_pic[zope___].setRole("4");
					if (footman_form_array[zope___].clubId != 0)
						footman_form_array[zope___].setClub(0);
					footman_form_array[zope___].champ = champ;
					footman_replace[zope___].setId(0);
					footman_replace[zope___].filters = [myGlow];
					footman_scores[zope___].setText("0");
					team_role[zope___].setText("--");
					team_stat_array[zope___].setText("---");
					team_eu_cost[zope___].setText("-");
				}
			captain.x = 4;
			captain.y = 10;
									 
			// -- парсинг списка команды ---	 
			total_team_cost = 0;
			//all_txt3.setText(woff_answer.footballer.length());
			
			if (int(woff_answer.footballer.length()) == 15) {
			
			for (var zope:int=1; zope <= woff_answer.footballer.length(); zope++) {
					total_team_cost += int(woff_answer.footballer[zope-1].cost.text());
					team_eu_cost[zope].setText(int(woff_answer.footballer[zope-1].cost.text())/10 +"");
					team_stat_array[zope].setText(String(woff_answer.footballer[zope-1].name.text()));
					team_stat_array[zope].setId(woff_answer.footballer[zope-1].id.text());
					
					
					//footman_pic[zope].setRole(int(woff_answer.footballer[zope-1].role.text()));
					
					/*
					if (woff_answer.footballer[zope-1].role.text() == "0") {
						team_role[zope].setText("ВР");
						} else {
						if (woff_answer.footballer[zope-1].role.text() == "1") {
							team_role[zope].setText("ЗАЩ");
							} else {
							if (woff_answer.footballer[zope-1].role.text() == "2") {
								team_role[zope].setText("ПЗ");
								} else {
								team_role[zope].setText("НАП");
								}
							}
						}
						 * 
						 */
					
					
					// вычленение игроков на поле
					if (woff_answer.footballer[zope-1].status == "0" || woff_answer.footballer[zope-1].status == "1") {
					
						footman_array[zope0].setText(String(woff_answer.footballer[zope-1].name.text()));
						footman_array[zope0].setId(woff_answer.footballer[zope-1].id.text());
						team_fb_cost[zope0] = woff_answer.footballer[zope-1].cost.text();
						footman_club[zope0].setText(String(woff_answer.footballer[zope-1].club_title.text()));
					
						if (String(woff_answer.footballer[zope-1].role.text()) == "0") {
							team_role[zope].setText("ВР");
							footman_pic[zope0].setRole(int(woff_answer.footballer[zope-1].role.text()));
							footman_name_txt[zope0].setText(String(woff_answer.footballer[zope-1].name.text()));
							footman_name_txt[zope0].setId(woff_answer.footballer[zope-1].id.text());
							footman_replace[zope0].filters = [];
							footman_replace[zope0].setId(woff_answer.footballer[zope-1].id.text());
							footman_down[zope0].setId(woff_answer.footballer[zope-1].id.text());
							footman_scores[zope0].setText(woff_answer.footballer[zope-1].tour_score.text());
							footman_form_array[zope0].setId(woff_answer.footballer[zope-1].id.text());
							footman_form_array[zope0].setClub(woff_answer.footballer[zope-1].id_club.text());
							footman_form_array[zope0].addEventListener(MouseEvent.CLICK, captainEvent);
							if (woff_answer.footballer[zope-1].status == "1") {
								captain.x = footman_form_array[zope0].x+10;
								captain.y = footman_form_array[zope0].y+20;
								footman_list.addChild(captain);
								current_captain_id = int(woff_answer.footballer[zope-1].id.text());
								}
							zope0++;
							}
						
						// -- вычленение полузащитников
						if (String(woff_answer.footballer[zope-1].role.text()) == "1") {
							team_role[zope].setText("ЗАЩ");
							footman_pic[zope0].setRole(int(woff_answer.footballer[zope-1].role.text()));
							footman_name_txt[zope0].setText(String(woff_answer.footballer[zope-1].name.text()));
							footman_name_txt[zope0].setId(woff_answer.footballer[zope-1].id.text());
							footman_replace[zope0].filters = [];
							footman_replace[zope0].setId(woff_answer.footballer[zope-1].id.text());
							footman_replace[zope0].setRole(woff_answer.footballer[zope-1].role.text());
							footman_down[zope0].setId(woff_answer.footballer[zope-1].id.text());
							footman_scores[zope0].setText(woff_answer.footballer[zope-1].tour_score.text());
							footman_form_array[zope0].setId(woff_answer.footballer[zope-1].id.text());
							footman_form_array[zope0].setClub(woff_answer.footballer[zope-1].id_club.text());
							if (woff_answer.footballer[zope-1].status == "1") {
								captain.x = footman_form_array[zope0].x+10;
								captain.y = footman_form_array[zope0].y+20;
								footman_list.addChild(captain);
								current_captain_id = int(woff_answer.footballer[zope-1].id.text());
							}
							zope0++;
							zope1++;
						}
						
						if (String(woff_answer.footballer[zope-1].role.text()) == "2") {
							team_role[zope].setText("ПЗ");
							footman_pic[zope0].setRole(int(woff_answer.footballer[zope-1].role.text()));
							footman_name_txt[zope0].setText(String(woff_answer.footballer[zope-1].name.text()));
							footman_name_txt[zope0].setId(woff_answer.footballer[zope-1].id.text());
							footman_replace[zope0].filters = [];
							footman_replace[zope0].setId(woff_answer.footballer[zope-1].id.text());
							footman_replace[zope0].setRole(woff_answer.footballer[zope-1].role.text());
							footman_down[zope0].setId(woff_answer.footballer[zope-1].id.text());
							footman_scores[zope0].setText(woff_answer.footballer[zope-1].tour_score.text());
							footman_form_array[zope0].setId(woff_answer.footballer[zope-1].id.text());
							footman_form_array[zope0].setClub(woff_answer.footballer[zope-1].id_club.text());
							if (woff_answer.footballer[zope-1].status == "1") {
								captain.x = footman_form_array[zope0].x+10;
								captain.y = footman_form_array[zope0].y+20;
								footman_list.addChild(captain);
								current_captain_id = int(woff_answer.footballer[zope-1].id.text());
							}
							zope0++;
							zope2++;
						}
					
						if (String(woff_answer.footballer[zope-1].role.text()) == "3") {
							team_role[zope].setText("НАП");
							footman_pic[zope0].setRole(int(woff_answer.footballer[zope-1].role.text()));
							footman_name_txt[zope0].setText(String(woff_answer.footballer[zope-1].name.text()));
							footman_name_txt[zope0].setId(woff_answer.footballer[zope-1].id.text());
							footman_replace[zope0].filters = [];
							footman_replace[zope0].setId(woff_answer.footballer[zope-1].id.text());
							footman_replace[zope0].setRole(woff_answer.footballer[zope-1].role.text());
							footman_down[zope0].setId(woff_answer.footballer[zope-1].id.text());
							footman_scores[zope0].setText(woff_answer.footballer[zope-1].tour_score.text());
							footman_form_array[zope0].setId(woff_answer.footballer[zope-1].id.text());
							footman_form_array[zope0].setClub(woff_answer.footballer[zope-1].id_club.text());
							if (woff_answer.footballer[zope-1].status == "1") {
								captain.x = footman_form_array[zope0].x+10;
								captain.y = footman_form_array[zope0].y+20;
								footman_list.addChild(captain);
								current_captain_id = int(woff_answer.footballer[zope-1].id.text());
							}
							zope0++;
							zope3++;
						}
					}
					
					// вычленение замены вратаря
					if (woff_answer.footballer[zope-1].status == "2") {
						team_role[zope].setText("ВР");
						footman_name_txt[12].setText(String(woff_answer.footballer[zope-1].name.text()));
						footman_name_txt[12].setId(woff_answer.footballer[zope-1].id.text());
						footman_replace[12].filters = [];
						footman_replace[12].setId(woff_answer.footballer[zope-1].id.text());
						footman_up[12].setId(woff_answer.footballer[zope-1].id.text());
						footman_up[12].setStatus(2);
						footman_scores[12].setText(woff_answer.footballer[zope-1].tour_score.text());
						footman_form_array[12].setId(woff_answer.footballer[zope-1].id.text());
						footman_form_array[12].setClub(woff_answer.footballer[zope-1].id_club.text());
						team_fb_cost[12] = woff_answer.footballer[zope-1].cost.text();
					}
					// вычленение замены 1
					if (woff_answer.footballer[zope-1].status == "3") {
						team_role[zope].setText("ЗАМ");
						footman_name_txt[13].setText(String(woff_answer.footballer[zope-1].name.text()));
						footman_name_txt[13].setId(woff_answer.footballer[zope-1].id.text());
						footman_replace[13].filters = [];
						footman_replace[13].setId(woff_answer.footballer[zope-1].id.text());
						footman_replace[13].setRole(woff_answer.footballer[zope-1].role.text());
						footman_up[13].setId(woff_answer.footballer[zope-1].id.text());
						footman_up[13].setStatus(3);
						footman_up[13].setRole(woff_answer.footballer[zope-1].role.text());
						footman_scores[13].setText(woff_answer.footballer[zope-1].tour_score.text());
						footman_form_array[13].setId(woff_answer.footballer[zope-1].id.text());
						footman_form_array[13].setClub(woff_answer.footballer[zope-1].id_club.text());
						team_fb_cost[13] = woff_answer.footballer[zope-1].cost.text();
						
					}
					// вычленение замены 2
					if (woff_answer.footballer[zope-1].status == "4") {
						team_role[zope].setText("ЗАМ");
						footman_name_txt[14].setText(String(woff_answer.footballer[zope-1].name.text()));
						footman_name_txt[14].setId(woff_answer.footballer[zope-1].id.text());
						footman_replace[14].filters = [];
						footman_replace[14].setId(woff_answer.footballer[zope-1].id.text());
						footman_replace[14].setRole(woff_answer.footballer[zope-1].role.text());
						footman_up[14].setId(woff_answer.footballer[zope-1].id.text());
						footman_up[14].setStatus(4);
						footman_up[14].setRole(woff_answer.footballer[zope-1].role.text());
						footman_scores[14].setText(woff_answer.footballer[zope-1].tour_score.text());
						footman_form_array[14].setId(woff_answer.footballer[zope-1].id.text());
						footman_form_array[14].setClub(woff_answer.footballer[zope-1].id_club.text());
						team_fb_cost[14] = woff_answer.footballer[zope-1].cost.text();
					}
					// вычленение замены 3
					if (woff_answer.footballer[zope-1].status == "5") {
						team_role[zope].setText("ЗАМ");
						footman_name_txt[15].setText(String(woff_answer.footballer[zope-1].name.text()));
						footman_name_txt[15].setId(woff_answer.footballer[zope-1].id.text());
						footman_replace[15].filters = [];
						footman_replace[15].setId(woff_answer.footballer[zope-1].id.text());
						footman_replace[15].setRole(woff_answer.footballer[zope-1].role.text());
						footman_up[15].setId(woff_answer.footballer[zope-1].id.text());
						footman_up[15].setStatus(5);
						footman_up[15].setRole(woff_answer.footballer[zope-1].role.text());
						footman_scores[15].setText(woff_answer.footballer[zope-1].tour_score.text());
						footman_form_array[15].setId(woff_answer.footballer[zope-1].id.text());
						footman_form_array[15].setClub(woff_answer.footballer[zope-1].id_club.text());
						team_fb_cost[15] = woff_answer.footballer[zope-1].cost.text();
					}
				}
				
				// --- расстановка по полю ---
				for (var num:int=0; num < zope1; num++) {
					footman_name_form[num+2].x = 100;
					footman_name_form[num+2].y = (250/zope1)*num+30;
					footman_name_txt[num+2].x = 105;
					footman_name_txt[num+2].y = (250/zope1)*num+33;
					footman_scores[num+2].x = 182;
					footman_scores[num+2].y = (250/zope1)*num+33;
					footman_down[num+2].x = 150;
					footman_down[num+2].y = (250/zope1)*num+15;
					footman_replace[num+2].x = 170;
					footman_replace[num+2].y = (250/zope1)*num+15;
					footman_form_array[num+2].x = 100;
					footman_form_array[num+2].y = (250/zope1)*num;
				}
				for (var num:int=0; num < zope2; num++) {
					footman_name_form[zope1+num+2].x = 200;
					footman_name_form[zope1+num+2].y = (250/zope2)*num+30;
					footman_name_txt[zope1+num+2].x = 205;
					footman_name_txt[zope1+num+2].y = (250/zope2)*num+33;
					footman_scores[zope1+num+2].x = 280;
					footman_scores[zope1+num+2].y = (250/zope2)*num+33;
					footman_down[zope1+num+2].x = 250;
					footman_down[zope1+num+2].y = (250/zope2)*num+15;
					footman_replace[zope1+num+2].x = 270;
					footman_replace[zope1+num+2].y = (250/zope2)*num+15;
					footman_form_array[zope1+2+num].x = 200;
					footman_form_array[zope1+2+num].y = (250/zope2)*num;
				}
				for (var num:int=0; num < zope3; num++) {
					footman_name_form[zope1+zope2+num+2].x = 300;
					footman_name_form[zope1+zope2+num+2].y = (150/zope3)*num+90;
					footman_name_txt[zope1+zope2+num+2].x = 305;
					footman_name_txt[zope1+zope2+num+2].y = (150/zope3)*num+93;
					footman_scores[zope1+zope2+num+2].x = 382;
					footman_scores[zope1+zope2+num+2].y = (150/zope3)*num+93;
					footman_down[zope1+zope2+num+2].x = 350;
					footman_down[zope1+zope2+num+2].y = (150/zope3)*num+75;
					footman_replace[zope1+zope2+num+2].x = 370;
					footman_replace[zope1+zope2+num+2].y = (150/zope3)*num+75;
					footman_form_array[zope1+zope2+2+num].x = 300;
					footman_form_array[zope1+zope2+2+num].y = (150/zope3)*num+60;
				}
				
			} else {
				
				for (var num:int=1; num< 16; num++) {
					main2.addChild(down_arrows[num]);
				}
				
				for (var zope:int=1; zope <= woff_answer.footballer.length(); zope++) {
					total_team_cost += int(woff_answer.footballer[zope-1].cost.text());
					team_eu_cost[zope].setText(int(woff_answer.footballer[zope-1].cost.text())/10 +"");
					team_stat_array[zope].setText(String(woff_answer.footballer[zope-1].name.text()));
					team_stat_array[zope].setId(woff_answer.footballer[zope-1].id.text());
					
					//footman_pic[zope].setRole(int(woff_answer.footballer[zope-1].role.text()));
					
					/*
					if (woff_answer.footballer[zope-1].role.text() == "0") {
						team_role[zope].setText("ВР");
						} else {
						if (woff_answer.footballer[zope-1].role.text() == "1") {
							team_role[zope].setText("ЗАЩ");
							} else {
							if (woff_answer.footballer[zope-1].role.text() == "2") {
								team_role[zope].setText("ПЗ");
								} else {
								team_role[zope].setText("НАП");
								}
							}
						}
						 * 
						 */
					
					
					// вычленение игроков на поле
					if (woff_answer.footballer[zope-1].status == "0" || woff_answer.footballer[zope-1].status == "1") {
					
						footman_array[zope0].setText(String(woff_answer.footballer[zope-1].name.text()));
						footman_array[zope0].setId(woff_answer.footballer[zope-1].id.text());
						footman_club[zope0].setText(String(woff_answer.footballer[zope-1].club_title.text()));
					
						if (String(woff_answer.footballer[zope-1].role.text()) == "0") {
							team_role[zope].setText("ВР");
							footman_pic[zope0].setRole(int(woff_answer.footballer[zope-1].role.text()));
							footman_name_txt[zope0].setText(String(woff_answer.footballer[zope-1].name.text()));
							footman_name_txt[zope0].setId(woff_answer.footballer[zope-1].id.text());
							footman_replace[zope0].filters = [];
							footman_replace[zope0].setId(woff_answer.footballer[zope-1].id.text());
							footman_down[zope0].setId(woff_answer.footballer[zope-1].id.text());
							footman_scores[zope0].setText(woff_answer.footballer[zope-1].tour_score.text());
							footman_form_array[zope0].setId(woff_answer.footballer[zope-1].id.text());
							footman_form_array[zope0].setClub(woff_answer.footballer[zope-1].id_club.text());
							footman_form_array[zope0].addEventListener(MouseEvent.CLICK, captainEvent);
							if (woff_answer.footballer[zope-1].status == "1") {
								captain.x = footman_form_array[zope0].x+10;
								captain.y = footman_form_array[zope0].y+20;
								footman_list.addChild(captain);
								current_captain_id = int(woff_answer.footballer[zope-1].id.text());
								}
							zope0++;
							main2.removeChild(down_arrows[1]);
							}
						
						// -- вычленение полузащитников
						if (String(woff_answer.footballer[zope-1].role.text()) == "1") {
							team_role[zope].setText("ЗАЩ");
							footman_pic[zope0].setRole(int(woff_answer.footballer[zope-1].role.text()));
							footman_name_txt[zope1_].setText(String(woff_answer.footballer[zope-1].name.text()));
							footman_name_txt[zope1_].setId(woff_answer.footballer[zope-1].id.text());
							footman_replace[zope1_].filters = [];
							footman_replace[zope1_].setId(woff_answer.footballer[zope-1].id.text());
							footman_replace[zope1_].setRole(woff_answer.footballer[zope-1].role.text());
							footman_down[zope1_].setId(woff_answer.footballer[zope-1].id.text());
							footman_scores[zope1_].setText(woff_answer.footballer[zope-1].tour_score.text());
							footman_form_array[zope1_].setId(woff_answer.footballer[zope-1].id.text());
							footman_form_array[zope1_].setClub(woff_answer.footballer[zope-1].id_club.text());
							if (woff_answer.footballer[zope-1].status == "1") {
								captain.x = footman_form_array[zope1_].x+10;
								captain.y = footman_form_array[zope1_].y+20;
								footman_list.addChild(captain);
								current_captain_id = int(woff_answer.footballer[zope-1].id.text());
							}
							main2.removeChild(down_arrows[zope1_]);
							
							zope0++;
							zope1++;
							zope1_++;
							
							
							//if (zope1 == 5)
							//	zope2_++;
							if ((zope1 + zamena_trig1) == 5) 								
								zope2_ = 2 + zope1;
							if (zamena_trig1 > 1)
								zope2_ = 2 + zope1 +(5 - zamena_trig1 - zope1);
							
							
						}
						
						if (String(woff_answer.footballer[zope-1].role.text()) == "2") {
							team_role[zope].setText("ПЗ");
							footman_pic[zope0].setRole(int(woff_answer.footballer[zope-1].role.text()));
							footman_name_txt[zope2_].setText(String(woff_answer.footballer[zope-1].name.text()));
							footman_name_txt[zope2_].setId(woff_answer.footballer[zope-1].id.text());
							footman_replace[zope2_].filters = [];
							footman_replace[zope2_].setId(woff_answer.footballer[zope-1].id.text());
							footman_replace[zope2_].setRole(woff_answer.footballer[zope-1].role.text());
							footman_down[zope2_].setId(woff_answer.footballer[zope-1].id.text());
							footman_scores[zope2_].setText(woff_answer.footballer[zope-1].tour_score.text());
							footman_form_array[zope2_].setId(woff_answer.footballer[zope-1].id.text());
							footman_form_array[zope2_].setClub(woff_answer.footballer[zope-1].id_club.text());
							if (woff_answer.footballer[zope-1].status == "1") {
								captain.x = footman_form_array[zope2_].x+10;
								captain.y = footman_form_array[zope2_].y+20;
								footman_list.addChild(captain);
								current_captain_id = int(woff_answer.footballer[zope-1].id.text());
							}
							main2.removeChild(down_arrows[zope2_]);
							
							zope0++;
							zope2++;
							zope2_++;
							
							//if (zope2 == 4)
							if (zope2 == 5)
								zope3_ = zope2_;
							//if ((zope2 + zamena_trig2) == 5)
							//	zope3_ = 2 + zope1 + zope2;
								
						}
					
						if (String(woff_answer.footballer[zope-1].role.text()) == "3") {
							team_role[zope].setText("НАП");
							footman_pic[zope0].setRole(int(woff_answer.footballer[zope-1].role.text()));
							footman_name_txt[zope3_].setText(String(woff_answer.footballer[zope-1].name.text()));
							footman_name_txt[zope3_].setId(woff_answer.footballer[zope-1].id.text());
							footman_replace[zope3_].filters = [];
							footman_replace[zope3_].setId(woff_answer.footballer[zope-1].id.text());
							footman_replace[zope3_].setRole(woff_answer.footballer[zope-1].role.text());
							footman_down[zope3_].setId(woff_answer.footballer[zope-1].id.text());
							footman_scores[zope3_].setText(woff_answer.footballer[zope-1].tour_score.text());
							footman_form_array[zope3_].setId(woff_answer.footballer[zope-1].id.text());
							footman_form_array[zope3_].setClub(woff_answer.footballer[zope-1].id_club.text());
							if (woff_answer.footballer[zope-1].status == "1") {
								captain.x = footman_form_array[zope3_].x+10;
								captain.y = footman_form_array[zope3_].y+20;
								footman_list.addChild(captain);
								current_captain_id = int(woff_answer.footballer[zope-1].id.text());
							}
							main2.removeChild(down_arrows[zope3_]);
							
							zope0++;
							zope3++;
							zope3_++;
							
							if (zope3 == 2)
								zope3_ = 9;
						}
					}
					
					// вычленение замены вратаря
					if (woff_answer.footballer[zope-1].status == "2") {
						team_role[zope].setText("ВР");
						footman_name_txt[12].setText(String(woff_answer.footballer[zope-1].name.text()));
						footman_name_txt[12].setId(woff_answer.footballer[zope-1].id.text());
						footman_replace[12].filters = [];
						footman_replace[12].setId(woff_answer.footballer[zope-1].id.text());
						footman_up[12].setId(woff_answer.footballer[zope-1].id.text());
						footman_up[12].setStatus(2);
						footman_scores[12].setText(woff_answer.footballer[zope-1].tour_score.text());
						footman_form_array[12].setId(woff_answer.footballer[zope-1].id.text());
						footman_form_array[12].setClub(woff_answer.footballer[zope-1].id_club.text());
						main2.removeChild(down_arrows[12]);
					}
					// вычленение замены 1
					if (woff_answer.footballer[zope-1].status == "3") {
						team_role[zope].setText("ЗАМ");
						footman_name_txt[13].setText(String(woff_answer.footballer[zope-1].name.text()));
						footman_name_txt[13].setId(woff_answer.footballer[zope-1].id.text());
						footman_replace[13].filters = [];
						footman_replace[13].setId(woff_answer.footballer[zope-1].id.text());
						footman_replace[13].setRole(woff_answer.footballer[zope-1].role.text());
						footman_up[13].setId(woff_answer.footballer[zope-1].id.text());
						footman_up[13].setStatus(3);
						footman_up[13].setRole(woff_answer.footballer[zope-1].role.text());
						footman_scores[13].setText(woff_answer.footballer[zope-1].tour_score.text());
						footman_form_array[13].setId(woff_answer.footballer[zope-1].id.text());
						footman_form_array[13].setClub(woff_answer.footballer[zope-1].id_club.text());
						if (woff_answer.footballer[zope-1].role.text() == "1") {
							zamena_trig1++;
							if ((zope1 + zamena_trig1) == 5) {
								
								zope2_ = 2 + zope1;
							}
							if (zamena_trig1 > 1)
								zope2_ = 2 + zope1 +(5 - zamena_trig1 - zope1);
						}
						if (woff_answer.footballer[zope-1].role.text() == "2")
							zamena_trig2++;
						if (woff_answer.footballer[zope-1].role.text() == "3")
							zamena_trig3++;
							
						main2.removeChild(down_arrows[13]);
					}
					// вычленение замены 2
					if (woff_answer.footballer[zope-1].status == "4") {
						team_role[zope].setText("ЗАМ");
						footman_name_txt[14].setText(String(woff_answer.footballer[zope-1].name.text()));
						footman_name_txt[14].setId(woff_answer.footballer[zope-1].id.text());
						footman_replace[14].filters = [];
						footman_replace[14].setId(woff_answer.footballer[zope-1].id.text());
						footman_replace[14].setRole(woff_answer.footballer[zope-1].role.text());
						footman_up[14].setId(woff_answer.footballer[zope-1].id.text());
						footman_up[14].setStatus(4);
						footman_up[14].setRole(woff_answer.footballer[zope-1].role.text());
						footman_scores[14].setText(woff_answer.footballer[zope-1].tour_score.text());
						footman_form_array[14].setId(woff_answer.footballer[zope-1].id.text());
						footman_form_array[14].setClub(woff_answer.footballer[zope-1].id_club.text());
						if (woff_answer.footballer[zope-1].role.text() == "1") {
							zamena_trig1++;
							if ((zope1 + zamena_trig1) == 5) {
								
								zope2_ = 2 + zope1;
							}
							if (zamena_trig1 > 1)
								zope2_ = 2 + zope1 +(5 - zamena_trig1 - zope1);
						}
						if (woff_answer.footballer[zope-1].role.text() == "2")
							zamena_trig2++;
						if (woff_answer.footballer[zope-1].role.text() == "3")
							zamena_trig3++;
						main2.removeChild(down_arrows[14]);
					}
					// вычленение замены 3
					if (woff_answer.footballer[zope-1].status == "5") {
						team_role[zope].setText("ЗАМ");
						footman_name_txt[15].setText(String(woff_answer.footballer[zope-1].name.text()));
						footman_name_txt[15].setId(woff_answer.footballer[zope-1].id.text());
						footman_replace[15].filters = [];
						footman_replace[15].setId(woff_answer.footballer[zope-1].id.text());
						footman_replace[15].setRole(woff_answer.footballer[zope-1].role.text());
						footman_up[15].setId(woff_answer.footballer[zope-1].id.text());
						footman_up[15].setStatus(5);
						footman_up[15].setRole(woff_answer.footballer[zope-1].role.text());
						footman_scores[15].setText(woff_answer.footballer[zope-1].tour_score.text());
						footman_form_array[15].setId(woff_answer.footballer[zope-1].id.text());
						footman_form_array[15].setClub(woff_answer.footballer[zope-1].id_club.text());
						if (woff_answer.footballer[zope-1].role.text() == "1") {
							zamena_trig1++;
							if ((zope1 + zamena_trig1) == 5) {
								
								zope2_ = 2 + zope1;
							}
							if (zamena_trig1 > 1)
								zope2_ = 2 + zope1 +(5 - zamena_trig1 - zope1);
						}
						if (woff_answer.footballer[zope-1].role.text() == "2")
							zamena_trig2++;
						if (woff_answer.footballer[zope-1].role.text() == "3")
							zamena_trig3++;
						main2.removeChild(down_arrows[15]);
					}
				}
				
				// --- расстановка по полю ---
				
				if (zope1 < 4) {
					
						zope1=4;
					
						if (zope2 < 4) {
							
								zope2 = 4;
								
								if (zope3 < 3) {
										zope3 = 2; 
								} else {
										if (zamena_trig1 == 2)
											zope1 -= 1;
										if (zamena_trig2 == 2)
											zope2 -= 1;
								}
						} else {
								if (zope3 < 3) {
										zope3 = 2; 
										if (zope2 == 5)
											zope1 -= 1;
								} else {
										zope1 -= 1;
								}
								
								//footman_replace[14].setRole(1);
								//zope3 = 1;
						}
					
					} else {
							if (zope2 <= 4) {
							
								zope2 = 4;
								
								if (zope3 < 3) {
										zope3 = 2; 
										if (zope1 == 5)
											zope2 -= 1;
								} else {
										zope2 -= 1;
								}
							} else {
								
								//footman_replace[14].setRole(1);
								zope3 = 1;
							}
							//footman_replace[13].setRole(2);
							//zope2 = 3;
							//zope3 = 2;
					}
				/*	
				if (zope3 < 3)
					zope3=2;
					 
/*
				if (zope1 > 4) {
					if (zope2 )
					zope2 = 3;
				} else {
					
				}
				 * 
				 */
				
				for (var num:int=0; num < zope1; num++) {
					footman_name_form[num+2].x = 100;
					footman_name_form[num+2].y = (250/zope1)*num+30;
					footman_name_txt[num+2].x = 105;
					footman_name_txt[num+2].y = (250/zope1)*num+33;
					footman_scores[num+2].x = 182;
					footman_scores[num+2].y = (250/zope1)*num+33;
					footman_down[num+2].x = 150;
					footman_down[num+2].y = (250/zope1)*num+15;
					footman_replace[num+2].x = 170;
					footman_replace[num+2].y = (250/zope1)*num+15;
					footman_form_array[num+2].x = 100;
					footman_form_array[num+2].y = (250/zope1)*num;
					down_arrows[num+2].y = footman_replace[num+2].y+90;
					
				}
				for (var num:int=0; num < zope2; num++) {
					footman_name_form[zope1+num+2].x = 200;
					footman_name_form[zope1+num+2].y = (250/zope2)*num+30;
					footman_name_txt[zope1+num+2].x = 205;
					footman_name_txt[zope1+num+2].y = (250/zope2)*num+33;
					footman_scores[zope1+num+2].x = 280;
					footman_scores[zope1+num+2].y = (250/zope2)*num+33;
					footman_down[zope1+num+2].x = 250;
					footman_down[zope1+num+2].y = (250/zope2)*num+15;
					footman_replace[zope1+num+2].x = 270;
					footman_replace[zope1+num+2].y = (250/zope2)*num+15;
					footman_form_array[zope1+2+num].x = 200;
					footman_form_array[zope1+2+num].y = (250/zope2)*num;
					down_arrows[zope1+num+2].y = footman_replace[zope1+num+2].y+90;
				}
				for (var num:int=0; num < zope3; num++) {
					footman_name_form[zope1+zope2+num+2].x = 300;
					footman_name_form[zope1+zope2+num+2].y = (150/zope3)*num+90;
					footman_name_txt[zope1+zope2+num+2].x = 305;
					footman_name_txt[zope1+zope2+num+2].y = (150/zope3)*num+93;
					footman_scores[zope1+zope2+num+2].x = 382;
					footman_scores[zope1+zope2+num+2].y = (150/zope3)*num+93;
					footman_down[zope1+zope2+num+2].x = 350;
					footman_down[zope1+zope2+num+2].y = (150/zope3)*num+75;
					footman_replace[zope1+zope2+num+2].x = 370;
					footman_replace[zope1+zope2+num+2].y = (150/zope3)*num+75;
					footman_form_array[zope1+zope2+2+num].x = 300;
					footman_form_array[zope1+zope2+2+num].y = (150/zope3)*num+60;
					down_arrows[zope1+zope2+num+2].y = footman_replace[zope1+zope2+num+2].y+90;
				}
						
	
			}
				main2_txt13.setText("Стоимость футболистов:		" + total_team_cost/10);
				
				one.x = 90;
				one.y = 270;
				two.x = 190;
				two.y = 270;
				three.x = 290;
				three.y = 270;
				
				zamena_first = 13;
				zamena_second = 14;
				zamena_third = 15;
				
					footman_name_form[12].x = -10;
					footman_name_form[12].y = 280;
					footman_name_txt[12].x = 0;
					footman_name_txt[12].y = 281;
					footman_scores[12].x = 72;
					footman_scores[12].y = 281;
					footman_up[12].x = 45;
					footman_up[12].y = 264;
					footman_replace[12].x = 65;
					footman_replace[12].y = 264;
					footman_form_array[12].x = 10;
					footman_form_array[12].y = 250;
		}
		
		
		public function woffTimeLoadComplete(e:Event):void {
			
			var woff_answer:XML = new XML(e.target.data);
			main1_txt7.setText(woff_answer.tour.request_save_date.text());
			
		}
		
		// функция отображения лиг игрока
		public function woffLigListLoadComplete(e:Event):void {
			
			var woff_answer:XML = new XML(e.target.data);
						
			var iii:int;
			for (var ii:int=1; ii<=5; ii++) {
				p_liga[ii].setText("Создать лигу");
				p_liga[ii].setId(0);
				p_liga[ii].setLeagueId(0);
				p_liga_backup[ii].setId(0);
				p_liga_backup[ii].setLeagueId(0);
				p_liga_poi[ii].setText("");
			}
			
			for (var ii:int=1; ii<=woff_answer.league.length(); ii++) {
								
					p_liga[ii].setText(woff_answer.league[ii-1].title.text());
					p_liga[ii].setId(woff_answer.league[ii-1].id.text());
					p_liga[ii].setLeagueId(woff_answer.league[ii-1].id.text());
					p_liga_backup[ii].setId(woff_answer.league[ii-1].id.text());
					p_liga_backup[ii].setLeagueId(woff_answer.league[ii-1].id.text());
					p_liga_poi[ii].setText(woff_answer.league[ii-1].no_of_members.text());
				    p_liga[ii].addEventListener(MouseEvent.CLICK, ligaEvent);
			}
		}
		
		// функция отображения лиг другого игрока
		public function woffLigListLoadComplete2(e:Event):void {
			
			var woff_answer:XML = new XML(e.target.data);
						
			var iii:int;
			for (var ii:int=1; ii<=5; ii++) {
				p_liga[ii].setText("Создать лигу");
				p_liga[ii].setId(0);
				p_liga[ii].setLeagueId(0);
				p_liga_poi[ii].setText("");
			}
			
			for (var ii:int=1; ii<=woff_answer.league.length(); ii++) {
								
					p_liga[ii].setText(woff_answer.league[ii-1].title.text());
					p_liga[ii].setId(woff_answer.league[ii-1].id.text());
					p_liga[ii].setLeagueId(woff_answer.league[ii-1].id.text());
					p_liga_poi[ii].setText(woff_answer.league[ii-1].no_of_members.text());
				    p_liga[ii].addEventListener(MouseEvent.CLICK, ligaEvent);
			}
		}
		
		// функция генерации выпадающего меню с турами
		public function dropDownMenu_generate(new_current_tour:int):void {
			
			tour_array = new Array();
			
			dropdown_menu_sprite2 = new Sprite();
			dropdown_menu_sprite2.addEventListener(MouseEvent.MOUSE_WHEEL, toursWheelHandler);
			
			dropdownmenu_tours = new Sprite();
			dropdownmenu_tours.graphics.beginFill(0xffffff, 1); 
			dropdownmenu_tours.graphics.lineStyle(1, 0xCCCCCC);
			
			if (current_tour > 5) {
				
				dropdownmenu_tours.graphics.drawRoundRect(2, 0, 200, new_current_tour*20+20, 12);
				
				dropdown_menu_sprite2.addChild(dropdownmenu_tours);
				dropdown_menu_sprite2.addChild(scroll_tou);
				
			} else {
				
				dropdownmenu_tours.graphics.drawRoundRect(2, 0, 200, 128, 12);
				
				dropdown_menu_sprite2.addChild(dropdownmenu_tours);
				
			}
			
			dropdownmenu_tours.addEventListener(MouseEvent.CLICK, dropdowm_menu_out2);
			
			
			for (var tour:int=0; tour<new_current_tour; tour++) {
				
				var freq_tour:int = tour * 19 + 24;
				tour_array[tour] = new text(7,freq_tour, "Тур №" + (tour+1), "3");
				tour_array[tour].setId(tour+1);
				tour_array[tour].addEventListener(MouseEvent.CLICK, setTourEvent);
				tour_array[tour].addEventListener(MouseEvent.MOUSE_OVER, overTourEvent);
				tour_array[tour].addEventListener(MouseEvent.MOUSE_OUT, outTourEvent);
				
				dropdown_menu_sprite2.addChild(tour_array[tour]);
				
			}
			dropdown_menu_sprite2.scrollRect = new Rectangle(0, 0, 220, 275);
			
		}
		
		private function overTourEvent(e:MouseEvent):void {
			//tour_array[tour].x += 30;
			e.currentTarget.filters = [myGlow_blue];
		}
		private function outTourEvent(e:MouseEvent):void {
			//tour_array[tour].x += 30;
			e.currentTarget.filters = [];
		}
		// общая функция выделеня текста при наведении мышки
		private function overTextEvent(e:MouseEvent):void {
			e.currentTarget.filters = [myGlow_blue];
		}
		private function outTextEvent(e:MouseEvent):void {
			e.currentTarget.filters = [];
		}
		// фунция окончания загрузки информации по турниру ЧР
		
		public function woffTornamentLoadComplete(e:Event):void {
			var woff_answer:XML = new XML(e.target.data);	
			
			main2_txt15.setText("Базовый трансфер:	                          " + woff_answer.tournament.transfers_base.text());
				transfers_do = int(woff_answer.tournament.transfers_base.text()) + int(woff_answer.tournament.paid_transfers.text())*is_transfers_bought - transfers_left;
			//main2_txt16.setText("Проведённых трансферов:           	    " + transfers_do);
			main2_txt26.setText(String(transfers_do));
			
			current_tour = int(woff_answer.tournament.current_tour.text());
			
			current_new_tour = current_tour;
			
			current_budget = int(woff_answer.tournament.base_budget.text()); // + int(woff_answer.tournament.paid_budget.text());
			
				dropDownMenu_generate(current_tour);
			
			main2_txt24.setText("Текущий тур: №" + current_tour);
			team_stat_txt9.setText("Текущий тур: №" + current_tour);
			select_leaders_tour_txt.setText("Текущий тур: №" + current_tour);
			
			main2_txt20.setText("Призовой фонд:     " + woff_answer.tournament.jackpot.text() + " MP");
			
			current_tax_b = woff_answer.tournament.paid_budget_cost_in_votes.text()*10;
			current_tax_t = woff_answer.tournament.paid_transfers_cost_in_votes.text()*10;
			
			//woff_general_request.url = woff_api3;
			
			getTeam("getTeam", current_tour);
		
			var woff_Team_loader:URLLoader = new URLLoader();
			woff_Team_loader.addEventListener(Event.COMPLETE, woffTeamLoadComplete);
			woff_Team_loader.load(woff_general_request);
		
		}
		
		// фунция окончания загрузки информации по турниру ЧА
		public function woffTornament2LoadComplete(e:Event):void {
			var woff_answer:XML = new XML(e.target.data);	
			//transfers_left = int(woff_answer.tournament);
			main2_txt15.setText("Базовый трансфер:	                          " + woff_answer.tournament.transfers_base.text());
				transfers_do = int(woff_answer.tournament.transfers_base.text()) + int(woff_answer.tournament.paid_transfers.text())*is_transfers_bought - transfers_left2;
			//main2_txt16.setText("Проведённых трансферов:           	    " + transfers_do);
			main2_txt26.setText(String(transfers_do));
			
			current_tour = int(woff_answer.tournament.current_tour.text());
			current_new_tour = current_tour;
			
			current_budget = int(woff_answer.tournament.base_budget.text()); // + int(woff_answer.tournament.paid_budget.text());
			
			// генерация выпадающего меню с турами
			dropDownMenu_generate(current_tour);
			
			
			main2_txt24.setText("Текущий тур: №" + current_tour);
			team_stat_txt9.setText("Текущий тур: №" + current_tour);
			select_leaders_tour_txt.setText("Текущий тур: №" + current_tour);
			
			main2_txt20.setText("Призовой фонд:     " + woff_answer.tournament.jackpot.text() + " MP");
			
			current_tax_b = woff_answer.tournament.paid_budget_cost_in_votes.text()*10;
			current_tax_t = woff_answer.tournament.paid_transfers_cost_in_votes.text()*10;
			
			//woff_general_request.url = woff_api1;
			
			getTeam("getTeam", current_tour);
		
			var woff_Team_loader:URLLoader = new URLLoader();
			woff_Team_loader.addEventListener(Event.COMPLETE, woffTeamLoadComplete);
			woff_Team_loader.load(woff_general_request);
		
		}
		
		// фунция окончания загрузки информации по турниру Ч Италии
		public function woffTornament3LoadComplete(e:Event):void {
			var woff_answer:XML = new XML(e.target.data);	
			//transfers_left = int(woff_answer.tournament);
			main2_txt15.setText("Базовый трансфер:	                          " + woff_answer.tournament.transfers_base.text());
				transfers_do = int(woff_answer.tournament.transfers_base.text()) + int(woff_answer.tournament.paid_transfers.text())*is_transfers_bought - transfers_left2;
			//main2_txt16.setText("Проведённых трансферов:           	    " + transfers_do);
			main2_txt26.setText(String(transfers_do));
			
			current_tour = int(woff_answer.tournament.current_tour.text());
			current_new_tour = current_tour;
			
			current_budget = int(woff_answer.tournament.base_budget.text()); // + int(woff_answer.tournament.paid_budget.text());
			
			/*
			// генерация выпадающего меню с турами
			var tour_array:Array = new Array();
				dropdown_menu_sprite2 = new Sprite();
				dropdown_menu_sprite2.scrollRect = new Rectangle(0, 0, 300, 350);
				dropdown_menu_sprite2.addChild(dropdownmenu_tours);
				dropdown_menu_sprite2.addChild(scroll_tou);
				
			for (var tour:int=0; tour<current_tour; tour++) {
			
				var freq_tour:int = tour * 19 + 24;
				tour_array[tour] = new text(7,freq_tour, "Тур №" + (tour+1), "3");
				tour_array[tour].setId(tour+1);
				tour_array[tour].addEventListener(MouseEvent.CLICK, setTourEvent);
				if (current_tour > 5) {
					dropdowmmenu_png2.scaleY = 1 + (current_tour-5)/6;
				}
				dropdown_menu_sprite2.addChild(tour_array[tour]);
			}
			*/
			dropDownMenu_generate(current_tour);
			
			main2_txt24.setText("Текущий тур: №" + current_tour);
			team_stat_txt9.setText("Текущий тур: №" + current_tour);
			select_leaders_tour_txt.setText("Текущий тур: №" + current_tour);
			
			main2_txt20.setText("Призовой фонд:     " + woff_answer.tournament.jackpot.text() + " MP");
			
			current_tax_b = woff_answer.tournament.paid_budget_cost_in_votes.text()*10;
			current_tax_t = woff_answer.tournament.paid_transfers_cost_in_votes.text()*10;
			//select_leaders_tour_txt.setText("Текущий тур: №" + current_tour);
			
			//woff_general_request.url = woff_api3;
			
			getTeam("getTeam", current_tour);
		
			var woff_Team_loader:URLLoader = new URLLoader();
			woff_Team_loader.addEventListener(Event.COMPLETE, woffTeamLoadComplete);
			woff_Team_loader.load(woff_general_request);
		
		}
		
		// фунция окончания загрузки информации по турниру лиги чемпионов
		public function woffTornament4LoadComplete(e:Event):void {
			var woff_answer:XML = new XML(e.target.data);	
			//transfers_left = int(woff_answer.tournament);
			main2_txt15.setText("Базовый трансфер:	                          " + woff_answer.tournament.transfers_base.text());
				transfers_do = int(woff_answer.tournament.transfers_base.text()) + int(woff_answer.tournament.paid_transfers.text())*is_transfers_bought - transfers_left4;
			//main2_txt16.setText("Проведённых трансферов:           	    " + transfers_do);
			main2_txt26.setText(String(transfers_do));
			
			current_tour = int(woff_answer.tournament.current_tour.text());
			current_new_tour = current_tour;
			
			current_budget = int(woff_answer.tournament.base_budget.text()); // + int(woff_answer.tournament.paid_budget.text());
			/*
			// генерация выпадающего меню с турами
			var tour_array:Array = new Array();
				dropdown_menu_sprite2 = new Sprite();
				dropdown_menu_sprite2.scrollRect = new Rectangle(0, 0, 300, 350);
				dropdown_menu_sprite2.addChild(dropdownmenu_tours);
			for (var tour:int=0; tour<current_tour; tour++) {
			
				var freq_tour:int = tour * 19 + 24;
				tour_array[tour] = new text(7,freq_tour, "Тур №" + (tour+1), "3");
				tour_array[tour].setId(tour+1);
				tour_array[tour].addEventListener(MouseEvent.CLICK, setTourEvent);
				if (current_tour > 5) {
					dropdowmmenu_png2.scaleY = 1 + (current_tour-5)/6;
				} else {
					dropdowmmenu_png2.scaleY = 1.1;
				}
				dropdown_menu_sprite2.addChild(tour_array[tour]);
			}
			*/
			dropDownMenu_generate(current_tour);
			
			main2_txt24.setText("Текущий тур: №" + current_tour);
			team_stat_txt9.setText("Текущий тур: №" + current_tour);
			select_leaders_tour_txt.setText("Текущий тур: №" + current_tour);
			
			main2_txt20.setText("Призовой фонд:     " + woff_answer.tournament.jackpot.text() + " MP");
			
			current_tax_b = woff_answer.tournament.paid_budget_cost_in_votes.text()*10;
			current_tax_t = woff_answer.tournament.paid_transfers_cost_in_votes.text()*10;
			
			
			//woff_general_request.url = woff_api3;
			
			getTeam("getTeam", current_tour);
		
			var woff_Team_loader:URLLoader = new URLLoader();
			woff_Team_loader.addEventListener(Event.COMPLETE, woffTeamLoadComplete);
			woff_Team_loader.load(woff_general_request);
		
		}
		
		// фунция окончания загрузки информации по турниру Ч Испании
		public function woffTornament5LoadComplete(e:Event):void {
			var woff_answer:XML = new XML(e.target.data);	
			//transfers_left = int(woff_answer.tournament);
			main2_txt15.setText("Базовый трансфер:	                          " + woff_answer.tournament.transfers_base.text());
				transfers_do = int(woff_answer.tournament.transfers_base.text()) + int(woff_answer.tournament.paid_transfers.text())*is_transfers_bought - transfers_left5;
			//main2_txt16.setText("Проведённых трансферов:           	    " + transfers_do);
			main2_txt26.setText(String(transfers_do));
			
			current_tour = int(woff_answer.tournament.current_tour.text());
			current_new_tour = current_tour;
			
			current_budget = int(woff_answer.tournament.base_budget.text()); // + int(woff_answer.tournament.paid_budget.text());
			/*
			// генерация выпадающего меню с турами
			var tour_array:Array = new Array();
				dropdown_menu_sprite2 = new Sprite();
				dropdown_menu_sprite2.scrollRect = new Rectangle(0, 0, 300, 350);
				dropdown_menu_sprite2.addChild(dropdownmenu_tours);
				dropdown_menu_sprite2.addChild(scroll_tou);
				
			for (var tour:int=0; tour<current_tour; tour++) {
			
				var freq_tour:int = tour * 19 + 24;
				tour_array[tour] = new text(7,freq_tour, "Тур №" + (tour+1), "3");
				tour_array[tour].setId(tour+1);
				tour_array[tour].addEventListener(MouseEvent.CLICK, setTourEvent);
				if (current_tour > 5) {
					dropdowmmenu_png2.scaleY = 1 + (current_tour-5)/6;
				}
				dropdown_menu_sprite2.addChild(tour_array[tour]);
			}
			*/
			dropDownMenu_generate(current_tour);
			
			main2_txt24.setText("Текущий тур: №" + current_tour);
			team_stat_txt9.setText("Текущий тур: №" + current_tour);
			select_leaders_tour_txt.setText("Текущий тур: №" + current_tour);
			
			main2_txt20.setText("Призовой фонд:     " + woff_answer.tournament.jackpot.text() + " MP");
			
			current_tax_b = woff_answer.tournament.paid_budget_cost_in_votes.text()*10;
			current_tax_t = woff_answer.tournament.paid_transfers_cost_in_votes.text()*10;
			
			//woff_general_request.url = woff_api3;
			
			getTeam("getTeam", current_tour);
		
			var woff_Team_loader:URLLoader = new URLLoader();
			woff_Team_loader.addEventListener(Event.COMPLETE, woffTeamLoadComplete);
			woff_Team_loader.load(woff_general_request);
		
		}
		// функция окончания загрузки списка всех клубов
		public function woffAllClubsComplete(e:Event):void {
			
			var woff_answer:XML = new XML(e.target.data);		
			//var iii:int;
			
			favClubs = [];
			
			for (var ii:int=0; ii<woff_answer.club.length(); ii++) {			
					club_array[ii].setText(woff_answer.club[ii].club_title.text());	
					club_array[ii].id = woff_answer.club[ii].id.text();
					
					favClubs.push({title:woff_answer.club[ii].club_title.text(), 
								id:woff_answer.club[ii].id.text()});
					
				}
			for (var ii:int=woff_answer.club.length(); ii<=32; ii++) {			
					club_array[ii].setText("  ---");	
				}
				
		}
		
		// функция окончания загрузки списка всех клубов для автонабора
		public function woffAllClubsComplete2(e:Event):void {
			
			var woff_answer:XML = new XML(e.target.data);		
			
			favClubs = [];
			
			for (var ii:int=0; ii<woff_answer.club.length(); ii++) {			
					
					favClubs.push({title:woff_answer.club[ii].club_title.text(), 
								id:woff_answer.club[ii].id.text()});
					
				}
				
			firstManual.setFavClubs(favClubs);
		}
		
		// функция завершения проверки команды на доступность
		public function woffCheckTeamComplete(e:Event):void {
			var woff_answer:XML = new XML(e.target.data);	
			
			if (woff_answer.text() == "ok") {
				
				main_txt5.setText("Статус допуска: команда допущена");
				//main_txt5.setColor("0x22b573");
				ticket_status.setText("Команда допущена!");
				ticket_status.setColor("0x22b573");
			} else {
				main_txt5.setText("Статус допуска: команда не допущена");
				ticket_status.setText("Команда не допущена!");
				ticket_status.setColor("0xff0000");
				
				select1.removeEventListener(MouseEvent.CLICK, select1listener);
				select1.addEventListener(MouseEvent.CLICK, button2event2);
			}
		}
		
		public function woffCheckTeam2Complete(e:Event):void {
			var woff_answer:XML = new XML(e.target.data);	
			
			if (woff_answer.text() == "ok") {
				main_txt35.setText("Статус допуска: команда допущена");
				//ticket_status.setColor("0x22b573");
				//ticket_status.setText("Команда допущена!");
				//ticket_status.setColor("0x22b573");
			} else {
				main_txt35.setText("Статус допуска: команда не допущена");
				//ticket_status.setText("Команда не допущена!");
				//ticket_status.setColor("0xff0000");
				
				select2_.removeEventListener(MouseEvent.CLICK, select2listener);
				select2_.addEventListener(MouseEvent.CLICK, button2event4);
			}
		}
		public function woffCheckTeam3Complete(e:Event):void {
			var woff_answer:XML = new XML(e.target.data);	
			
			if (woff_answer.text() == "ok") {
				main_txt55_.setText("Статус допуска: команда допущена");
				//ticket_status.setColor("0x22b573");
				ticket_status.setText("Команда допущена!");
				ticket_status.setColor("0x22b573");
			} else {
				main_txt55_.setText("Статус допуска: команда не допущена");
				ticket_status.setText("Команда не допущена!");
				ticket_status.setColor("0xff0000");
				
				select3.removeEventListener(MouseEvent.CLICK, select3listener);
				select3.addEventListener(MouseEvent.CLICK, button2event3);
			}
		}
		public function woffCheckTeam4Complete(e:Event):void {
			var woff_answer:XML = new XML(e.target.data);	
			
			if (woff_answer.text() == "ok") {
				main_txt25.setText("Статус допуска: команда допущена");
				//ticket_status.setColor("0x22b573");
				ticket_status.setText("Команда допущена!");
				ticket_status.setColor("0x22b573");
			} else {
				main_txt25.setText("Статус допуска: команда не допущена");
				ticket_status.setText("Команда не допущена!");
				ticket_status.setColor("0xff0000");
				
				select4.removeEventListener(MouseEvent.CLICK, select4listener);
				select4.addEventListener(MouseEvent.CLICK, button2event4_);
			}
		}
		
		public function woffCheckTeam5Complete(e:Event):void {
			var woff_answer:XML = new XML(e.target.data);	
			
			if (woff_answer.text() == "ok") {
				main_txt425.setText("Статус допуска: команда допущена");
				//ticket_status.setColor("0x22b573");
				ticket_status.setText("Команда допущена!");
				ticket_status.setColor("0x22b573");
			} else {
				main_txt425.setText("Статус допуска: команда не допущена");
				ticket_status.setText("Команда не допущена!");
				ticket_status.setColor("0xff0000");
				
				select5.removeEventListener(MouseEvent.CLICK, select5listener);
				select5.addEventListener(MouseEvent.CLICK, button2event5);
			}
		}
		
		public function woffUniCheckTeamComplete(e:Event):void {
			var woff_answer:XML = new XML(e.target.data);	
			//!!!!!!
			///drawFieldEvent_offer();
			
			if (woff_answer.text() == "ok") {
				
				ticket_status.setText("Команда допущена!");
				ticket_status.setColor("0x22b573");
				
				if (check_team_trigger == 0) {
					
					check_team_trigger = 1;

					drawFieldEvent_offer();
				}
				
				//!!!!!
				//drawFieldEvent_offer();
				//!!!!
				
			} else {
				check_team_trigger = 0;
				ticket_status.setText("Команда не допущена!");
				ticket_status.setColor("0xff0000");
				
			}
		}
		
		// функция окончания загрузки всех лиг
		public function woffAllLeaguesLoadComplete(e:Event):void {
			
			var woff_answer:XML = new XML(e.target.data);
			
		for (var ttt:int = 0; ttt < woff_answer.league.length(); ttt++) {
				
				
			all_lig[ttt].setText(String(woff_answer.league[ttt].title.text()));
			all_lig[ttt].setLeagueId(woff_answer.league[ttt].id.text());
			all_lig_p[ttt].setText(String(woff_answer.league[ttt].no_of_members.text()));
			//team_stat_array[tt].setText(String(woff_answer.footballer[tt-1].name.text()));
			
			}
		for (var ttt:int = woff_answer.league.length()+1; ttt <= 63; ttt++) {
				
				
			all_lig[ttt].setText("-");
			all_lig[ttt].setLeagueId("0");
			all_lig_p[ttt].setText("-");
			//team_stat_array[tt].setText(String(woff_answer.footballer[tt-1].name.text()));
			
			}	
				
		}
		
		
		
		// загрузка запроса трансфера
		
		public function getTransferEvent(e:MouseEvent):void {
			
			
			var current_id1:int = e.currentTarget.id1;
			var current_id2:int = e.currentTarget.id2;
			var status:int = e.currentTarget.status;
			if (current_id1 == 0) {
				setNewTransfer(current_id2, status);
				} else {	
				setTransfer(current_id1, current_id2);
				}
			var woff_setTransfer_loader:URLLoader = new URLLoader();
			woff_setTransfer_loader.addEventListener(Event.COMPLETE, button2event);
			woff_setTransfer_loader.addEventListener(Event.COMPLETE, errorEvent);
			woff_setTransfer_loader.load(woff_general_request);
			
			e.currentTarget.setId2(0);
		}
		
		
		
		// ересь
		
		
		public function woffResLoadComplete(e:Event):void {
			
			var woff_answer:XML = new XML(e.target.data);
			//main2_txt8.setText("Очков:  000 "+ woff_answer.text());
			//main2_txt9.setText("Место:    00000 " + woff_answer.text());		
			
		}
		public function woffTeamStatLoadComplete(e:Event):void {
			
			//var woff_answer:XML = new XML(e.target.data);
			//main2_txt10.setText("Очков:   000 "+ woff_answer.text());
			//main2_txt11.setText("Место:    00000 "+ woff_answer.text());
			
		}
		
		public function woffMyTournamentScoreLoadComplete(e:Event):void {
			
			var woff_answer:XML = new XML(e.target.data);
			main2_txt10_.setText(String(int(woff_answer.tournament_score.text())/10));
			main2_txt11_.setText(woff_answer.position.text());
			
		}
		// событие загрузки списка трансферов
		public function woffTransferLoadComplete(e:Event):void {
			
			var woff_answer:XMLList = new XMLList(e.target.data);
			parseTransfers(woff_answer);
		}
		
		public function parseTransfers(woff_answer:XMLList):void {
			
			search_xml = woff_answer;
			
			transfer.filters = [];
			stage.removeChild(loading_balls);
			fff = [];
			
			var rect:Rectangle = transfer_list.scrollRect;
				rect.y = 0;
				transfer_list.scrollRect = rect;
				scroll_tr.y = 125;
				
			genTransferList(woff_answer.footballer.length());		
			
			for (var n:int=1; n <= woff_answer.footballer.length(); n++) {
				
					fff.push({cost:woff_answer.footballer[n-1].cost.text(), 
								name:woff_answer.footballer[n-1].name.text(),
								club:woff_answer.footballer[n-1].club_title.text(),
								id:woff_answer.footballer[n-1].id.text(),
								rating:woff_answer.footballer[n-1].rating.text(),
								tm_scores:woff_answer.footballer[n-1].tournament_score.text(),
								efficiency:Math.round(int(woff_answer.footballer[n-1].tournament_score.text())*100/int(woff_answer.footballer[n-1].cost.text()))/10});
					
				cost[n].setText(int(woff_answer.footballer[n-1].cost.text())/10);
				transfer_array[n].setText(woff_answer.footballer[n-1].name.text());
				transfer_array[n].setId(woff_answer.footballer[n-1].id.text());
				transfer_club_array[n].setText(woff_answer.footballer[n-1].club_title.text());
				transfer_points_array[n].setText(woff_answer.footballer[n-1].tournament_score.text());
				transfer_get_array[n].setId2(woff_answer.footballer[n-1].id.text());
				transfer_rating[n].setText(woff_answer.footballer[n-1].rating.text());
				transfer_efficiency[n].setText(Math.round(int(woff_answer.footballer[n-1].tournament_score.text())*100/int(woff_answer.footballer[n-1].cost.text()))/10);
				}
			/*	
			for (var nnnn:int = woff_answer.footballer.length()+1; nnnn<350; nnnn++) {
				transfer_array[nnnn].setText("");
				transfer_array[nnnn].setId(0);
				transfer_club_array[nnnn].setText("");
				cost[nnnn].setText("");
				transfer_points_array[nnnn].setText("");
				transfer_efficiency[nnnn].setText("");
				transfer_get_array[nnnn].setId2("");
				}
				*/
			panel_transfer_right.panelShow();
			//dispatchEvent(new Event(Event.COMPLETE));	
			
			
			
		}
		
		public function parseTransfersSort(woff_answer:Array):void {
			
			
			for (var n:int=1; n <= woff_answer.length; n++) {
				
				cost[n].setText(int(woff_answer[n-1].cost)/10);
				transfer_array[n].setText(woff_answer[n-1].name);
				transfer_array[n].setId(woff_answer[n-1].id);
				transfer_club_array[n].setText(woff_answer[n-1].club);
				transfer_points_array[n].setText(woff_answer[n-1].tm_scores);
				transfer_get_array[n].setId2(woff_answer[n-1].id);
				transfer_rating[n].setText(woff_answer[n-1].rating);
				transfer_efficiency[n].setText(woff_answer[n-1].efficiency);
				}
				
			
		}
		
		
			public function dropdowm_menu(e:MouseEvent):void {
				dropdown_menu_sprite.x = 425;
				dropdown_menu_sprite.y = 120;
				dropdown_menu_sprite.addChild(main1_txt25);
				//dropdown_menu_sprite.addChild(dropdowmmenu_png);
				//var rect:Rectangle = liders_list.scrollRect;
				var rect:Rectangle = new Rectangle(0, 0, 210, 339);
				rect.y = 0;
				dropdown_menu_sprite.scrollRect = rect;
				scroll_tou.y = 15;
				addChild(dropdown_menu_sprite);
				
			}
			public function dropdowm_menu2(e:MouseEvent):void {
				dropdown_menu_sprite2.x = 14;
				dropdown_menu_sprite2.y = 100;
				dropdown_menu_sprite2.addChild(main2_txt25);
				var rect:Rectangle = dropdown_menu_sprite2.scrollRect;
				rect.y = 0;
					dropdown_menu_sprite2.scrollRect = rect;
					scroll_tou.y = 15;
					addChild(dropdown_menu_sprite2);
				
			}
			
			public function dropdowm_menu_leaders(e:MouseEvent):void {
				dropdown_menu_sprite2.x = 10;
				dropdown_menu_sprite2.y = 115;
				dropdown_menu_sprite2.addChild(main2_txt25);
				var rect:Rectangle = liders_list.scrollRect;
				rect.y = 0;
				dropdown_menu_sprite2.scrollRect = rect;
				scroll_tou.y = 15;
					addChild(dropdown_menu_sprite2);
				
			}
			
			public function dropdowm_menu3(e:MouseEvent):void {
				dropdown_menu_sprite2.x = 200;
				dropdown_menu_sprite2.y = 100;
				dropdown_menu_sprite2.addChild(main2_txt25);
				var rect:Rectangle = liders_list.scrollRect;
				rect.y = 0;
				dropdown_menu_sprite2.scrollRect = rect;
				scroll_tou.y = 15;
				//dropdown_menu_sprite2.addChild(dropdowmmenu_png);
				addChild(dropdown_menu_sprite2);
				
			}
			public function dropdowm_menu_out(e:MouseEvent):void {
				removeChild(dropdown_menu_sprite);
				
			}
			
			public function dropdowm_menu_out2(e:MouseEvent):void {
				removeChild(dropdown_menu_sprite2);
				
			}
			
			public function zamenaUp1Event(e:MouseEvent):void {
				// nothing to do
			}
			
			public function zamenaUp2Event(e:MouseEvent):void {
				
				setStatus(footman_up[zamena_second].footId, 3, footman_up[zamena_first].footId, 4);
					footman_up[zamena_first].setStatus(4);
					footman_up[zamena_second].setStatus(3);
					
				var xxx:int = one.x;
				
				one.x = two.x;
				two.x = xxx;
				
				var temp_var:int = zamena_first;
				zamena_first = zamena_second;
				zamena_second = temp_var;
				
			}
			public function zamenaUp3Event(e:MouseEvent):void {
				
				setStatus(footman_up[zamena_third].footId, 4, footman_up[zamena_second].footId, 5);
					footman_up[zamena_third].setStatus(4);
					footman_up[zamena_second].setStatus(5);
					
				 var xxx:int = two.x;
				
				two.x = three.x;
				three.x = xxx;
				
				var temp_var:int = zamena_second;
				zamena_second = zamena_third;
				zamena_third = temp_var;
				
			}
			public function favClubEvent(e:MouseEvent):void {
				
				
				setFC(String(e.currentTarget.id));
				
				var woff_fc_loader:URLLoader = new URLLoader();
				//woff_fc_loader.addEventListener(Event.COMPLETE, woffEULoadComplete);
				woff_fc_loader.load(woff_general_request);
				
				main1.removeChild(main1_txt24);
				main1_txt24.setText(e.target.text);
				main1.addChild(main1_txt24);
				//main1_txt24 = new text (435, 123, e.target.text, "2");
				removeChild(dropdown_menu_sprite);
				
				
			}
			public function setTourEvent(e:MouseEvent):void {
				
				
				current_new_tour = e.currentTarget.id;
				
				//main2.removeChild(main2_txt24);
				main2_txt24.setText(e.target.text);
				team_stat_txt9.setText(e.target.text);
				select_leaders_tour_txt.setText(e.target.text);
				//main2.addChild(main2_txt24);
				//main1_txt24 = new text (435, 123, e.target.text, "2");
				removeChild(dropdown_menu_sprite2);
				
				if (current_team_id == woff_uid) {
					
					getTeam("getTeam", e.currentTarget.id);
			
					var woff_Team_loader:URLLoader = new URLLoader();
					woff_Team_loader.addEventListener(Event.COMPLETE, woffTeamLoadComplete);
					woff_Team_loader.load(woff_general_request);
				
					if (window == "player_liga") {
						getLeaders(1, current_new_tour);
						
					} else {
						getLeaders(1, current_new_tour);
					}
					getTeamStats(e.currentTarget.id);
				
					getMyTourScore(e.currentTarget.id);
				
					if (current_new_tour < current_tour) {
						main2.addChild(footman_list);
						main2.removeChild(footman_list);
						main2.addChild(safe_team_list);
					
						for (var iiiiii:int=1; iiiiii<=15; iiiiii++){
							safe_team_list.addChild(footman_form_array[iiiiii]);
							safe_team_list.addChild(footman_name_form[iiiiii]);
							safe_team_list.addChild(footman_name_txt[iiiiii]);
							safe_team_list.addChild(footman_scores[iiiiii]);
						}
						safe_team_list.addChild(captain);
		
					} else {
						main2.addChild(safe_team_list);
						main2.removeChild(safe_team_list);
						main2.addChild(footman_list);
						
					for (var iiiiii:int=1; iiiiii<=15; iiiiii++){
						footman_list.addChild(footman_form_array[iiiiii]);
						footman_list.addChild(footman_name_form[iiiiii]);
						footman_list.addChild(footman_name_txt[iiiiii]);
						footman_list.addChild(footman_scores[iiiiii]);
						}
						footman_list.addChild(captain);
					}
				} else {
					getTeam2("getTeam", current_new_tour, current_team_id);
		
					var woff_Team_loader:URLLoader = new URLLoader();
					woff_Team_loader.addEventListener(Event.COMPLETE, woffTeamLoadComplete);
					woff_Team_loader.load(woff_general_request);
				}
			}
			
			// запуск таймера скроллинга 1
			public function scrolldownEvent(e:MouseEvent):void {
				scroll_timer.start();
				yy__ = mouseY;
			}
			
			// остановка таймера скроллинга 1
			public function scrollupEvent(e:MouseEvent):void {
				scroll_timer.stop();
				
			}
			
			// схема скролла списка лидеров 
			
			private function lidersWheelHandler(e:MouseEvent):void {
				//scrollTimerEvent(e);
				 
				
				if (scroll2.y >= 149 && scroll2.y <= 392) {
				var rect:Rectangle = liders_list.scrollRect;
				rect.y -= e.delta*5;
				liders_list.scrollRect = rect;
				scroll2.y -= e.delta*5*249/5000;
				}	
				if (scroll2.y < 149) {
					
					var rect:Rectangle = liders_list.scrollRect;
					rect.y = 0;
					liders_list.scrollRect = rect;
					scroll2.y = 149;
					
				}
				
				if (scroll2.y > 392) {
					
					var rect:Rectangle = liders_list.scrollRect;
					rect.y = (4910);
					liders_list.scrollRect = rect;
					scroll2.y = 392;
				}
			}
			
			public function scrollTimerEvent(e:Event):void {
				
				// ебаная схема скролла!!!!
				
				scroll2.y += (mouseY - yy__);
				
				if (scroll2.y >= 149 && scroll2.y <= 392) {
					
					var rect:Rectangle = liders_list.scrollRect;
					rect.y += ((mouseY - yy__)/248*5000);
					liders_list.scrollRect = rect;
					yy__ = mouseY;
				}
				
				
				if (scroll2.y < 149) {
					
					var rect:Rectangle = liders_list.scrollRect;
					rect.y = 0;
					liders_list.scrollRect = rect;
					scroll2.y = 149;
					
				}
				
				if (scroll2.y > 392) {
					
					var rect:Rectangle = liders_list.scrollRect;
					rect.y += (((mouseY - yy__)-(scroll2.y - 392))/248*5000);
					liders_list.scrollRect = rect;
					scroll2.y = 392;
				}
				
				////////////////////////////
			}
			
			// запуск таймера скроллинга 2
			public function scrolldownEvent2(e:MouseEvent):void {
				scroll_timer2.start();
				yy_r = mouseY;
			}
			
			// остановка таймера скроллинга 2
			public function scrollupEvent2(e:MouseEvent):void {
				scroll_timer2.stop();
				
			}
			
			// схема скролла 2
			public function scrollTimerEvent2(e:TimerEvent):void {
				
				// ебаная схема скролла!!!!
				
				scroll_r.y += (mouseY - yy_r);
				
				var rect2:Rectangle = rules.scrollRect;
				
				if (scroll_r.y >= 120 && scroll_r.y <= 385) {
					rect2.y += ((mouseY - yy_r)/260*1500);
					yy_r = mouseY;
					}
				
				if (scroll_r.y < 120) {
					rect2.y = 0;
					scroll_r.y = 120;
					}
				
				if (scroll_r.y > 385) {
					rect2.y += (((mouseY - yy_r)-(scroll_r.y - 385))/260*1500);
					scroll_r.y = 385;
					}
				
				rules.scrollRect = rect2;
				////////////////////////////
			}
			
			// запуск таймера скроллинга трансферов
			public function scrollTrdownEvent(e:MouseEvent):void {
				scroll_timer_tr.start();
				yy__ = mouseY;
			}
			
			// остановка таймера скроллинга трансферов
			public function scrollTrupEvent(e:MouseEvent):void {
				scroll_timer_tr.stop();
				
			}
			
			// схема скролла трансферов
			
			private function transfersWheelHandler(e:MouseEvent):void {
				//scrollTimerEvent(e);
				//MouseWheel.capture(); 
				
				if (scroll_tr.y >= 125 && scroll_tr.y <= 385) {
					var rect:Rectangle = transfer_list.scrollRect;
					rect.y -= e.delta*5;
					transfer_list.scrollRect = rect;
					scroll_tr.y -= e.delta*5*260/7000;
				}	
				if (scroll_tr.y < 125) {
					
					var rect:Rectangle = transfer_list.scrollRect;
					rect.y = 0;
					transfer_list.scrollRect = rect;
					scroll_tr.y = 125;
					
				}
				
				if (scroll_tr.y > 385) {
					
					var rect:Rectangle = transfer_list.scrollRect;
					rect.y = (7010);
					transfer_list.scrollRect = rect;
					scroll_tr.y = 385;
				}
			}
			
			public function scrollTrTimerEvent(e:TimerEvent):void {
				
				// ебаная схема скролла!!!!
				
				//e.target.y += (mouseY - yy__);
				scroll_tr.y += (mouseY - yy__);
				
				if (scroll_tr.y >= 125 && scroll_tr.y <= 385) {
					
					var rect:Rectangle = transfer_list.scrollRect;
						rect.y += ((mouseY - yy__)/260*7000);
				
					transfer_list.scrollRect = rect;
					yy__ = mouseY;
				}
				
				
				if (scroll_tr.y < 125) {
					
					var rect:Rectangle = transfer_list.scrollRect;
						rect.y = 0;
					
					transfer_list.scrollRect = rect;
					scroll_tr.y = 125;
					
				}
				
				if (scroll_tr.y > 385) {
					
					var rect:Rectangle = transfer_list.scrollRect;
						rect.y += (((mouseY - yy__)-(scroll_tr.y - 385))/260*7000);
				
					transfer_list.scrollRect = rect;
					scroll_tr.y = 385;
				}
				
				////////////////////////////
			}
			
			// запуск таймера скроллинга лиг
			public function scrollLigdownEvent(e:MouseEvent):void {
				scroll_timer_lig.start();
				yy__ = mouseY;
			}
			
			// остановка таймера скроллинга лиг
			public function scrollLigupEvent(e:MouseEvent):void {
				scroll_timer_lig.stop();
				
			}
			
			// схема скролла лиг
			public function scrollLigTimerEvent(e:TimerEvent):void {
				
				// ебаная схема скролла!!!!
				
				//e.target.y += (mouseY - yy__);
				scroll_lig.y += (mouseY - yy__);
				
				if (scroll_lig.y >= 225 && scroll_lig.y <= 475) {
					
					var rect:Rectangle = all_lig_list.scrollRect;
					rect.y += ((mouseY - yy__)/260*1900);
					all_lig_list.scrollRect = rect;
					yy__ = mouseY;
				}
				
				
				if (scroll_lig.y < 315) {
					
					var rect:Rectangle = all_lig_list.scrollRect;				
					rect.y = 0;
					all_lig_list.scrollRect = rect;
					scroll_lig.y = 315;
				}
				
				if (scroll_lig.y > 422) {
							
					var rect:Rectangle = all_lig_list.scrollRect;
					rect.y += (((mouseY - yy__)-(scroll_lig.y - 422))/260*1900);
					all_lig_list.scrollRect = rect;
					scroll_lig.y = 422;
				}
				
				////////////////////////////
			}
			
			// запуск таймера скроллинга списка клубов
			public function scrollClubsDownEvent(e:MouseEvent):void {
				scroll_timer_clubs.start();
				yy__ = mouseY;
			}
			
			// остановка таймера скроллинга списка клубов
			public function scrollClubsUpEvent(e:MouseEvent):void {
				scroll_timer_clubs.stop();
				
			}
			
			// схема скролла списка клубов
			public function scrollClubsTimerEvent(e:TimerEvent):void {
				
				// ебаная схема скролла!!!!
				
				//e.target.y += (mouseY - yy__);
				scroll_clubs.y += (mouseY - yy__)*3;
				
				if (scroll_clubs.y >= 10 && scroll_clubs.y <= 622) {
					
					var rect:Rectangle = dropdown_menu_sprite.scrollRect;
				
					rect.y += ((mouseY - yy__)/300*500);
				
					dropdown_menu_sprite.scrollRect = rect;
					
					yy__ = mouseY;
				}
				
				
				if (scroll_clubs.y < 15) {
					
					var rect:Rectangle = dropdown_menu_sprite.scrollRect;				
					rect.y = 0;
					dropdown_menu_sprite.scrollRect = rect;
					scroll_clubs.y = 15;
				}
				
				if (scroll_clubs.y > 600) {
							
					var rect:Rectangle = dropdown_menu_sprite.scrollRect;
					//rect.y += (((mouseY - yy__)-(scroll_clubs.y - 822))/400*500);
					rect.y = 322;
					dropdown_menu_sprite.scrollRect = rect;
					scroll_clubs.y = 600;
				}
				
				////////////////////////////
			}
			
			// запуск таймера скроллинга списка игр футболиста
			public function scrollFtbDownEvent(e:MouseEvent):void {
				scroll_timer_ftb.start();
				yy__ = mouseY;
			}
			
			// остановка таймера скроллинга списка игр футболиста
			public function scrollFtbUpEvent(e:MouseEvent):void {
				scroll_timer_ftb.stop();
				
			}
			
			// схема скролла списка игр футболиста
			public function scrollFtbTimerEvent(e:TimerEvent):void {
				
				// ебаная схема скролла!!!!
				
				//e.target.y += (mouseY - yy__);
				scroll_ftb.y += (mouseY - yy__);
				
				if (scroll_ftb.y >= 229 && scroll_ftb.y <= 430) {
					
					var rect:Rectangle = footman_stat_list.scrollRect;
				
					rect.y += ((mouseY - yy__)/300*1000);
				
					footman_stat_list.scrollRect = rect;
					
					yy__ = mouseY;
				}
				
				
				if (scroll_ftb.y < 229) {
					
					var rect:Rectangle = footman_stat_list.scrollRect;				
					rect.y = 0;
					footman_stat_list.scrollRect = rect;
					scroll_ftb.y = 229;
				}
				
				if (scroll_ftb.y > 430) {
							
					var rect:Rectangle = footman_stat_list.scrollRect;
					//rect.y += (((mouseY - yy__)-(scroll_clubs.y - 822))/400*500);
					rect.y = 650;
					footman_stat_list.scrollRect = rect;
					scroll_ftb.y = 430;
				}
				
				////////////////////////////
			}
			
			// запуск таймера скроллинга списка туров
			public function scrolldownToursEvent(e:MouseEvent):void {
				scroll_timer_tours.start();
				yy__ = mouseY;
			}
			
			// остановка таймера списка туров
			public function scrollupToursEvent(e:MouseEvent):void {
				scroll_timer_tours.stop();
				
			}
			// схема скролла списка туров колесом
			public function toursWheelHandler(e:MouseEvent):void {
				
				if (scroll_tou.y >= 15 && scroll_tou.y <= 650) {
					
					var rect:Rectangle = dropdown_menu_sprite2.scrollRect;
						rect.y -= e.delta*5;
					dropdown_menu_sprite2.scrollRect = rect;
					scroll_tou.y -= e.delta*10*260/500;
				}
				
				if (scroll_tou.y < 15) {
					
					var rect:Rectangle = dropdown_menu_sprite2.scrollRect;
					rect.y = 0;
					dropdown_menu_sprite2.scrollRect = rect;
					scroll_tou.y = 15;
				}
				
				if (scroll_tou.y > 650) {
					
					var rect:Rectangle = dropdown_menu_sprite2.scrollRect;
						rect.y = 425;
				
					dropdown_menu_sprite2.scrollRect = rect;
					
					scroll_tou.y = 650;
				}
				
				////////////////////////////
			}
			///////////
			// схема скролла списка туров 
			public function scrollToursTimerEvent(e:TimerEvent):void {
				
				// ебаная схема скролла!!!!
				
				//e.target.y += (mouseY - yy__);
				scroll_tou.y += (mouseY - yy__)*3;
				
				if (scroll_tou.y >= 15 && scroll_tou.y <= 650) {
					
					var rect:Rectangle = dropdown_menu_sprite2.scrollRect;
				
					rect.y += ((mouseY - yy__)/260*500);
				
					dropdown_menu_sprite2.scrollRect = rect;
					
					yy__ = mouseY;
				}
				
				
				if (scroll_tou.y < 15) {
					
					
					var rect:Rectangle = dropdown_menu_sprite2.scrollRect;
					rect.y = 0;
					
					dropdown_menu_sprite2.scrollRect = rect;
					
					scroll_tou.y = 15;
					
				}
				
				if (scroll_tou.y > 650) {
					
					
					var rect:Rectangle = dropdown_menu_sprite2.scrollRect;
				
					rect.y = 425;
				
					dropdown_menu_sprite2.scrollRect = rect;
					
					scroll_tou.y = 650;
				}
				
				////////////////////////////
			}
			
			
			///////////
			public function newRequest(method:String):void {
				var time:Date = new Date();
				var params:Object = {method: method, time:time, id_tm: current_tournament};
				
			}
			
			// метод запроса списка лидеров
			public function getLeaders(part:int, tour:int):void {
				if (tour == current_tour)
					tour = 0;
				var time:Date = new Date();
				var params:Object = {method: "getLeaders", time:time, id_tm: current_tournament, part:part, tour:tour};
				
				var keys:Array = new Array();
				for (var k:String in params)
					keys.push(k);
				keys.sort();
				woff_sig = String(woff_uid);			
					for (var i:int = 0; i < keys.length; i++)
						woff_sig = woff_sig + keys[i] + "=" + params[keys[i]];
						
				woff_sig = woff_sig + "DuIP8H5HnE";
				
				//params.test = woff_sig;
				
				woff_sig = MD5.encrypt(woff_sig); // используем метод hash класса md5 и получаем сигнатуру
				
				params.sig = String(woff_sig);
				params.uid = String(woff_uid);
					
				
				woff_general_request.data = new URLVariables();
				
  				for (var k:String in params)
					woff_general_request.data[k] = params[k];
					
				var woff_Leaders_loader:URLLoader = new URLLoader();
				woff_Leaders_loader.addEventListener(Event.COMPLETE, woffLeadersLoadComplete);
				woff_Leaders_loader.load(woff_general_request);
				
			}
			// метод запроса списка лидеров турнира
			public function getLeadersTournament(part:int):void {
				//if (tour == current_tour)
					//tour = 0;
				var time:Date = new Date();
				var params:Object = {method: "getLeaders", time:time, id_tm: current_tournament, part:part};
				
				var keys:Array = new Array();
				for (var k:String in params)
					keys.push(k);
				keys.sort();
				woff_sig = String(woff_uid);			
				for (var i:int = 0; i < keys.length; i++)
					woff_sig = woff_sig + keys[i] + "=" + params[keys[i]];
				
				woff_sig = woff_sig + "DuIP8H5HnE";
				
				//params.test = woff_sig;
				
				woff_sig = MD5.encrypt(woff_sig); // используем метод hash класса md5 и получаем сигнатуру
				
				params.sig = String(woff_sig);
				params.uid = String(woff_uid);
				
				
				woff_general_request.data = new URLVariables();
				
				for (var k:String in params)
					woff_general_request.data[k] = params[k];
				
				var woff_Leaders_loader:URLLoader = new URLLoader();
				woff_Leaders_loader.addEventListener(Event.COMPLETE, woffLeadersLoadComplete);
				woff_Leaders_loader.load(woff_general_request);
				
			}
			
			// метод запроса списка лидеров в законченном чемпионате
			public function getLeadersFinal():void {
				//if (tour == current_tour)
					//tour = 0;
				var time:Date = new Date();
				var params:Object = {method: "getLeaders", time:time, id_tm: current_tournament, part:"1"};
				
				var keys:Array = new Array();
				for (var k:String in params)
					keys.push(k);
				keys.sort();
				woff_sig = String(woff_uid);			
				for (var i:int = 0; i < keys.length; i++)
					woff_sig = woff_sig + keys[i] + "=" + params[keys[i]];
				
				woff_sig = woff_sig + "DuIP8H5HnE";
				
				//params.test = woff_sig;
				
				woff_sig = MD5.encrypt(woff_sig); // используем метод hash класса md5 и получаем сигнатуру
				
				params.sig = String(woff_sig);
				params.uid = String(woff_uid);
				
				
				woff_general_request.data = new URLVariables();
				
				for (var k:String in params)
					woff_general_request.data[k] = params[k];
				
				var woff_Leaders_loader:URLLoader = new URLLoader();
				woff_Leaders_loader.addEventListener(Event.COMPLETE, woffLeadersFinalLoadComplete);
				woff_Leaders_loader.load(woff_general_request);
				
			}
			// сборка запроса с методом
			public function setMethod(method:String, new_id_tm:int = 0):void {
				var time:Date = new Date();
				if ( new_id_tm == 0 ) {
					new_id_tm = current_tournament;
				}
				var params:Object = {method: method, time:time, id_tm: new_id_tm};
				
				var keys:Array = new Array();
				for (var k:String in params)
					keys.push(k);
				keys.sort();
				woff_sig = String(woff_uid);			
					for (var i:int = 0; i < keys.length; i++)
						woff_sig = woff_sig + keys[i] + "=" + params[keys[i]];
						
				woff_sig = woff_sig + "DuIP8H5HnE";
				
				//params.test = woff_sig;
				
				woff_sig = MD5.encrypt(woff_sig); // используем метод hash класса md5 и получаем сигнатуру
				
				params.sig = String(woff_sig);
				params.uid = String(woff_uid);
					
				
				woff_general_request.data = new URLVariables();
				
  				for (var k:String in params)
					woff_general_request.data[k] = params[k];
				
				//woff_general_request.data = w;
				//var woff_sig_:String = woff_uid+woff_secret;
			}
			
			// сборка запроса с методом регистрации 100 хуёв
			public function regNew(id:int):void {
				var time:Date = new Date();
				var params:Object = {method: "registerNewPlayer", time:time, id_tm: current_tournament};
				
				var keys:Array = new Array();
				for (var k:String in params)
					keys.push(k);
				keys.sort();
				woff_sig = String(id);			
					for (var i:int = 0; i < keys.length; i++)
						woff_sig = woff_sig + keys[i] + "=" + params[keys[i]];
						
				woff_sig = woff_sig + "DuIP8H5HnE";
				
				//params.test = woff_sig;
				
				woff_sig = MD5.encrypt(woff_sig); // используем метод hash класса md5 и получаем сигнатуру
				
				params.sig = String(woff_sig);
				params.uid = String(id);
					
				
				woff_general_request.data = new URLVariables();
				
  				for (var k:String in params)
					woff_general_request.data[k] = params[k];
				
				var woff_RegNew_loader:URLLoader = new URLLoader();
				woff_RegNew_loader.load(woff_general_request);
			}
			
			// метод извлечения команды
			public function getTeam(method:String, tour:int):void {
				var time:Date = new Date();
				var params:Object = {method: method, tour: tour, time:time, id_tm: current_tournament};
				
				var keys:Array = new Array();
				for (var k:String in params)
					keys.push(k);
				keys.sort();
				woff_sig = String(woff_uid);			
					for (var i:int = 0; i < keys.length; i++)
						woff_sig = woff_sig + keys[i] + "=" + params[keys[i]];
						
				woff_sig = woff_sig + "DuIP8H5HnE";
				
				//params.test = woff_sig;
				
				woff_sig = MD5.encrypt(woff_sig); // используем метод hash класса md5 и получаем сигнатуру
				
				params.sig = String(woff_sig);
				params.uid = String(woff_uid);
				//params.time = new Date();
				woff_general_request.data = new URLVariables();
				
  				for (var k:String in params)
					woff_general_request.data[k] = params[k];
				
			}
			
			// запрос результатов тура ( место и очки )
			public function getMyTourScore(tour:int):void {
				var params:Object = {method: "getMyTourScore", tour: tour, id_tm: current_tournament};
				
				var keys:Array = new Array();
				for (var k:String in params)
					keys.push(k);
				keys.sort();
				woff_sig = String(woff_uid);			
					for (var i:int = 0; i < keys.length; i++)
						woff_sig = woff_sig + keys[i] + "=" + params[keys[i]];
						
				woff_sig = woff_sig + "DuIP8H5HnE";
				
				//params.test = woff_sig;
				
				woff_sig = MD5.encrypt(woff_sig); // используем метод hash класса md5 и получаем сигнатуру
				
				params.sig = String(woff_sig);
				params.uid = String(woff_uid);
				woff_general_request.data = new URLVariables();
				
  				for (var k:String in params)
					woff_general_request.data[k] = params[k];
					
				var woff_tourStat_loader:URLLoader = new URLLoader();
				woff_tourStat_loader.addEventListener(Event.COMPLETE, MyTourScoreLoadComplete);
				woff_tourStat_loader.load(woff_general_request);
				}
			
			// окончание загрузки инфы о туре
			public function MyTourScoreLoadComplete(e:Event):void {
				var woff_answer:XML = new XML(e.target.data);
				
				main2_txt8_.setText(String(woff_answer.tour_score.text()/10));
				if (String(woff_answer.position.text()) == "(ещё не набрал очков)") {
					main2_txt9_.setText("--"); 
				} else {
					main2_txt9_.setText(woff_answer.position.text());
				}
			}
			
			// запрос статистики команды
			public function getTeamStats(tour:int):void {
				stage.addChild(loading_balls);
				loading_balls.on();
				var time:Date = new Date();
				var params:Object = {method: "getTeamStats", tour: tour, time:time, id_tm: current_tournament};
				
				var keys:Array = new Array();
				for (var k:String in params)
					keys.push(k);
				keys.sort();
				woff_sig = String(woff_uid);			
					for (var i:int = 0; i < keys.length; i++)
						woff_sig = woff_sig + keys[i] + "=" + params[keys[i]];
						
				woff_sig = woff_sig + "DuIP8H5HnE";
				
				//params.test = woff_sig;
				
				woff_sig = MD5.encrypt(woff_sig); // используем метод hash класса md5 и получаем сигнатуру
				
				params.sig = String(woff_sig);
				params.uid = String(woff_uid);
				woff_general_request.data = new URLVariables();
				
  				for (var k:String in params)
					woff_general_request.data[k] = params[k];
					
				var woff_TeamStats_loader:URLLoader = new URLLoader();
				woff_TeamStats_loader.addEventListener(Event.COMPLETE, woff_TeamStats_LoadComplete);
				woff_TeamStats_loader.load(woff_general_request);
				
			}
			
			// окончание загрузки статистики команды
			public function woff_TeamStats_LoadComplete(e:Event):void {
				//
				var woff_answer:XML = new XML(e.target.data);
			loading_balls.off();
			
				for (var n:int=1; n <= 15; n++) {
					
					full_matches[n].setText("");
					partial_matches[n].setText("");
					goals[n].setText("");
					penalties[n].setText("");
					autogoals[n].setText("");
					hat_tricks[n].setText("");
					assists[n].setText("");
					failed_penatlies[n].setText("");
					reflected_penalties[n].setText("");
					reflected_goals[n].setText("");
					yellow_cards[n].setText("");
					red_cards[n].setText("");
					ko[n].setText("");
					summary[n].setText("");
				}
					// парсинг статистики
				for (var n:int=1; n <= woff_answer.footballer_stats.length(); n++) {
					
					//eu_cost[n]
					full_matches[n].setText(woff_answer.footballer_stats[n-1].full_matches.text());
					partial_matches[n].setText(woff_answer.footballer_stats[n-1].partial_matches.text());
					goals[n].setText(woff_answer.footballer_stats[n-1].goals.text());
					penalties[n].setText(woff_answer.footballer_stats[n-1].penalties.text());
					autogoals[n].setText(woff_answer.footballer_stats[n-1].autogoals.text());
					hat_tricks[n].setText(woff_answer.footballer_stats[n-1].hat_tricks.text());
					assists[n].setText(woff_answer.footballer_stats[n-1].assists.text());
					failed_penatlies[n].setText(woff_answer.footballer_stats[n-1].failed_penatlies.text());
					reflected_penalties[n].setText(woff_answer.footballer_stats[n-1].reflected_penalties.text());
					reflected_goals[n].setText(woff_answer.footballer_stats[n-1].reflected_goals.text());
					yellow_cards[n].setText(woff_answer.footballer_stats[n-1].yellow_cards.text());
					red_cards[n].setText(woff_answer.footballer_stats[n-1].red_cards.text());
					
					var ko_temp:Number = woff_answer.footballer_stats[n-1].tour_team_score.text();
					ko[n].setText(ko_temp.toFixed(1));
					
					var summary_temp:Number = int(woff_answer.footballer_stats[n-1].tour_score.text()/10);
					summary[n].setText(summary_temp.toFixed(1));
					
				}
				
			}
			// запрос чужой команды
			public function getTeam2(method:String, tour:int, team_id:int):void {
				
				var params:Object = {method: method, tour: tour, id_tm: current_tournament};
				
				var keys:Array = new Array();
				for (var k:String in params)
					keys.push(k);
				keys.sort();
				woff_sig = String(team_id);			
					for (var i:int = 0; i < keys.length; i++)
						woff_sig = woff_sig + keys[i] + "=" + params[keys[i]];
						
				woff_sig = woff_sig + "DuIP8H5HnE";
				
				//params.test = woff_sig;
				
				woff_sig = MD5.encrypt(woff_sig); // используем метод hash класса md5 и получаем сигнатуру
				
				params.sig = String(woff_sig);
				params.uid = String(team_id);
				woff_general_request.data = new URLVariables();
				
  				for (var k:String in params)
					woff_general_request.data[k] = params[k];
				
			}
			
			// установка любимого клуба			
			public function setFC(fav_club:String):void {
				
				var params:Object = {method: "setFavClub", id: fav_club, id_tm: current_tournament};
				
				var keys:Array = new Array();
				for (var k:String in params)
					keys.push(k);
				keys.sort();
				woff_sig = String(woff_uid);			
					for (var i:int = 0; i < keys.length; i++)
						woff_sig = woff_sig + keys[i] + "=" + params[keys[i]];
						
				woff_sig = woff_sig + "DuIP8H5HnE";
				
				//params.test = woff_sig;
				
				woff_sig = MD5.encrypt(woff_sig); // используем метод hash класса md5 и получаем сигнатуру
				
				params.sig = String(woff_sig);
				params.uid = String(woff_uid);
				woff_general_request.data = new URLVariables();
				
  				for (var k:String in params)
					woff_general_request.data[k] = params[k];
					
				
			}
			
			// генерация запроса на список трансферов
			public function getTransfer(ii:int, iii:int, iiii:int):void {
				
				var params:Object = {method: "getFootballers", role: iii, id_f: ii, id_c:iiii, id_tm: current_tournament};
				
				var keys:Array = new Array();
				for (var k:String in params)
					keys.push(k);
				keys.sort();
				woff_sig = String(woff_uid);			
					for (var i:int = 0; i < keys.length; i++)
						woff_sig = woff_sig + keys[i] + "=" + params[keys[i]];
						
				woff_sig = woff_sig + "DuIP8H5HnE";
				
				woff_sig = MD5.encrypt(woff_sig); // используем метод hash класса md5 и получаем сигнатуру
				
				params.sig = String(woff_sig);
				params.uid = String(woff_uid);
				woff_general_request.data = new URLVariables();
				
  				for (var k:String in params)
					woff_general_request.data[k] = params[k];
							
				
			}
			
			
			// генерация запроса на трансфер
			public function setTransfer(dd:int, ddd:int):void {
				
				var params:Object = {method: "doTransfer", id1: dd, id2: ddd, id_tm: current_tournament};
				
				var keys:Array = new Array();
				for (var k:String in params)
					keys.push(k);
				keys.sort();
				woff_sig = String(woff_uid);			
					for (var i:int = 0; i < keys.length; i++)
						woff_sig = woff_sig + keys[i] + "=" + params[keys[i]];
						
				woff_sig = woff_sig + "DuIP8H5HnE";
				
				woff_sig = MD5.encrypt(woff_sig); // используем метод hash класса md5 и получаем сигнатуру
				
				params.sig = String(woff_sig);
				params.uid = String(woff_uid);
				woff_general_request.data = new URLVariables();
				
  				for (var k:String in params)
					woff_general_request.data[k] = params[k];
							
				
			}
			
			// генерация запроса на новый трансфер
			public function setNewTransfer(dd:int, ddd:int):void {
				
				var params:Object = {method: "addFootballerToTeam", id_f: dd, status: ddd, id_tm: current_tournament};
				
				var keys:Array = new Array();
				for (var k:String in params)
					keys.push(k);
				keys.sort();
				woff_sig = String(woff_uid);			
					for (var i:int = 0; i < keys.length; i++)
						woff_sig = woff_sig + keys[i] + "=" + params[keys[i]];
						
				woff_sig = woff_sig + "DuIP8H5HnE";
				
				woff_sig = MD5.encrypt(woff_sig); // используем метод hash класса md5 и получаем сигнатуру
				
				params.sig = String(woff_sig);
				params.uid = String(woff_uid);
				woff_general_request.data = new URLVariables();
				
  				for (var k:String in params)
					woff_general_request.data[k] = params[k];
							
				
			}
			
			// генерация запроса на замены игроков
			public function setStatus(footId1:int, newS1:int, footId2:int, newS2:int):void {
				
				var params:Object = {method: "setStatus", id_f1: footId1, status1: newS1, id_f2: footId2, status2: newS2, id_tm: current_tournament};
				
				var keys:Array = new Array();
				for (var k:String in params)
					keys.push(k);
				keys.sort();
				woff_sig = String(woff_uid);			
					for (var i:int = 0; i < keys.length; i++)
						woff_sig = woff_sig + keys[i] + "=" + params[keys[i]];
						
				woff_sig = woff_sig + "DuIP8H5HnE";
				
				woff_sig = MD5.encrypt(woff_sig); // используем метод hash класса md5 и получаем сигнатуру
				
				params.sig = String(woff_sig);
				params.uid = String(woff_uid);
				woff_general_request.data = new URLVariables();
				
  				for (var k:String in params)
					woff_general_request.data[k] = params[k];
					
					
				var woff_newStatus_loader:URLLoader = new URLLoader();
				if (newS2 == 0) 
				woff_newStatus_loader.addEventListener(Event.COMPLETE, button2event);
				
				woff_newStatus_loader.load(woff_general_request);		
				
			}
			
			// генерация запроса с названием команды
			public function setTeamName(team_name:String):void {
				
				var params:Object = {method: "setTeamTitle", title: team_name, id_tm: current_tournament};
				
				var keys:Array = new Array();
				for (var k:String in params)
					keys.push(k);
				keys.sort();
				woff_sig = String(woff_uid);			
					for (var i:int = 0; i < keys.length; i++)
						woff_sig = woff_sig + keys[i] + "=" + params[keys[i]];
						
				woff_sig = woff_sig + "DuIP8H5HnE";
				
				woff_sig = MD5.encrypt(woff_sig); // используем метод hash класса md5 и получаем сигнатуру
				
				params.sig = String(woff_sig);
				params.uid = String(woff_uid);
				woff_general_request.data = new URLVariables();
				
  				for (var k:String in params)
					woff_general_request.data[k] = params[k];
							
				
			}
			
			// событие отправки на сервер набранного текста "название команды"
			public function textInputEvent(e:KeyboardEvent):void {
				if( e.charCode == 13 ){
					
					setTeamName(main1_txt8.txt());
					
				var woff_teamName_loader:URLLoader = new URLLoader();
				woff_teamName_loader.addEventListener(Event.COMPLETE, button1event);
				woff_teamName_loader.load(woff_general_request);
				
				main1_txt8.dispatchEvent(new Event(Event.CLOSE));
			}
			}
			
			// функция реализации поиска
			public function searchEvent(e:KeyboardEvent):void {
				if( e.charCode == 13 ){
					
				var footballers:XMLList = search_xml.*;
					//var search_xml_res:XMLList = footballers.(name.toLowerCase() == search_field.txt() || name == search_field.txt() || club_title == search_field.txt());
					
				
				var search_xml_res:XMLList = new XMLList();	
				var counter:int = 0;	
				for each (var blabla:XML in footballers) {
					if (blabla.name.toLowerCase().indexOf(search_field.txt().toLowerCase()) != -1 || blabla.club_title.toLowerCase().indexOf(search_field.txt().toLowerCase()) != -1 || blabla.club_title.toLowerCase() == search_field.txt().toLowerCase()) {
						search_xml_res[counter] = blabla;
						counter++;
					}
				}
				
				search_field.setText("");
				
				fff = [];
				genTransferList(search_xml_res.length());
				
			for (var n:int=1; n < search_xml_res.length()+1; n++) {
				
				fff.push({cost:search_xml_res[n-1].cost.text(), 
								name:search_xml_res[n-1].name.text(),
								club:search_xml_res[n-1].club_title.text(),
								id:search_xml_res[n-1].id.text(),
								rating:search_xml_res[n-1].rating.text(),
								tm_scores:search_xml_res[n-1].tournament_score.text(),
								efficiency:Math.round(int(search_xml_res[n-1].tournament_score.text())*100/int(search_xml_res[n-1].cost.text()))/10});
								
				cost[n].setText(int(search_xml_res.cost[n-1].text())/10+"");
				transfer_array[n].setText(search_xml_res.name[n-1].text());
				transfer_array[n].setId(search_xml_res.id[n-1].text());
				transfer_club_array[n].setText(search_xml_res.club_title[n-1].text());
				transfer_points_array[n].setText(search_xml_res.tournament_score[n-1].text());
				transfer_get_array[n].setId2(search_xml_res.id[n-1].text());
				transfer_rating[n].setText(search_xml_res.rating[n-1].text());
				transfer_efficiency[n].setText(Math.round(int(search_xml_res[n-1].tournament_score.text())*100/int(search_xml_res[n-1].cost.text()))/10);
				}
			
			/*
			for (var nnnn:int = search_xml_res.length()+1; nnnn<350; nnnn++) {
				transfer_array[nnnn].setText("------");
				transfer_array[nnnn].setId(0);
				transfer_club_array[nnnn].setText("--");
				cost[nnnn].setText("--");
				transfer_points_array[nnnn].setText("--");
				transfer_rating[nnnn].setText("--");
				transfer_efficiency[nnnn].setText("-");
				transfer_get_array[nnnn].setId2("--");
				}
			*/
					var rect:Rectangle = transfer_list.scrollRect;
					rect.y = 0;
					transfer_list.scrollRect = rect;
					scroll_tr.y = 125;
				}
			}
			
			public function onComplete(id:int):void 
                { 
                       navigateToURL(new URLRequest("http://vkontakte.ru/id"+id));
                } 
             
             
            // функия генерации списка команды на 1-й странице    
            public function generateTeamList():void {
            	
            	//var woff_answer:XML = new XML("");
            	
            	footman_array = new Array();
				footman_club = new Array();
				footman_pic = new Array();
				
			for (var nnn:int=1; nnn<12; nnn++) {
				
				var freq2:int = new int(28*nnn);
				
				number = nnn;
							
				footman_array[nnn] = new text(5, freq2, "---", "3");
				footman_pic[nnn] = new team_role_pic(9);
				footman_array[nnn].useHandCursor = true;
				//footman_array[nnn].buttonMode = true;
				footman_array[nnn].addEventListener(MouseEvent.MOUSE_OVER, mouseOver);
				footman_array[nnn].addEventListener(MouseEvent.MOUSE_OUT, mouseOut);
				
				//if (nnn <= woff_answer.footballer.length()) {
					//footman_pic[nnn].setRole(int(woff_answer.footballer[nnn-1].role.text()));
					
			//	}
				
				footman_pic[nnn].x = 154;
				footman_pic[nnn].y = freq2;
				
				
			footman_array[nnn].addEventListener(MouseEvent.CLICK, footmanEvent);
			
			footman_club[nnn] = new text(5, 10+freq2, "no club", "2");
						
			//razdelitel = new Loader();
			//razdelitel.load(new URLRequest(serv + "img3/razdelitel.png"));
			//razdelitel.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
			var razdelitel:Bitmap = new razdelitel_b();
			razdelitel.x = 7;
			razdelitel.y = 25+freq2;
			
			team_list.addChild(footman_array[nnn]);
			team_list.addChild(footman_club[nnn]);
			team_list.addChild(footman_pic[nnn]);
			team_list.addChild(razdelitel);
			
			
			}
			
			for (nnn=12; nnn<16; nnn++) {
				footman_array[nnn] = new text(0, 0, "---", "3");
				footman_club[nnn] = new text(0, 0, "no club", "2");
				footman_pic[nnn] = new team_role_pic(0);
            }
		}
			
			// функция замены игрока на поле
			public function footmanDownEvent(e:MouseEvent):void {
				
				if (e.currentTarget.footId !== 0) {
				footman_up[12].removeEventListener(MouseEvent.CLICK, footmanUpEvent);
				footman_up[13].removeEventListener(MouseEvent.CLICK, footmanUpEvent);
				footman_up[14].removeEventListener(MouseEvent.CLICK, footmanUpEvent);
				footman_up[15].removeEventListener(MouseEvent.CLICK, footmanUpEvent);
				
				
				footman_up[12].filters = [];
				footman_up[13].filters = [];
				footman_up[14].filters = [];
				footman_up[15].filters = [];
				
				footman_down[current_foot_id1_].filters = [];
				
				current_foot_id1 = e.currentTarget.footId;
				current_foot_id1_ = e.currentTarget.footId_;
				
				footman_down[current_foot_id1_].filters = [myGlow];
				
				if (current_foot_id1_ == 1) {
				footman_up[12].filters = [myGlow];
				footman_up[12].addEventListener(MouseEvent.CLICK, footmanUpEvent);
					current_status1 = 2;
				} else {
					
				footman_up[13].filters = [myGlow];
				footman_up[14].filters = [myGlow];
				footman_up[15].filters = [myGlow];
				
				footman_up[13].addEventListener(MouseEvent.CLICK, footmanUpEvent);
				footman_up[14].addEventListener(MouseEvent.CLICK, footmanUpEvent);
				footman_up[15].addEventListener(MouseEvent.CLICK, footmanUpEvent);
				
				if (current_foot_id1_ > 1 && current_foot_id1_ < zope1+2) {
				
					if (zope1 == 3) {
						for (var i:int = 13; i <= 15; i++) {
							if (footman_up[i].role !== 1) {
								footman_up[i].removeEventListener(MouseEvent.CLICK, footmanUpEvent);
								footman_up[i].filters = [];
							}
						}
					}
				}
				if (current_foot_id1_ > zope1+1 && current_foot_id1_ < zope1+zope2+2) {
				
					if (zope2 == 3) {
						for (var i:int = 13; i <= 15; i++) {
							if (footman_up[i].role !== 2) {
								footman_up[i].removeEventListener(MouseEvent.CLICK, footmanUpEvent);
								footman_up[i].filters = [];
							}
						}
					}
				}
				if (current_foot_id1_ > zope1+zope2+1 && current_foot_id1_ <= 11) {
				
					if (zope3 == 1) {
						for (var i:int = 13; i <= 15; i++) {
							if (footman_up[i].role !== 3) {
								footman_up[i].removeEventListener(MouseEvent.CLICK, footmanUpEvent);
								footman_up[i].filters = [];
							}
						}
					}
				}
				/*
				if (current_foot_id1_ > 5 && current_foot_id1_ < 10) {
				footman_up[14].filters = [myGlow];
				footman_up[14].addEventListener(MouseEvent.CLICK, footmanUpEvent);
				current_status1 = 4;
				}
				
				if (current_foot_id1_ > 9 && current_foot_id1_ < 12) {
				footman_up[15].filters = [myGlow];
				footman_up[15].addEventListener(MouseEvent.CLICK, footmanUpEvent);
				current_status1 = 5;
				}
				 * 
				 */
				}
				}
			}
			
			// функция замены игрока замены
			public function footmanUpEvent(e:MouseEvent):void {
				current_foot_id2 = e.currentTarget.footId;
				current_foot_id2_ = e.currentTarget.footId_;
				current_status1 = e.currentTarget.status;
				
				//var myGlow:GlowFilter = new GlowFilter();
				//var myBlur:BlurFilter = new BlurFilter();
				
				footman_down[current_foot_id1_].filters = [];
				
				footman_up[12].filters = [];
				footman_up[13].filters = [];
				footman_up[14].filters = [];
				footman_up[15].filters = [];
				
				footman_up[12].removeEventListener(MouseEvent.CLICK, footmanUpEvent);
				footman_up[13].removeEventListener(MouseEvent.CLICK, footmanUpEvent);
				footman_up[14].removeEventListener(MouseEvent.CLICK, footmanUpEvent);
				footman_up[15].removeEventListener(MouseEvent.CLICK, footmanUpEvent);
				
				var variable:String = String(footman_name_txt[current_foot_id1_].txt());
				//footman_name_txt[current_foot_id1_].setText(String(footman_name_txt[current_foot_id2_]));
				footman_name_txt[current_foot_id1_].setText(String(footman_name_txt[current_foot_id2_].txt()));
				footman_name_txt[current_foot_id2_].setText(variable);
				
				setStatus(current_foot_id1, current_status1, current_foot_id2, 0);
			}
			
			public function getFootballerStats(footmanId:int):void {
				var params:Object = {method: "getFootballerStats", id_f: footmanId, id_tm: current_tournament};
				
				var keys:Array = new Array();
				for (var k:String in params)
					keys.push(k);
				keys.sort();
				woff_sig = String(woff_uid);			
					for (var i:int = 0; i < keys.length; i++)
						woff_sig = woff_sig + keys[i] + "=" + params[keys[i]];
						
				woff_sig = woff_sig + "DuIP8H5HnE";
				
				woff_sig = MD5.encrypt(woff_sig); // используем метод hash класса md5 и получаем сигнатуру
				
				params.sig = String(woff_sig);
				params.uid = String(woff_uid);
				woff_general_request.data = new URLVariables();
				
  				for (var k:String in params)
					woff_general_request.data[k] = params[k];
					
				var woff_FootballerStats_loader:URLLoader = new URLLoader();
				woff_FootballerStats_loader.addEventListener(Event.COMPLETE, woff_FootballerStats_LoadComplete);
				woff_FootballerStats_loader.load(woff_general_request);
			}
			
			public function woff_FootballerStats_LoadComplete(e:Event):void {
				var woff_answer:XML = new XML(e.target.data);
				
				
				footman_txt11.setText(woff_answer.footballer_info.number.text());
				if (woff_answer.footballer_info.role.text() == "0") {
				footman_txt12.setText("Вратарь");
				} else {
					if (woff_answer.footballer_info.role.text() == "1") {
						footman_txt12.setText("Защитник");
					} else {
						if (woff_answer.footballer_info.role.text() == "2") {
							footman_txt12.setText("Полузащитник");
							} else {
							footman_txt12.setText("Нападающий");
							}
					}
				}
				footman_txt13.setText(woff_answer.footballer_info.club_title.text());
				footman_txt14.setText(int(woff_answer.footballer_info.cost.text())/10 + " EU");
				footman_txt15.setText(woff_answer.footballer_info.rating.text() + " %");
			 
			 for (var i:int=1; i<=woff_answer.tour_stat.length(); i++) {
			 	footman_stat_tour[i].setText(woff_answer.tour_stat[i-1].tour_no.text());
			 	footman_stat_array[i].setText(woff_answer.tour_stat[i-1].club_title_guest.text() + " - " + woff_answer.tour_stat[i-1].club_title_owner.text());
				footman_stat_res[i].setText(woff_answer.tour_stat[i-1].guest_score.text() + " - " + woff_answer.tour_stat[i-1].owner_score.text());
				footman_stat_points[i].setText(int(woff_answer.tour_stat[i-1].match_score.text())/10);
			 }
			 for (var ii:int=woff_answer.tour_stat.length()+1; i<=38; i++) {
			 	footman_stat_tour[i].setText("--");
			 	footman_stat_array[i].setText("--- - ---");
				footman_stat_res[i].setText("--- - ---");
				footman_stat_points[i].setText("--");
			 }

		 }
			
			public function enterLeague(e:MouseEvent):void {
				
				if (e.currentTarget.league_id == 33) {
					setMethod("enterPaidTournament");
				
				var enterCashLeagueLoader:URLLoader = new URLLoader();
				enterCashLeagueLoader.addEventListener(Event.COMPLETE, errorEvent);
				enterCashLeagueLoader.addEventListener(Event.COMPLETE, updateInfo);
				enterCashLeagueLoader.load(woff_general_request);
				
				} else {
				var params:Object = {method: "enterLeague", id_l: e.currentTarget.league_id, id_tm: current_tournament};
				
				var keys:Array = new Array();
				for (var k:String in params)
					keys.push(k);
				keys.sort();
				woff_sig = String(woff_uid);			
					for (var i:int = 0; i < keys.length; i++)
						woff_sig = woff_sig + keys[i] + "=" + params[keys[i]];
						
				woff_sig = woff_sig + "DuIP8H5HnE";
				
				woff_sig = MD5.encrypt(woff_sig); // используем метод hash класса md5 и получаем сигнатуру
				
				params.sig = String(woff_sig);
				params.uid = String(woff_uid);
				woff_general_request.data = new URLVariables();
				
  				for (var k:String in params)
					woff_general_request.data[k] = params[k];
					
				var woff_enterLeague_loader:URLLoader = new URLLoader();
				woff_enterLeague_loader.addEventListener(Event.COMPLETE, errorEvent);
				woff_enterLeague_loader.load(woff_general_request);
				
				player_liga.removeChild(main3_txt5);
				player_liga.addChild(main3_txt5_);
				main3_txt5_.setId(e.currentTarget.league_id);
				}
				
			}
			public function leaveLeague(e:MouseEvent):void {
				
				var params:Object = {method: "leaveLeague", id_l: e.currentTarget.league_id, id_tm: current_tournament};
				
				var keys:Array = new Array();
				for (var k:String in params)
					keys.push(k);
				keys.sort();
				woff_sig = String(woff_uid);			
					for (var i:int = 0; i < keys.length; i++)
						woff_sig = woff_sig + keys[i] + "=" + params[keys[i]];
						
				woff_sig = woff_sig + "DuIP8H5HnE";
				
				woff_sig = MD5.encrypt(woff_sig); // используем метод hash класса md5 и получаем сигнатуру
				
				params.sig = String(woff_sig);
				params.uid = String(woff_uid);
				woff_general_request.data = new URLVariables();
				
  				for (var k:String in params)
					woff_general_request.data[k] = params[k];
					
				var woff_enterLeague_loader:URLLoader = new URLLoader();
				//woff_enterLeague_loader.addEventListener(Event.COMPLETE, woff_FootballerStats_LoadComplete);
				woff_enterLeague_loader.load(woff_general_request);
				
				player_liga.removeChild(main3_txt5_);
				player_liga.addChild(main3_txt5);
				main3_txt5.setId(e.currentTarget.league_id);
				
			}
			
			// запрос чужих лиг
			public function getLigs(uid:int):void {
				
				var params:Object = {method: "getMyLeagues", id_tm: current_tournament};
				
				var keys:Array = new Array();
				for (var k:String in params)
					keys.push(k);
				keys.sort();
				woff_sig = String(uid);			
					for (var i:int = 0; i < keys.length; i++)
						woff_sig = woff_sig + keys[i] + "=" + params[keys[i]];
						
				woff_sig = woff_sig + "DuIP8H5HnE";
				
				//params.test = woff_sig;
				
				woff_sig = MD5.encrypt(woff_sig); // используем метод hash класса md5 и получаем сигнатуру
				
				params.sig = String(woff_sig);
				params.uid = String(uid);
				woff_general_request.data = new URLVariables();
				
  				for (var k:String in params)
					woff_general_request.data[k] = params[k];
				
				//woff_general_request.data = w;
				//var woff_sig_:String = woff_uid+woff_secret;
			}
			
			// запрос состава лиг
			public function getLeagueMembers(uid:String):void {
				
				var params:Object = {method: "getLeagueMembers", id_l: uid, id_tm: current_tournament};
				
				var keys:Array = new Array();
				for (var k:String in params)
					keys.push(k);
				keys.sort();
				woff_sig = String(woff_uid);			
					for (var i:int = 0; i < keys.length; i++)
						woff_sig = woff_sig + keys[i] + "=" + params[keys[i]];
						
				woff_sig = woff_sig + "DuIP8H5HnE";
				
				//params.test = woff_sig;
				
				woff_sig = MD5.encrypt(woff_sig); // используем метод hash класса md5 и получаем сигнатуру
				
				params.sig = String(woff_sig);
				params.uid = String(woff_uid);
				woff_general_request.data = new URLVariables();
				
  				for (var k:String in params)
					woff_general_request.data[k] = params[k];
				
				//woff_general_request.data = w;
				//var woff_sig_:String = woff_uid+woff_secret;
			}
			
			// обработка ошибок
			public function errorEvent(e:Event):void {
				var woff_answer:XML = new XML(e.target.data);
				
				if (String(woff_answer.error.text()) !== "") {
					addChild(errorSprite);
					
					errorText.setText("\n" + woff_answer.error.text());
				
					if (String(woff_answer.error.text()) == "502:Not enough votes on user's balance") {
						//addChild(errorSprite);
						
						errorText.setText("\nНедостаточно очков менеджера" +
							"\n");
						
						var payment:text = new text(268, 76, "пополнить счет", "welcomeFaq");
							payment.addEventListener(MouseEvent.CLICK, showPaymentBox);
							payment.addEventListener(MouseEvent.MOUSE_OVER, function() {
								payment.filters = [myGlow_blue]
							});
							payment.addEventListener(MouseEvent.MOUSE_OUT, function() {
								payment.filters = []
							});
						errorSprite.addChild(payment);
					}
					
					if  (String(woff_answer.error.text()) == "Вы уже вступили в максимальное количество лиг в этом турнире (2). Если хотите поменять свой выбор, покиньте какую-нибудь другую лигу.") {
						errorText.setText("\nВы уже вступили в максимальное количество лиг в этом\nтурнире." +
							" Если хотите поменять свой выбор, покиньте\nкакую-нибудь другую лигу.");
					}
				}
			}
			
			public function errorClose(e:Event):void {
				removeChild(errorSprite);
				
			
				
			}
			
			// функция приглашения друзей 
			private function inviteFriends(e:MouseEvent):void {
				wrapper.external.showInviteBox();
			}
			
			private function resetTransferSort():void {
				transfer_txt2.setText("Цена");
				transfer_txt3.setText("ФАМИЛИЯ ИМЯ         КЛУБ ");
				transfer_txt5.setText("ПОПУЛ.");
				transfer_txt4.setText("ОЧКИ");
				transfer_txt6.setText("ЭФФЕКТ.");
			}
			
			private function transferSortCost(e:MouseEvent):void {
				
				if(transfer_txt2.txt() == "Цена /\u005C") {
					transfer_txt2.setText("Цена \u005C/");
					//fff.sortOn("cost", Array.NUMERIC);
					fff.reverse();
					
					
				} else { 
					resetTransferSort();
					transfer_txt2.setText("Цена /\u005C");
					fff.sortOn("cost", Array.NUMERIC);
				}
				
				parseTransfersSort(fff);	
			}
			
			private function transferSortName(e:MouseEvent):void {
				
				if(transfer_txt3.txt() == "ФАМИЛИЯ ИМЯ    /\u005C     КЛУБ ") {
					transfer_txt3.setText("ФАМИЛИЯ ИМЯ     \u005C/    КЛУБ ");
					fff.sortOn("name");
				} else { 
					resetTransferSort();
					transfer_txt3.setText("ФАМИЛИЯ ИМЯ    /\u005C     КЛУБ ");
					fff.sortOn("name", Array.DESCENDING);
				}
				
				parseTransfersSort(fff);
			}
			
			private function transferSortRating(e:MouseEvent):void {
				
				if(transfer_txt5.txt() == "ПОПУЛ. /\u005C") {
					transfer_txt5.setText("ПОПУЛ. \u005C/");
					fff.reverse();
				} else { 
					resetTransferSort();
					transfer_txt5.setText("ПОПУЛ. /\u005C");
					fff.sortOn("rating", Array.NUMERIC);
				}
				
				parseTransfersSort(fff);				
			}
			
			private function transferSortPoints(e:MouseEvent):void {
				
				if(transfer_txt4.txt() == "ОЧКИ /\u005C") {
					transfer_txt4.setText("ОЧКИ \u005C/");
					fff.reverse();
				} else { 
					resetTransferSort();
					transfer_txt4.setText("ОЧКИ /\u005C");
					fff.sortOn("tm_scores", Array.NUMERIC);
				}
				
				parseTransfersSort(fff);				
			}
			
			private function transferSortEff(e:MouseEvent):void {
				
				if(transfer_txt6.txt() == "ЭФФЕКТ. /\u005C") {
					transfer_txt6.setText("ЭФФЕКТ. \u005C/");
					fff.reverse();
				} else { 
					resetTransferSort();
					transfer_txt6.setText("ЭФФЕКТ. /\u005C");
					fff.sortOn("efficiency", Array.NUMERIC);
				}
				
				parseTransfersSort(fff);				
			}
			
			private function showSettingsBox(e:Object):void {
				woff_isAppUser = 1;
				wrapper.external.showSettingsBox(3);
			}
			
			private function mouseOver(e:MouseEvent):void {
				//var test_bevel:BevelFilter = new BevelFilter();
				//test_bevel.strength = 1;
				//test_bevel.shadowAlpha = 0.5;
				e.currentTarget.filters = [myGlow_blue];
				
				Mouse.hide();
				//Mouse.cursor = MouseCursor.HAND;
			}
			
			private function mouseOut(e:MouseEvent):void {
				Mouse.show();
				e.currentTarget.filters = [];
				//Mouse.cursor = MouseCursor.HAND;
			}
			
			private function getFriends():void {
				
				var api_id:int = woff_api_id;
				
				var api_secret:String = 'DuIP8H5HnE';
				var test_mode:Number = 0;
	
				var methodFromAPI = "getAppFriends";
		
				var _sig:String = woff_uid + 'api_id='+api_id+'method='+methodFromAPI+'test_mode='+test_mode+'v=2.0'+ api_secret;
				var sig:String = MD5.encrypt(_sig); // используем метод hash класса md5 и получаем сигнатуру
		
				var request = new URLRequest("http://api.vkontakte.ru/api.php");
  				request.method = URLRequestMethod.POST;
  		
  				var v:URLVariables = new URLVariables();
  				v.api_id = api_id;
				v.v = "2.0"; // Версия АПИ
				v.method = methodFromAPI;
				//v.uids = uids;
				v.test_mode = test_mode;
				v.sig = sig;
			
	
   				request.data = v;
          
				var loader222:URLLoader = new URLLoader();
				loader222.dataFormat = URLLoaderDataFormat.TEXT;
				loader222.addEventListener(Event.COMPLETE, getAppFriendsComplete);
				loader222.load(request);
			}
			
		private function getAppFriendsComplete(e:Event):void {
			var answer:XML = new XML(e.target.data);
			//answer.ignoreWhite = true;
			
			var friends_uids:String = new String(woff_uid);
			
			for ( var friends_counter:int = 0; friends_counter < answer.uid.length(); friends_counter++) {
				friends_uids += ",";
				friends_uids += answer.uid[friends_counter].text();
			}
			
			
			var params:Object = {method: "getFriendsLeague", uids: friends_uids, id_tm: current_tournament};
				
				var keys:Array = new Array();
				for (var k:String in params)
					keys.push(k);
				keys.sort();
				woff_sig = String(woff_uid);			
					for (var i:int = 0; i < keys.length; i++)
						woff_sig = woff_sig + keys[i] + "=" + params[keys[i]];
						
				woff_sig = woff_sig + "DuIP8H5HnE";
				
				woff_sig = MD5.encrypt(woff_sig); // используем метод hash класса md5 и получаем сигнатуру
				
				var woff_getFriendsL_request:URLRequest = new URLRequest(woff_general_request.url);
				woff_getFriendsL_request.method = URLRequestMethod.POST;
				//woff_getFriendsL_request.contentType = "text/xml";
		
				params.sig = String(woff_sig);
				params.uid = String(woff_uid);
				woff_getFriendsL_request.data = new URLVariables();
				
  				for (var k:String in params)
					woff_getFriendsL_request.data[k] = params[k];
					
				var woff_getFriendsL_loader:URLLoader = new URLLoader();
				woff_getFriendsL_loader.addEventListener(Event.COMPLETE, FriendsListLoadComplete);
				woff_getFriendsL_loader.load(woff_getFriendsL_request);
				
		}
		
		
		private function FriendsListLoadComplete(e:Event):void {
			var answer:XML = new XML(e.target.data);
			
			liders_list.removeChild(user_photo);
			var uids_array:Array = new Array();
			
			//all_txt3.setText(answer);
			
			for (var i:int=0; i<answer.player.length(); i++) {
				
				var freq:int = new int(52*i);
				
				uids_array.push(answer.player[i].id_vk.text());
						
			
			if (String(answer.player[i].team_title.text()) == "") {
				nazvanie[i].setText("Без названия");
			} else {
				nazvanie[i].setText(answer.player[i].team_title.text());
			}
			
			points_[i].setText(answer.player[i].tournament_score.text()/10);
			/*
			if (champ=="euro") {
				sostav[i].x = -20;
			} else {	*/
				sostav[i].x = 42;
				sostav[i].setId(answer.player[i].id_vk.text());
			//}
			
			if (answer.player[i].id_vk.text() == String(woff_uid)) {
				main3_txt2.setText("Место: "+ String(i+1));
				main3_txt4.setText("Очков: "+ answer.player[i].tournament_score.text()/10);
			} 
			
			}
			
			
			
			user_photo = new vk_photo(woff_uid, uids_array, woff_api_id);
			user_photo.x = 0;
			user_photo.y = 5;
			liders_list.addChild(user_photo);
			
			for (var i:int=answer.player.length(); i<100; i++) {
			nazvanie[i].setText("");
			points_[i].setText("0");
			sostav[i].setId(0);
			sostav[i].x = -20;
				}
				
				
			}
		
		
			
		private function buyBudget(e:MouseEvent):void {
			buyBudgetTable.setTournament(current_tournament);
			buyBudgetTable.setTax(current_tax_b);
			//buyBudgetTable.setTax(666);
			buyBudgetTable.woff_api_ = woff_general_request.url;
			addChild(buyBudgetTable);
					buyBudgetTable.buyBudgetOpen();
				
		}
		/*
		private function buyBudget_req(e:MouseEvent):void {
			
			setMethod("buyBudget");
				
				var buyBudgetLoader:URLLoader = new URLLoader();
				buyBudgetLoader.addEventListener(Event.COMPLETE, errorEvent);
				buyBudgetLoader.addEventListener(Event.COMPLETE, updateInfo);
				buyBudgetLoader.load(woff_general_request);
			}
			 * 
			 */
			
		private function buyTransfers(e:MouseEvent):void {
			
				setMethod("buyTransfers");
				
				var buyBudgetLoader:URLLoader = new URLLoader();
				buyBudgetLoader.addEventListener(Event.COMPLETE, errorEvent);
				buyBudgetLoader.addEventListener(Event.COMPLETE, updateInfo);
				buyBudgetLoader.load(woff_general_request);
			}
		
		private function updateInfo(e:Event):void {
			var woff_answer:XML = new XML(e.target.data);
				
				if (String(woff_answer.transferred.text()) !== "") {
					addChild(errorSprite);
					
					errorText.setText("\n	С Вашего счёта списано " + woff_answer.transferred.text()/10 + " MP!");
				}
			
			
			setMethod("getProfile");
		
			var woff_Profile_loader:URLLoader = new URLLoader();
			woff_Profile_loader.addEventListener(Event.COMPLETE, woffProfileLoadComplete);
			woff_Profile_loader.load(woff_general_request);
			
			player_liga.removeChild(main3_txt5);
			player_liga.addChild(main3_txt5_);
				main3_txt5_.setId(e.currentTarget.id);
		
		}
		private function showPaymentBox(e:Event):void {
			//var answer:XML = new XML(e.target.data);
			wrapper.external.showPaymentBox(0);
			wrapper.addEventListener("onBalanceChanged", onBalanceChanged);
			
			removeChild(errorSprite);
		}
		private function onBalanceChanged(e:Object):void {
			setMethod("getProfile");
			
			var woff_Profile_loader:URLLoader = new URLLoader();
			woff_Profile_loader.addEventListener(Event.COMPLETE, woffProfileLoadComplete);
			woff_Profile_loader.load(woff_general_request);
		}
		private function showMouseHint(e:MouseEvent):void {
			stat_hint.showHint(e.currentTarget.full);
		}
		private function hideMouseHint(e:MouseEvent):void {
			stat_hint.hideHint();
		}
		
		private function select1over(e:MouseEvent):void {
			blocknation1.filters = [myGlow_blue, myBevel, innerGlow_red,myShadow_o];
			
			main.addChild(select1smart);
			
			main.addChild(select1sprite);
			main.addChild(select1);
			
			//select1smart.show();
		}
		private function select1out(e:MouseEvent):void {
			blocknation1.filters = [myShadow_o];
			//select1.alpha = 0;
			select1smart.hide();
		}
		private function select4over(e:MouseEvent):void {
			blocknation4.filters = [myGlow_blue, myBevel, innerGlow_red,myShadow_o];
			
			main.addChild(select4smart);
			
			main.addChild(select4sprite);
			main.addChild(select4);
			
			//select4smart.show();
		}
		private function select4out(e:MouseEvent):void {
			blocknation4.filters = [myShadow_o];
			//select4.alpha = 0;
			select4smart.hide();
		}
		
		private function select2over(e:MouseEvent):void {
			blocknation2.filters = [myGlow_blue, myBevel, innerGlow_red,myShadow_o];
			
			main.addChild(select2smart);
			
			main.addChild(select2sprite);
			main.addChild(select2_);
			
			//select2smart.show();
		}
		private function select2out(e:MouseEvent):void {
			blocknation2.filters = [myShadow_o];
			select2smart.hide();
		}
		private function select5over(e:MouseEvent):void {
			blocknation5.filters = [myGlow_blue, myBevel, innerGlow,myShadow_o];
			
			main.addChild(select5smart);
			
			main.addChild(select5sprite);
			main.addChild(select5);
			
			select5smart.show();
		}
		private function select5out(e:MouseEvent):void {
			blocknation5.filters = [myShadow_o];
			select5smart.hide();
		}
		
		private function select3over(e:MouseEvent):void {
			blocknation3.filters = [myGlow_blue, myBevel, innerGlow_red,myShadow_o];
		}
		private function select3out(e:MouseEvent):void {
			blocknation3.filters = [myShadow_o];
		}
		private function select6over(e:MouseEvent):void {
			blocknation6.filters = [myGlow_blue, myBevel, innerGlow,myShadow_o];
		}
		private function select6out(e:MouseEvent):void {
			blocknation6.filters = [myShadow_o];
		}
		
		private function overTeamButton(e:MouseEvent):void {
			button_blue.filters = [myGlow, myBevel];
		}
		private function outTeamButton(e:MouseEvent):void {
			button_blue.filters = [];
		}
		
		private function overBuyBudget(e:MouseEvent):void {
			button_blue_long.filters = [myGlow, myBevel];
		}
		private function outBuyBudget(e:MouseEvent):void {
			button_blue_long.filters = [];
		}
		private function overBuyTransfers(e:MouseEvent):void {
			button_blue_long2.filters = [myGlow, myBevel];
		}
		private function outBuyTransfers(e:MouseEvent):void {
			button_blue_long2.filters = [];
		}
		private function overCashLiga(e:MouseEvent):void {
			button_blue_long3.filters = [myGlow, myBevel];
		}
		private function outCashLiga(e:MouseEvent):void {
			button_blue_long3.filters = [];
		}
		private function CashLiga(e:MouseEvent):void {
			setMethod("enterPaidTournament");
				
				var enterCashLeagueLoader:URLLoader = new URLLoader();
				enterCashLeagueLoader.addEventListener(Event.COMPLETE, errorEvent);
				enterCashLeagueLoader.addEventListener(Event.COMPLETE, updateInfo);
				enterCashLeagueLoader.load(woff_general_request);
		}
		
		private function drawFieldEvent(e:MouseEvent):void {
			
			var raw:BitmapData = new BitmapData(field.width, field.height+50);
			raw.draw(field);
			raw.draw(footman_list);
			raw.draw(safe_team_list);
			
      		var brr:ByteArray = PNGEncoder.encode(raw);
      		 
			main2.removeChild(camera);
			
			var SaveOfferWindow = new SaveOffer(brr, woff_uid, 1848099, "DuIP8H5HnE", wrapper, champ);
				addChild(SaveOfferWindow);
			
		}
		
		private function drawFieldEvent_offer():void {
			
			var raw:BitmapData = new BitmapData(field.width, field.height+50);
			raw.draw(field);
			raw.draw(footman_list);
			raw.draw(safe_team_list);
			
			var brr:ByteArray = PNGEncoder.encode(raw);
			
			main2.removeChild(camera);
			
			var SaveOfferWindow = new SaveOffer(brr, woff_uid, 1848099, "DuIP8H5HnE", wrapper, champ);
			addChild(SaveOfferWindow);
			
		}
		
		public function drawFieldOver(e:MouseEvent):void {
			camera.filters = [myGlow];
		}
		public function drawFieldOut(e:MouseEvent):void {
			camera.filters = [];
		}
		
		public function setMP():void {
			//all_txt4.setText("ololo");
		}
		
		public function addLeadersButtons():void {
			
				main1.addChild(page_button_sprite);
				
		}
		/*
		public function page_buttonOvernEvent(e:MouseEvent):void {
			e.target.filters = [myBevel];
		}
		public function page_buttonOutEvent(e:MouseEvent):void {
			e.target.filters = [];
		}
		public function page_button_textOverEvent(e:MouseEvent):void {
			page_button[e.currentTarget.id].filters = [myBevel];
			
		}*/
		public function page_button_ClickEvent(e:MouseEvent):void {
			//getLeaders(e.currentTarget.id+1, current_new_tour);
			getLeadersTournament(e.currentTarget.id+1);
		}
		
		public function removeWinnerList(e:MouseEvent):void {
			main1.removeChild(winners_list);
		}
		// размножение картинки со звездами
		public function starLoadComplete(e:Event):void {
			var star_:Bitmap = e.target.content as Bitmap;
			
			star2 = new Bitmap(star_.bitmapData);
			star2.x = 350;
			star2.y = 193;
			
			star3 = new Bitmap(star_.bitmapData);
			star3.x = 45;
			star3.y = 312;
			
			star4 = new Bitmap(star_.bitmapData);
			star4.x = 350;
			star4.y = 312;
			
			star5 = new Bitmap(star_.bitmapData);
			star5.x = 45;
			star5.y = 433;
			
			star6 = new Bitmap(star_.bitmapData);
			star6.x = 350;
			star6.y = 433;
		}
		//размножение картинки меню в топе
		public function topCompleteEvent(e:Event) {
			var top:Bitmap = e.target.content as Bitmap;
			
			top2 = new Bitmap(top.bitmapData);
			top2.x = 330;
			top2.addEventListener(MouseEvent.MOUSE_OVER, mouseOverHelp);
			top2.addEventListener(MouseEvent.MOUSE_OUT, mouseOutHelp);
			
			top3 = new Bitmap(top.bitmapData);
			top3.x = 440;
			
			top4 = new Bitmap(top.bitmapData);
			top4.x = 550;
		}
		
		//размножение картинки
		private function blocknationLoadComplete():void {
			//var blocknation_:Bitmap = e.target.content as Bitmap;
			
			select1sprite.addChild(blocknation1);
			select2sprite.addChild(blocknation2);
			select3sprite.addChild(blocknation3);
			select4sprite.addChild(blocknation4);
			select5sprite.addChild(blocknation5);
			select6sprite.addChild(blocknation6);
			
			select1sprite.addChild(russia);
			select4sprite.addChild(world);
			select2sprite.addChild(england);
			select5sprite.addChild(spain);
			select3sprite.addChild(italia);
			select6sprite.addChild(chempions);
			
			//select1sprite.addChild(main_txt1);
			//select1sprite.addChild(main_txt2);
			select1sprite.addChild(main_txt3);
			select1sprite.addChild(main_txt4);
			select1sprite.addChild(main_txt5);
			select1sprite.addChild(main_txt55);
			select1sprite.addChild(main_txt6);
			select1sprite.addChild(main_txt7);
			//select4sprite.addChild(main_txt21);
			//select4sprite.addChild(main_txt22);
			select4sprite.addChild(main_txt23);
			select4sprite.addChild(main_txt24);
			select4sprite.addChild(main_txt25);
			select4sprite.addChild(main_txt255);
			select4sprite.addChild(main_txt26);
			select4sprite.addChild(main_txt27);
			//select2sprite.addChild(main_txt31);
			//select2sprite.addChild(main_txt32);
			select2sprite.addChild(main_txt33);
			select2sprite.addChild(main_txt34);
			select2sprite.addChild(main_txt35);
			select2sprite.addChild(main_txt355);
			select2sprite.addChild(main_txt36);
			select2sprite.addChild(main_txt37);
			//select5sprite.addChild(main_txt421);
			//select5sprite.addChild(main_txt422);
			select5sprite.addChild(main_txt423);
			select5sprite.addChild(main_txt424);
			select5sprite.addChild(main_txt425);
			select5sprite.addChild(main_txt4255);
			select5sprite.addChild(main_txt426);
			select5sprite.addChild(main_txt47);
			//select3sprite.addChild(main_txt51);
			//select3sprite.addChild(main_txt52);
			select3sprite.addChild(main_txt53);
			select3sprite.addChild(main_txt54);
			select3sprite.addChild(main_txt55_);
			select3sprite.addChild(main_txt555);
			select3sprite.addChild(main_txt56);
			select3sprite.addChild(main_txt57);
			//select6sprite.addChild(main_txt621);
			//select6sprite.addChild(main_txt622);
			select6sprite.addChild(main_txt623);
			select6sprite.addChild(main_txt624);
			select6sprite.addChild(main_txt625);
			//select6sprite.addChild(main_txt6255);
			//select6sprite.addChild(main_txt626);
			
		}
		
		private function sostavOver(e:MouseEvent):void {
			e.currentTarget.filters = [myBevel];
		}
		private function sostavOut(e:MouseEvent):void {
			e.currentTarget.filters = [];
		}
		
		// функция очистки экрана
		private function closeCurrentWindow():void {
			switch(window) {
				case "main":
					removeChild(main);
					break;	
				case "main1":
					removeChild(main1);
					break;
				case "main2":
					removeChild(main2);
					break;
				case "main3":
					removeChild(main3);
					break;
				case "main4":
					removeChild(main4);
					break;
				case "help":
					removeChild(help);
					break;
				case "footman":
					removeChild(footman);
					break;
				case "team_sostav":
					removeChild(team_sostav);
					break;
				case "team_stat":
					removeChild(team_stat);
					break;
				case "transfer":
					removeChild(transfer);
					break;
				case "bet_fair":
					removeChild(bet_fair);
					break;
				
			}
			/*
			if (window == "main") {
				removeChild(main);
			}
			if (window == "main1") {
				removeChild(main1);
			}
			if (window == "main2") {
				removeChild(main2);
			} 
			if (window == "main3") {
				removeChild(main3);
			}
			if (window == "main4") {
				removeChild(main4);
			} 
			 
			if (window == "help") {
				removeChild(help);
			}
			if (window == "footman") {
				removeChild(footman);
			}
			if (window == "team_sostav") {
				removeChild(team_sostav);
			}
			if (window == "team_stat") {
				removeChild(team_stat);
			}
			if (window == "transfer") {
				removeChild(transfer);
			}
			if (window == "BetFair") {
				removeChild(bet_fair);
			}
			 * 
			 */
		}
		
		//
		private function overInviteEvent(e:MouseEvent):void {
			button_blue_invite.filters = [myGlow_green];
		}
		private function outInviteEvent(e:MouseEvent):void {
			button_blue_invite.filters = [];
		}
		
		//обнуление команды
		private function teamReset():void {
			
			for (var zope___:int=1; zope___< 16; zope___++) {
					footman_array[zope___].setText("null");
					footman_array[zope___].setId(0);
					footman_club[zope___].setText("club null");
					footman_name_txt[zope___].setText("ooo");
					footman_pic[zope___].setRole("4");
					if (footman_form_array[zope___].clubId != 0)
						footman_form_array[zope___].setClub(0);
					footman_form_array[zope___].champ = champ;
					footman_replace[zope___].setId(0);
					footman_replace[zope___].filters = [myGlow];
					footman_scores[zope___].setText("0");
					team_role[zope___].setText("--");
					team_stat_array[zope___].setText("---");
					team_eu_cost[zope___].setText("-");
				}
		}
		
		// функция сборки 1-го окна
		private function showMain1():void {
			window = "main1";
			
			addChild(main1);
			main1.addChild(background);
			main1.addChild(logo2);
			main1.addChild(top1);
			main1.addChild(top2);
			main1.addChild(top3);
			main1.addChild(top4);
			main1.addChild(version);
			main1.addChild(mp);
			main1.addChild(eu);
			main1.addChild(all_txt1);
			main1.addChild(all_txt3);
			main1.addChild(all_txt4);
			main1.addChild(main_button);
			main1.addChild(block);
			main1.addChild(block2);
			main1.addChild(liders);
			main1.addChild(help_buttontxt);
			main1.addChild(help_button);
			main1.addChild(active1);
			main1.addChild(link2);
			main1.addChild(link3);
			main1.addChild(link4);
			main1.addChild(button1txt);
			main1.addChild(button2txt);
			main1.addChild(button3txt);
			main1.addChild(button4txt);
				button1txt.setColor("0x696969");
				button2txt.setColor("0xffffff");
				button3txt.setColor("0xffffff");
				button4txt.setColor("0xffffff");
			main1.addChild(button2);
			main1.addChild(button3);
			main1.addChild(button4);
			main1.addChild(input);
			main1.addChild(input2);
			main1.addChild(main1_txt1);
			main1.addChild(main1_txt2);
			main1.addChild(main1_txt3);
			main1.addChild(main1_txt4);
			main1.addChild(main1_txt4_1);
			main1.addChild(main1_txt5);
			main1.addChild(main1_txt6);
			main1.addChild(main1_txt7);
			main1.addChild(main1_txt8);
			main1.addChild(main1_txt_note1);
				addLeadersButtons();
			main1.addChild(select);
			main1.addChild(liga);
			main1.addChild(liders_list);
			main1.addChild(team_list);
			main1.addChild(liga_list);
			main1.addChild(main1_txt24);
			main1.addChild(scroll);
			main1.addChild(scroll2);
			main1.addChild(stat_hint);
		
		}
		
		// функция сборки 2-го окна
		private function showMain2():void {
			window = "main2";
			
			addChild(main2);
			main2.addChild(background);
			main2.addChild(top1);
			main2.addChild(top2);
			main2.addChild(top3);
			main2.addChild(top4);
			main2.addChild(version);
			main2.addChild(mp);
			main2.addChild(eu);
			main2.addChild(all_txt1);
			main2.addChild(all_txt3);
			main2.addChild(all_txt4);
			main2.addChild(block);
			main2.addChild(logo2);
			main2.addChild(field);
			main2.addChild(help_buttontxt);
			main2.addChild(help_button);
			main2.addChild(main_button);
			main2.addChild(link1);
			main2.addChild(active2);
			main2.addChild(link3);
			main2.addChild(link4);
			main2.addChild(button1txt);
			main2.addChild(button2txt);
			main2.addChild(button3txt);
			main2.addChild(button4txt);
				button1txt.setColor("0xffffff");
				button2txt.setColor("0x696969");
				button3txt.setColor("0xffffff");
				button4txt.setColor("0xffffff");
			main2.addChild(button1);
			main2.addChild(button3);
			main2.addChild(button4);
			
			main2.addChild(main2_txt1);
			main2.addChild(main2_txt2);
			main2.addChild(main2_txt3);
			main2.addChild(main2_txt4);
			main2.addChild(main2_txt5);
			
			main2.addChild(select2);
			main2.addChild(rating);
			main2.addChild(rating2);
			main2.addChild(points);
			main2.addChild(points2);
			main2.addChild(budget);
			main2.addChild(transfers);
			main2.addChild(prize);
			main2.addChild(button_blue);
			main2.addChild(button_blue2);
			main2.addChild(button_blue3);
			main2.addChild(button_blue_long);
			main2.addChild(button_blue_long2);
			main2.addChild(button_blue_long3);
			main2.addChild(button_blue_alpha);
			main2.addChild(footman_list);
			main2.addChild(main2_txt6);
			main2.addChild(main2_txt7);
			main2.addChild(main2_txt8);
			main2.addChild(main2_txt9);
			main2.addChild(main2_txt8_);
			main2.addChild(main2_txt9_);
			main2.addChild(main2_txt10);
			main2.addChild(main2_txt11);
			main2.addChild(main2_txt10_);
			main2.addChild(main2_txt11_);
			main2.addChild(main2_txt12);
			main2.addChild(main2_txt13);
			main2.addChild(main2_txt14);
			main2.addChild(main2_txt15);
			main2.addChild(main2_txt16);
			main2.addChild(main2_txt26);
			main2.addChild(main2_txt17);
			main2.addChild(main2_txt18);
			main2.addChild(main2_txt19);
			main2.addChild(main2_txt19_);
			main2.addChild(main2_txt20);
			main2.addChild(main2_txt21);
			main2.addChild(main2_txt22);
			main2.addChild(main2_txt23);
			main2.addChild(main2_txt24);
			
			//main2.addChild(main2_betfair);	
			main2.addChild(stat_hint);
			
			//addChild(firstManual);
			//	firstManual.showMan();
		}
		
		
		
		private function logoClickHandler(e:MouseEvent):void {
			
			wrapper.external.callMethod("showLeadsPaymentBox");
		}
		
		private function getFavClubs():void {
			
			setMethod("getAllClubs");
		
			var woff_AllClubs_loader:URLLoader = new URLLoader();
			woff_AllClubs_loader.addEventListener(Event.COMPLETE, woffAllClubsComplete2);
			woff_AllClubs_loader.load(woff_general_request);
		}
		
		// покупка авто-команды 
		private function buyAutoTeamClick(e:MouseEvent):void {
			
			//removeChild(firstManual);
			firstManual.closeMan();
			
			//version.setText(firstManual.autoTeamHelper.getAutoTeam());
			var newAutoTeam:Array = firstManual.autoTeamHelper.getAutoTeam();
			
			for (var guys:int = 0; guys < newAutoTeam.length; guys++) {
				
				if (footman_array[guys+1].id != 0) {
					
					setTransfer(footman_array[guys+1].id, newAutoTeam[guys].id);
				
				} else {
				
					setNewTransfer(newAutoTeam[guys].id, newAutoTeam[guys].status);
				}
				
				var woff_setTransfer_loader:URLLoader = new URLLoader();
				//woff_setTransfer_loader.addEventListener(Event.COMPLETE, button2event);
				woff_setTransfer_loader.addEventListener(Event.COMPLETE, errorEvent);
				woff_setTransfer_loader.load(woff_general_request);
				
				if ( guys == (newAutoTeam.length-1)) {
					woff_setTransfer_loader.addEventListener(Event.COMPLETE, button2event);
				}
			}
			
		}
		
		// функция очистки окна ввода названия команды
		private function inputFocuse(e:FocusEvent):void {
			if (main1_txt8.txt() == "no team title")
				main1_txt8.setText("");
		}
		
		// generation Transfer List
		private function genTransferList(rows:int):void {
			// генерация списка трансферов
			var num:int = transfer_list.numChildren;
				while (num--)
					{
							transfer_list.removeChildAt(0);
					}
			
			var transfer_row:Array = new Array();
			
			transfer_footman = new text(115, 140, "current footman", "2");
			
			
			transfer_array = new Array();
			transfer_club_array = new Array();
			cost = new Array();
			transfer_points_array = new Array();
			transfer_get_array = new Array();
			transfer_efficiency = new Array();
			transfer_rating = new Array();
			
			transfer_row = [new text(37, trstat_freq, "hhh", String(number)), new text(55, trstat_freq, "jjj", String(number))];
			
			
			
			for (var n:int=1; n<=rows; n++) {
			
			var trstat_freq:int = new int(23*n-23);
			
			number = 2;
			
			
			cost[n] = new text(0, 0, "", String(number));
			cost[n].x = 37;
			cost[n].y = trstat_freq;
			
			transfer_array[n] = new text(100, trstat_freq, "", String(number));
			
			transfer_club_array[n] = new text(179, trstat_freq, "", String(number));
			transfer_points_array[n] = new text(265, trstat_freq, "", String(number));
			transfer_rating[n] = new text(307, trstat_freq, "", String(number));
			transfer_efficiency[n] = new text(352, trstat_freq, "", String(number));
			footman_points = new text(350, trstat_freq, "", String(number));
			
			
			transfer_array[n].addEventListener(MouseEvent.CLICK, footmanEvent2);
			transfer_array[n].addEventListener(MouseEvent.MOUSE_OVER, mouseOver);
			transfer_array[n].addEventListener(MouseEvent.MOUSE_OUT, mouseOut);
			//transfer_array.push[transfer_table_columns];
			//transfer_array[n] = [new text(30*1, 10, "transfer_table", String(number)), new text(30*3, 10, "transfer_table", String(number))];
			//transfer_array[n].y = trstat_freq;
			
			transfer_get_array[n] = new transfer_get();
			transfer_get_array[n].addEventListener(MouseEvent.CLICK, getTransferEvent);
			transfer_get_array[n].x = 407;
			transfer_get_array[n].y = trstat_freq;
			
			number = 2;
			
			
			if ((n & 1) !== 0) {
				var zebra_tr = new zebra3_bitmap();
				zebra_tr.x = 10;
				zebra_tr.y = trstat_freq-2;
				transfer_list.addChild(zebra_tr);
			}
			
			transfer_list.addChild(cost[n]);
			transfer_list.addChild(footman_points);
			transfer_list.addChild(transfer_array[n]);
			transfer_list.addChild(transfer_club_array[n]);
			transfer_list.addChild(transfer_points_array[n]);
			transfer_list.addChild(transfer_rating[n]);
			transfer_list.addChild(transfer_efficiency[n]);
			transfer_list.addChild(transfer_get_array[n]);
			}
			
			//fff = [cost, transfer_array];
			
		}
}
}