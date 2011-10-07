package data {
	import flash.display.*;
	import flash.filters.GlowFilter;
	import flash.events.MouseEvent;

	/**
	 * @author spy
	 */
	public class ScheduleRow extends Sprite{
		private var myGlow:GlowFilter;
		
		public function ScheduleRow() {
		var row:Sprite = new Sprite();
			//row.graphics.beginFill(fillType, colors, alphas, ratios, matr, spreadMethod);
			row.graphics.beginFill(0xE8E8E8, 1);
			row.graphics.lineStyle(0, 0xCCCCCC);
			row.graphics.drawRoundRect(20, 0, 600, 30, 30);
			row.addEventListener(MouseEvent.MOUSE_OVER, overEvent);
			row.addEventListener(MouseEvent.MOUSE_OUT, outEvent);
			row.x = 640;
		addChild(row);
		
		myGlow = new GlowFilter();
		myGlow.inner = true;
		myGlow.color = 0x6666FF;
		}
		private function overEvent(e:MouseEvent):void {
			e.currentTarget.filters = [myGlow];
		}
		private function outEvent(e:MouseEvent):void {
			e.currentTarget.filters = [];
		}
	}
}