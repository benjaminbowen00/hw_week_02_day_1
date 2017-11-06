require('minitest/autorun')
require('minitest/rg')
require_relative('../library.rb')

class TestLibrary < MiniTest::Test

  def setup
    books1 = [
      {
        title: "lord_of_the_rings",
        rental_details: {
          student_name: "Jeff",
          date: "01/12/16"
        }
      },
      {
        title: "lord_of_the_flies",
        rental_details: {
          student_name: "Eric",
          date: "07/12/16"
        }
      },
      {
        title: "the_ring",
        rental_details: {
          student_name: "Mary",
          date: "13/12/16"
        }
      }
    ]
    @library1 = Library.new(books1)
  end

  def test_list_books
    assert_equal([{
            title: "lord_of_the_rings",
            rental_details: {
              student_name: "Jeff",
              date: "01/12/16"
            }
          },
          {
            title: "lord_of_the_flies",
            rental_details: {
              student_name: "Eric",
              date: "07/12/16"
            }
          },
          {
            title: "the_ring",
            rental_details: {
              student_name: "Mary",
              date: "13/12/16"
            }
          }
        ],
      @library1.list_books())
    end

    def test_return_info_given_book
      assert_equal({
              title: "lord_of_the_rings",
              rental_details: {
                student_name: "Jeff",
                date: "01/12/16"
              }}, @library1.return_info_given_book("lord_of_the_rings"))
    end

    def test_return_rental_info_given_book
      assert_equal({
        student_name: "Eric",
        date: "07/12/16"
      }, @library1.return_rental_info_given_book("lord_of_the_flies"))
    end

    def test_add_book_to_library
      @library1.add_book_to_library("the_bfg")
      assert_equal([{
              title: "lord_of_the_rings",
              rental_details: {
                student_name: "Jeff",
                date: "01/12/16"
              }
            },
            {
              title: "lord_of_the_flies",
              rental_details: {
                student_name: "Eric",
                date: "07/12/16"
              }
            },
            {
              title: "the_ring",
              rental_details: {
                student_name: "Mary",
                date: "13/12/16"
              }
            },
            {
              title: "the_bfg",
              rental_details: {
                student_name: "",
                date: ""
              }
            }
          ], @library1.list_books())
        end

        def test_change_rental_details
          @library1.change_rental_details("lord_of_the_rings", "Frodo", "01/01/76")
          details = @library1.return_info_given_book("lord_of_the_rings")
          assert_equal({
                  title: "lord_of_the_rings",
                  rental_details: {
                    student_name: "Frodo",
                    date: "01/01/76"
                  }}, details)



        end


end
