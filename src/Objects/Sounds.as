package  Objects
{
	import flash.events.Event;
	import flash.media.Sound;
	import flash.media.SoundChannel;
	import flash.media.SoundTransform;
	
	public class Sounds 
	{
		public static var END:Sound = new ScoreSound();
		public static var SHAKE:Sound = new ShakeSound();
		public static var BAR:Sound = new BarSound();
		public static var PUNCH:Sound = new PunchSound();
		public static var TOUW:Sound = new TouwSound();
		//public static var GAME3:Sound = new GameSound3();
		//public static var GAME2:Sound = new GameSound2();
		//public static var GAME:Sound = new GameSound();
		//public static var UITLEG:Sound = new UitlegSound();
		public static var START:Sound = new StartSound();
		
		public static var backgroundMusic:Sound;
		public static var channel_general:SoundChannel = new SoundChannel();
		public static var channel_background:SoundChannel = new SoundChannel();
		public static var volume:Number = 0.4;
		public static var transform_general:SoundTransform = new SoundTransform();
		public static var transform_background:SoundTransform = new SoundTransform();
		
		public static function playSoundEffect(s:Sound):void
		{
			var sound:Sound = s;
			channel_general = sound.play();
			transform_general.volume = volume;
			channel_general.soundTransform = transform_general;
		}
		
		public static function startBackgroundMusic(m:Sound):void
		{	
			backgroundMusic = m;
			channel_background = backgroundMusic.play();
			channel_background.addEventListener(Event.SOUND_COMPLETE, loopBackgroundMusic);
			transform_background.volume = 0.4;
			channel_background.soundTransform = transform_background;
		}
		
		public static function switchBackgroundMusic(m:Sound):void
		{
			channel_background.removeEventListener(Event.SOUND_COMPLETE, loopBackgroundMusic);
			channel_background.stop();
			startBackgroundMusic(m);
		}
		
		public static function loopBackgroundMusic(e:Event):void
		{
			startBackgroundMusic(backgroundMusic);
		}
	}
}