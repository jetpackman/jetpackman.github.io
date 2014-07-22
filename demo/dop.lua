-- A simple scene with some miscellaneous geometry.

blazeOrange = gr.material({0.9, 0.4, 0.0}, {0.5, 0.7, 0.5}, 25)
azureBlue = gr.material({0.2, 0.4, 0.6}, {0.5, 0.7, 0.5}, 25)
-- mat3 = gr.material({1.0, 0.6, 0.1}, {0.5, 0.7, 0.5}, 25)
-- mat4 = gr.material({0.7, 0.6, 1.0}, {0.5, 0.4, 0.8}, 25)


root = gr.node('root')
root:scale(2.0, 2.0, 2.0)

s1 = gr.sphere('s1')
s1:set_material(blazeOrange)
root:add_child(s1)

s2 = gr.sphere ('s2')
s2:translate(0.0, 6.0, -16.0)
s2:set_material(azureBlue)
root:add_child(s2)

white_light = gr.light({-100.0, 150.0, 400.0}, {0.9, 0.9, 0.9}, {1, 0, 0})
-- orange_light = gr.light({400.0, 100.0, 150.0}, {0.7, 0.0, 0.7}, {1, 0, 0})

gr.render(root, 'test6.png', 512, 512,
	  {0, 0, 10}, {0, 0, -1}, {0, 1, 0}, 50,
	  {0.3, 0.3, 0.3}, {white_light}, {0, 12.0, -32.0})
