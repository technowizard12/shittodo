require 'nokogiri'
require 'prawn'
require 'open-uri'
require 'green_shoes'

Shoes.app(:title => "Shit To Do", 
	:width => 375, :height => 150, :resizable => true, :align => "center") do


	background gradient(white, cornsilk)
	bebasFont = font(Dir.pwd + "/fonts/BEBAS___.ttf")

	@title = title("Shit To Do")
	@title.style(:align => "center", :font => bebasFont[0])
		flow(:align => "center"){
			button("Show Today", :align => "center"){
				id = ask("Your ID, Please")
				save_as = ask_save_file
				assignments = []
				hhms = Nokogiri::XML(open("http://homework.harker.org/view/student.php?t=xml&i="+id+"&s=1"))

						name = hhms.xpath('//student/name').text

						hhms.xpath('//class/assignment').each do |node|

						assignments << node
						end

						location = Dir.pwd

						Prawn::Document.generate(save_as + ".pdf")do

						font_families.update("Droid Sans" => {
						:normal => location + "/fonts/DroidSans.ttf",
						:bold => location + "/fonts/DroidSans-Bold.ttf"
						})

						font(location + "/fonts/BEBAS___.ttf", :size => 25) do
							text name + ",", :align=> :center
							text "You've got Shit To Do", :align => :center
							font_size 13
							text hhms.xpath('//date/today/date').text
						end
						stroke_horizontal_rule

		

						for element in assignments do

							move_down 40

							font("Droid Sans") do

							font_size 20

							parentNode = element.parent()

							text "<b>" + element.xpath('./type').text + ": </b>" + element.xpath('../coursename').text, :inline_format => true

			
							font_size 11

							text "Beginning " + element.xpath('./begin').text, :inline_format => true
							text "Ending " + element.xpath('./end').text, :inline_format => true

							font_size 18

							move_down 10

								text element.xpath('./title').text		
							move_down 5
							font_size 15
								text element.xpath('./description-notags').text, :width => 350

							end
						end
					end

					alert("PDF outputted to "+ save_as+ ".pdf. \n\nI love you.")

				}
			button("Show a Date", :align => "center") {
				range = ask("What day? Enter yyyy-mm-dd")
				date = range.split("-")
				id = ask("Your ID, Please")
				save_as = ask_save_file
				hhms = Nokogiri::XML(open("http://homework.harker.org/view/student.php?t=xml&i="+id+"&s=1&y=" + date[0] + "&m=" + date[1] + "&d=" + date[2]))

								assignments = []

						name = hhms.xpath('//student/name').text

						hhms.xpath('//class/assignment').each do |node|

						assignments << node
						end

						location = Dir.pwd

						Prawn::Document.generate(save_as + ".pdf")do

						font_families.update("Droid Sans" => {
						:normal => location + "/fonts/DroidSans.ttf",
						:bold => location + "/fonts/DroidSans-Bold.ttf"
						})

						font(location + "/fonts/BEBAS___.ttf", :size => 25) do
							text name + ",", :align=> :center
							text "You've got Shit To Do", :align => :center
							font_size 13
							text hhms.xpath('//date/today/date').text
						end
						stroke_horizontal_rule

		

						for element in assignments do

							move_down 40

							font("Droid Sans") do

							font_size 20

							parentNode = element.parent()

							text "<b>" + element.xpath('./type').text + ": </b>" + element.xpath('../coursename').text, :inline_format => true

			
							font_size 11

							text "Beginning " + element.xpath('./begin').text, :inline_format => true
							text "Ending " + element.xpath('./end').text, :inline_format => true

							font_size 18

							move_down 10

								text element.xpath('./title').text		
							move_down 5
							font_size 15
								text element.xpath('./description-notags').text, :width => 350

							end
						end
					end
					alert("PDF outputted to "+ save_as+ ".pdf. \n\nI love you.")
			}
			button("Show a Week", :align => "center") {
				weekOf = ask("Week of? Enter yyyy-mm-dd")
			    date = weekOf.split("-")
				id = ask("Your ID, Please")
				save_as = ask_save_file
				hhms = Nokogiri::XML(open("http://homework.harker.org/view/student.php?t=xml&i="+id+"&s=1&y=" + date[0] + "&m=" + date[1] + "&d=" + date[2] + "&mode=weekly"))
				assignments = []

						name = hhms.xpath('//student/name').text

						hhms.xpath('//class/assignment').each do |node|

						assignments << node
						end

						location = Dir.pwd

						Prawn::Document.generate(save_as + ".pdf")do

						font_families.update("Droid Sans" => {
						:normal => location + "/fonts/DroidSans.ttf",
						:bold => location + "/fonts/DroidSans-Bold.ttf"
						})

						font(location + "/fonts/BEBAS___.ttf", :size => 25) do
							text name + ",", :align=> :center
							text "You've got Shit To Do", :align => :center
							font_size 13
							text "Week of " + hhms.xpath('//date/today/date').text
						end
						stroke_horizontal_rule

		

						for element in assignments do

							move_down 40

							font("Droid Sans") do

							font_size 20

							parentNode = element.parent()

							text "<b>" + element.xpath('./type').text + ": </b>" + element.xpath('../coursename').text, :inline_format => true

			
							font_size 11

							text "Beginning " + element.xpath('./begin').text, :inline_format => true
							text "Ending " + element.xpath('./end').text, :inline_format => true

							font_size 18

							move_down 10

								text element.xpath('./title').text		
							move_down 5
							font_size 15
								text element.xpath('./description-notags').text, :width => 350

							end
						end
					end
					alert("PDF outputted to "+ save_as+ ".pdf. \n\nI love you.")
			
		}
	}
	

	
end