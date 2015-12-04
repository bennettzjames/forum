require_relative "config"



users = [
	{username: "bennettzjames", avatar_img: "none_yet"},
	{username: "someguy", avatar_img: "noneyet"}
]

User.create(users)



# genres = [
# 	{name: "Action"},
# 	{name: "Comedy"},
# 	{name: "Drama"},
# 	{name: "Horror"},
# 	{name: "Mystery"},
# 	{name: "Romance"},
# 	{name: "Thriller"}
# ]

# Genre.create(genres)

# shows = [
# 	{genre_id: 2, title: "It's Always Sunny in Philadelphia", rating: 9, info: "Four young friends with big egos and slightly arrogant attitudes are the proprietors of an Irish bar in Philadelphia."}
# ]


# TvShow.create(shows)


links = [
	{tv_show_id: 1, user_id: 1, link: "netflix.com", subscription: 1},
	{tv_show_id: 1, user_id: 1, link: "watchseries.to", subscription: 0}
]


Link.create(links)


comments = [
	{comment: "great show, very funny", user_id: 1, tv_show_id: 1},
	{comment: "a little dark", user_id: 2, tv_show_id: 1}
]

Comment.create(comments)

