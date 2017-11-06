require('minitest/autorun')
require('minitest/rg')
require_relative('../library.rb')

class TestLibrary < MiniTest::Test

  def setup
    @library1 = [
      {
        title: "lord_of_the_rings",
        rental_details: {
          student_name: "Jeff",
          date: "01/12/16"
        }
      }
      {
        title: "lord_of_the_flies",
        rental_details: {
          student_name: "Eric",
          date: "07/12/16"
        }
      }
      {
        title: "the_ring",
        rental_details: {
          student_name: "Sheila",
          date: "13/12/16"
        }
      }
    ]

  end

end
