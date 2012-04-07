/**
 * Created by IntelliJ IDEA.
 * User: light
 * Date: 3/21/12
 * Time: 8:26 PM
 * To change this template use File | Settings | File Templates.
 */
package {
import flash.display.Loader;
import flash.events.IOErrorEvent;
import flash.events.SecurityErrorEvent;
import flash.external.ExternalInterface;
import flash.net.URLRequest;
import flash.net.URLVariables;
import flash.system.ApplicationDomain;
import flash.system.LoaderContext;
import flash.system.SecurityDomain;

public class CMBlockVk extends Loader {
	public var cmFlashUrl:String = "http://img.creara-media.ru/lembrd/block_as3_v3_vk.swf";
	private var pid:Number = 0;

	public var ext:* = {};

	public function CMBlockVk(pid:Number) {

		this.pid = pid;

		this.contentLoaderInfo.addEventListener( IOErrorEvent.IO_ERROR, onError );
		this.contentLoaderInfo.addEventListener( IOErrorEvent.NETWORK_ERROR, onError );
		this.contentLoaderInfo.addEventListener( SecurityErrorEvent.SECURITY_ERROR, onError );
	}

	override public function get height():Number {
		return 100;
	}

	private function onError(event:*):void {
		trace( "[CM] Error", event );
	}

	public function setTesting():CMBlockVk {
		this.ext['testFormat'] = 1;
		return this;
	}

	public function setStaticWidth(swidth:Number):CMBlockVk {
		this.ext['swidth'] = swidth;
		return this;
	}

	public function setBackgroundAlpha(alpha:Number = 1):CMBlockVk {
		this.ext['bg'] = 1;
		return this;
	}

	public function initCreara(fv:*):CMBlockVk {


		var req:URLRequest = new URLRequest( cmFlashUrl );
		var reqParams:URLVariables = new URLVariables();
		setup( fv, reqParams, ['viewer_id', 'api_id', 'secret', 'sid', ] );
		setup( ext, reqParams, ext );

		reqParams['pid'] = pid + "";

		req.data = reqParams;
		var lc:LoaderContext = new LoaderContext( true,
				ApplicationDomain.currentDomain,
				SecurityDomain.currentDomain );
		load( req, lc );

		return this;
	}

	private function setup(o:*, t:*, args:*):void {
		if ( args is Array ) {
			for each( var a:String in args ) {
				if ( a in o && o[a] != null ) {
					t[a] = o[a];
				}
			}
		} else {
			for ( var b:String in args ) {
				if ( b in o && o[b] != null ) {
					t[b] = o[b];
				}
			}
		}
	}


}
}
