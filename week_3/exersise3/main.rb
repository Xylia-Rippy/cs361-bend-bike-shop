class Student
  MAX_COURSES = 5

  def remove_from_schedule(course, schedule, quarter_id)
    course_list_for(schedule, quarter_id).remove(course) # remove course from the course list
  end

  def add_to_schedule(course, schedule, quarter_id)
    course_list = course_list_for(schedule, quarter_id) # get the course list for the quarter
    return if course_list.maximum_number_of_courses >= MAX_COURSES
    
    course_list.add(course)
    end

    private

    def course_list_for(schedule, quarter_id) # get the course list for the quarter
      schedule.quarter[quarter_id].course_list
    end
end
