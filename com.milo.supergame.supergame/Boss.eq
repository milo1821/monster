
/*
 * Boss
 * Created by Eqela Studio 2.0b7.4
 */

public class Boss : SEEntity
{

	SESprite boss;
	int w;
	int h;
	int wp;
	int wh;
	int mx;
	int my;
	
	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		w = get_scene_width();
		h = get_scene_height();
		rsc.prepare_image("bosx","mclovin", 0.6*w. 0.6*h);
		boss = add_sprite_for_image(SEImage.for_resource("bosx"));
		wp = boss.get_width();
		wh = boss.get_height();
		boss.move(Math.random(0.9*w, w), Math.random(0.5*h,h));

	}

	public void tick(TimeVal now, double delta) {
		base.tick(now, delta);
		mx = boss.get_x();
		my = boss.get_y();
		boss.move(mx+(Start.x-mx)/Math.random(400,430), my+(Start.y-my)/Math.random(400,430));
		if((mx +0.15*get_scene_width()>= Start.x && mx<=Start.x) && (my+0.15*get_scene_height() >= Start.y&&my<=Start.y)) {
		Start.bump = true;		
		}
	}


	public void cleanup() {
		base.cleanup();
	}
}
