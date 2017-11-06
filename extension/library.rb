class Library
  attr_reader :books
  def initialize(books)
    @books = books
  end

  def list_books()
    return @books
  end

  def return_info_given_book(book_title)
    for book in @books
      if book[:title] == book_title
        return book
      end
    end
    return
  end


  def return_rental_info_given_book(book_title)
      return return_info_given_book(book_title)[:rental_details]
  end

  def add_book_to_library(book_title)
    book_hash = Hash.new
    book_hash[:title] = book_title
    book_hash[:rental_details] = {student_name: "", date: ""}
    @books << book_hash
  end

  def change_rental_details(book_title, lendee, date)
    for book in @books
      if book[:title] == book_title
        book[:rental_details][:student_name] = lendee
        book[:rental_details][:date] = date
      end
    end
  end


end



# books = [
#   {
#     title: "lord_of_the_rings",
#     rental_details: {
#       student_name: "Jeff",
#       date: "01/12/16"
#     }
#   },
#   {
#     title: "lord_of_the_flies",
#     rental_details: {
#       student_name: "Eric",
#       date: "07/12/16"
#     }
#   },
#   {
#     title: "the_ring",
#     rental_details: {
#       student_name: "Sheila",
#       date: "13/12/16"
#     }
#   }
# ]
# library1 = Library.new(books)
#
# p library1.list_books()
