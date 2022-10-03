Option.destroy_all
Poll.destroy_all

Poll.create!([{
title: "Will Rails crush React?"
}])

p "Created #{Poll.count} poll"

Option.create!([
{ 
title: "Totally",
poll_id: 1,
vote_count: 0 
}, 
{ 
title: "Affirmative",
poll_id: 1,
vote_count: 0 
},
{ 
title: "Yep",
poll_id: 1,
vote_count: 0 
}
])

p "Created #{Option.count} options"