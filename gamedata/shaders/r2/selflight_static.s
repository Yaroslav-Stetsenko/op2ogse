function normal		(shader, t_base, t_second, t_detail)
	shader:begin	("deffer_base_flat","deffer_base_flat")
--			: blend		(true, blend.one,blend.one)
--			: sorting	(2, false)
			: emissive 	(true)
--			: zb 		(true,false)
--			: distort	(true)
			: fog		(false)
	shader:sampler	("s_base")      :texture	(t_base)
end

function l_special	(shader, t_base, t_second, t_detail)
	shader:begin	("shadow_direct_base",	"accum_emissive")
			: blend		(true, blend.one,blend.one)
--			: sorting	(2, false)
			: fog		(false)
			: emissive 	(true)
			: zb 		(true,false)
--			: distort	(true)
--			: fog		(false)
end
