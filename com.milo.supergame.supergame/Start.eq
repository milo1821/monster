/*
 * MainScene.eq
 * Generated by Eqela Studio 2.0b7.4
 */

public class Start : SEScene
{
	int w;
	int h;
	int j;
	public static int x;
	public static int y;
	public static bool bump = false;
	SESprite background;
	
		
	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		w = get_scene_width();
		h = get_scene_height();
		AudioClipManager.prepare("hip");
		add_entity(SESpriteEntity.for_color(Color.instance("white"), get_scene_width(), get_scene_height()));
		rsc.prepare_image("volcano", "background", w, h);
		background = add_sprite_for_image(SEImage.for_resource("volcano"));
		background.move(0,0);

		
		add_entity(new PlayerEntity());
	
	
		
		for(j=0; j<Math.random(5,30) ; j++) {
			add_entity(new MonsterEnt());
		}

			add_entity(new Boss());
		
		AudioClipManager.play("hip");
		
	}

	public void on_pointer_move(SEPointerInfo pi) {
		base.on_pointer_move(pi);
		x = pi.get_x();
		y = pi.get_y();
		if(bump==true) {
			switch_scene(new Gmover());
		}
	}





	public void cleanup() {
		base.cleanup();
	}
}