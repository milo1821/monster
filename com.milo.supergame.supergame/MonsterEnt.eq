
/*
 * MonsterEnt
 * Created by Eqela Studio 2.0b7.4
 */

public class MonsterEnt : SEEntity
{

	SESprite monster;
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
		rsc.prepare_image("mon1","bieber", 0.35*w. 0.33*h);
		monster = add_sprite_for_image(SEImage.for_resource("mon1"));
		wp = monster.get_width();
		wh = monster.get_height();
		monster.move(Math.random(0.9*w, w), Math.random(0,h));

	}

	public void tick(TimeVal now, double delta) {
		base.tick(now, delta);
		mx = monster.get_x();
		my = monster.get_y();
		monster.move(mx+(Start.x-mx)/Math.random(150,250), my+(Start.y-my)/Math.random(150,500));
		if((mx +0.15*get_scene_width()>= Start.x && mx<=Start.x) && (my+0.15*get_scene_height() >= Start.y&&my<=Start.y)) {
		Start.bump = true;		
		}
	}


	public void cleanup() {
		base.cleanup();
	}
}
