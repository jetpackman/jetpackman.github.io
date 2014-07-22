-- A simple scene with some miscellaneous geometry.


blazeOrange = gr.material({0.9, 0.4, 0.0}, {0.5, 0.7, 0.5}, 25)
gr.load_bumpmap(blazeOrange, "bump.png");

scene_root = gr.node('root')

s1 = gr.sphere('s1')
scene_root:add_child(s1)
s1:set_material(blazeOrange);
-- s1:rotate("x", 45);
s1:scale(7.0, 7.0, 7.0);

white_light = gr.light({-100.0, 20.0, 400.0}, {0.9, 0.9, 0.9}, {1, 0, 0})
-- orange_light = gr.light({400.0, 100.0, 150.0}, {0.7, 0.0, 0.7}, {1, 0, 0})

gr.render(scene_root, 'test8.png', 512, 512,
	  {0, 0, 30}, {0, 0, -1}, {0, 1, 0}, 50,
	  {0.3, 0.3, 0.3}, {white_light})
