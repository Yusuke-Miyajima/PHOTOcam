class HomeController < ApplicationController
	def top
		#detail_genreを抽出
		@own_photo_detail_genre = DetailGenre.joins(:photos).distinct
		@detail_genres = []
		@own_photo_detail_genre.each do |de|
			@detail_genres << de.id
		end
		d_a = @detail_genres.sample
		@first_detail_genre = @own_photo_detail_genre.find_by(id: d_a)
		d_b = @detail_genres.sample
		@second_detail_genre = @own_photo_detail_genre.find_by(id: d_b)

		#first_detail_genreのphotoを抽出
		@first_detail_genre_photo = @first_detail_genre.photos
		@first_detail_genre_photos = []
		@first_detail_genre_photo.each do |f_de|
			@first_detail_genre_photos << f_de.id
		end
		fdp_a = @first_detail_genre_photos.sample
		@first_first_detail_genre_photo = @first_detail_genre_photo.find_by(id:fdp_a)
		fdp_b = @first_detail_genre_photos.sample
		@second_first_detail_genre_photo = @first_detail_genre_photo.find_by(id:fdp_b)
		fdp_c = @first_detail_genre_photos.sample
		@third_first_detail_genre_photo = @first_detail_genre_photo.find_by(id:fdp_c)

		#second_detail_genreのphotoを抽出
		@second_detail_genre_photo = @second_detail_genre.photos
		@second_detail_genre_photos = []
		@second_detail_genre_photo.each do |s_de|
			@second_detail_genre_photos << s_de.id
		end
		sdp_a = @second_detail_genre_photos.sample
		@first_second_detail_genre_photo = @second_detail_genre_photo.find_by(id:sdp_a)
		sdp_b = @second_detail_genre_photos.sample
		@second_second_detail_genre_photo = @second_detail_genre_photo.find_by(id:sdp_b)
		sdp_c = @second_detail_genre_photos.sample
		@third_second_detail_genre_photo = @second_detail_genre_photo.find_by(id:sdp_c)

		#bodyを抽出
		@own_photo_body = Body.joins(:photos).distinct
		@bodies = []
		@own_photo_body.each do |bo|
			@bodies << bo.id
		end
		p @own_photo_body
		p @bodies
		b_a = @bodies.sample
		p b_a
		@first_body = @own_photo_body.find_by(id: b_a)
		p @first_body
		b_b = @bodies.sample
		@second_body = @own_photo_body.find_by(id: b_b)
		b_c = @bodies.sample
		@third_body = @own_photo_body.find_by(id: b_c)
		b_d = @bodies.sample
		@fourth_body = @own_photo_body.find_by(id: b_d)

		#first_bodyのphotoを抽出
		@first_body_photo = @first_body.photos
		@first_body_photos = []
		@first_body_photo.each do |f_bo|
			@first_body_photos << f_bo.id
		end
		fbp_a = @first_body_photos.sample
		@first_first_body_photo = @first_body_photo.find_by(id:fbp_a)
		fbp_b = @first_body_photos.sample
		@second_first_body_photo = @first_body_photo.find_by(id:fbp_b)
		fbp_c = @first_body_photos.sample
		@third_first_body_photo = @first_body_photo.find_by(id:fbp_c)

		#second_bodyのphotoを抽出
		@second_body_photo = @second_body.photos
		@second_body_photos = []
		@second_body_photo.each do |s_bo|
			@second_body_photos << s_bo.id
		end
		sbp_a = @second_body_photos.sample
		@first_second_body_photo = @second_body_photo.find_by(id:sbp_a)
		sbp_b = @second_body_photos.sample
		@second_second_body_photo = @second_body_photo.find_by(id:sbp_b)
		sbp_c = @second_body_photos.sample
		@third_second_body_photo = @second_body_photo.find_by(id:sbp_c)

		#third_bodyのphotoを抽出
		@third_body_photo = @third_body.photos
		@third_body_photos = []
		@third_body_photo.each do |t_bo|
			@third_body_photos << t_bo.id
		end
		tbp_a = @third_body_photos.sample
		@first_third_body_photo = @third_body_photo.find_by(id:tbp_a)
		tbp_b = @third_body_photos.sample
		@second_third_body_photo = @third_body_photo.find_by(id:tbp_b)
		tbp_c = @third_body_photos.sample
		@third_third_body_photo = @third_body_photo.find_by(id:tbp_c)

		#fourth_bodyのphotoを抽出
		@fourth_body_photo = @fourth_body.photos
		@fourth_body_photos = []
		@fourth_body_photo.each do |fo_bo|
			@fourth_body_photos << fo_bo.id
		end
		fobp_a = @fourth_body_photos.sample
		@first_fourth_body_photo = @fourth_body_photo.find_by(id:fobp_a)
		fobp_b = @fourth_body_photos.sample
		@second_fourth_body_photo = @fourth_body_photo.find_by(id:fobp_b)
		fobp_c = @fourth_body_photos.sample
		@third_fourth_body_photo = @fourth_body_photo.find_by(id:fobp_c)

		#lensを抽出
		@own_photo_lens = LensSystem.joins(:photos).distinct
		@lenses = []
		@own_photo_lens.each do |le|
			@lenses << le.id
		end
		l_a = @lenses.sample
		@first_lens = @own_photo_lens.find_by(id: l_a)
		l_b = @lenses.sample
		@second_lens = @own_photo_lens.find_by(id: l_b)
		l_c = @lenses.sample
		@third_lens = @own_photo_lens.find_by(id: l_c)
		l_d = @lenses.sample
		@fourth_lens = @own_photo_lens.find_by(id: l_d)

		#first_lensのphotoを抽出
		@first_lens_photo = @first_lens.photos
		@first_lens_photos = []
		@first_lens_photo.each do |f_le|
			@first_lens_photos << f_le.id
		end
		flp_a = @first_lens_photos.sample
		@first_first_lens_photo = @first_lens_photo.find_by(id:flp_a)
		flp_b = @first_lens_photos.sample
		@second_first_lens_photo = @first_lens_photo.find_by(id:flp_b)
		flp_c = @first_lens_photos.sample
		@third_first_lens_photo = @first_lens_photo.find_by(id:flp_c)

		#second_lensのphotoを抽出
		@second_lens_photo = @second_lens.photos
		@second_lens_photos = []
		@second_lens_photo.each do |s_le|
			@second_lens_photos << s_le.id
		end
		slp_a = @second_lens_photos.sample
		@first_second_lens_photo = @second_lens_photo.find_by(id:slp_a)
		slp_b = @second_lens_photos.sample
		@second_second_lens_photo = @second_lens_photo.find_by(id:slp_b)
		slp_c = @second_lens_photos.sample
		@third_second_lens_photo = @second_lens_photo.find_by(id:slp_c)

		#third_lensのphotoを抽出
		@third_lens_photo = @third_lens.photos
		@third_lens_photos = []
		@third_lens_photo.each do |t_le|
			@third_lens_photos << t_le.id
		end
		tlp_a = @third_lens_photos.sample
		@first_third_lens_photo = @third_lens_photo.find_by(id:tlp_a)
		tlp_b = @third_lens_photos.sample
		@second_third_lens_photo = @third_lens_photo.find_by(id:tlp_b)
		tlp_c = @third_lens_photos.sample
		@third_third_lens_photo = @third_lens_photo.find_by(id:tlp_c)

		#fourth_lensのphotoを抽出
		@fourth_lens_photo = @fourth_lens.photos
		@fourth_lens_photos = []
		@fourth_lens_photo.each do |fo_le|
			@fourth_lens_photos << fo_le.id
		end
		folp_a = @fourth_lens_photos.sample
		@first_fourth_lens_photo = @fourth_lens_photo.find_by(id:folp_a)
		folp_b = @fourth_lens_photos.sample
		@second_fourth_lens_photo = @fourth_lens_photo.find_by(id:folp_b)
		folp_c = @fourth_lens_photos.sample
		@third_fourth_lens_photo = @fourth_lens_photo.find_by(id:folp_c)

	end

	def about
	end

end
