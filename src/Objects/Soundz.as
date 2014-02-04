package Objects
{
	
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.media.Sound;
	import flash.media.SoundChannel;
	import flash.media.SoundTransform;
	/**
	 * ...
	 * @author Chanisco 
	 */
	public class Soundz extends Sprite
	{
		//private var gameOverSound:Sound = new GameOverSound();
		
		[Embed(source="../../bin/chani-theme.mp3")]
		public static var theme_song:Class;
		public static var theme:SoundChannel;
		
		private var volume:SoundTransform = new SoundTransform(1, 0);
		
		private var mute:Boolean = true;
		private var startMusic:Sound = new Sound();
		private var titleMusic:Sound = new Sound();
		private var endMusic:Sound = new Sound();
		
		private var backGroundSoundChannel:SoundChannel;
		private var soundEffects:Vector.<SoundChannel> = new Vector.<SoundChannel>;
		
		public function Soundz() {
			theme = (new theme_song() as Sound).play(0, int.MAX_VALUE, volume); 
			Muting()
		}
		private function Muting():void 
		{
			if (!mute)
			{
				volume.volume = 0;
				theme.soundTransform = volume;
				mute = true;
			} else {
				volume.volume = 0.2;
				theme.soundTransform = volume;
				mute = false;
			}			
			trace("i will be of use someday");
		}
		/*public function backgroundStart()
		{
			//backGroundSoundChannel = 
		}
		public function backgroundGame()
		{
			
		}
		public function backgroundEnd()
		{
			
		}*/
		
		
		/*public function gameOverSoundPlay()
		{
			soundEffects.push(new SoundChannel)
			soundEffects[soundEffects.length - 1] = gameOverSound.play(0, 1, null);
			soundEffects[soundEffects.length - 1].addEventListener(Event.SOUND_COMPLETE, removeSound);
		}
		
		
		private function removeSound(e:Event)
		{
			soundEffects.splice(soundEffects.indexOf(e.target), 1);
		}
		
		public function stopAllSounds()
		{
			for (var i:int = 0; i < soundEffects.length;i ++) 
			{
				soundEffects[i].stop();
			}
		}*/
		
	}

}