open_file(file_name) -> file_pointer
read_data(file_pointer) -> data
write_data(file_pointer, data)
close_file(file_pointer)

class FileHandlers 
  def initilize (file_name)
    @file_name = file_name
    @file_pointer = nil
  end

  def open_file()
    @file_pointer = open_file(@file_name)
  end

  def read_data()
    raise "File not open" unless @file_pointer
    read_data(@file_pointer)
  end

  def write_data(data)
    raise "File not open" unless @file_pointer
    write_data(@file_pointer, data)
  end

  def close_file()
    if @file_pointer
      close_file(@file_pointer)
      @file_pointer = nil
    end
  end
end
