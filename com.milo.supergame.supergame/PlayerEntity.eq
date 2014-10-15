
/*
 * PlayerEntity
 * Created by Eqela Studio 2.0b7.4
 */

public class PlayerEntity : SEEntity
{
int w;
int h;
int wp;
int wh;

SESprite target;
	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		w = get_scene_width();
		h = get_scene_height();
		rsc.prepare_image("mymaki","ironman", 0.15*w, 0.18*h);
		target = add_sprite_for_image(SEImage.for_resource("mymaki"));
		wp = target.get_width();
		wh = target.get_height();
		target.move(0,0.5*wh);
	}

	public void tick(TimeVal now, double delta) {
		base.tick(now, delta);
		target.move(Start.x, Start.y);
	}


}
