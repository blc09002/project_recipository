module ApplicationHelper

# Return the full website title on each page

def full_title (page_title)
	base_title = "Recipository"
	if page_title.empty?
		base_title
	else
		"#{base_title}" | #{page_title}"
	end
end
end
