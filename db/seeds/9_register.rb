Register.delete_all
Register.reset_pk_sequence
def register_major examinee, major_id, aspiration
    @registers = examinee.registers.aspiration_1
    @register = @registers.find_by major_id: major_id
    if @register.nil?
      @major = Major.find_by id: major_id
      @university = []
      @registers.each{|a| @university << a.university.id}
      if @university.uniq.count == 2 && !@university.include?(@major.university.id)
        puts "Da dang ki toi da 2 truong dai hoc"
      elsif @university.count(@major.university.id) == 2
        puts "Da dang ki toi da 2 nganh trong truong dai hoc"
      else
        @register = @registers.create!(major_id: major_id,
          year: Time.now.year, status: 1, aspiration: aspiration.to_i)
        puts "#{examinee.student_id} dang ki thanh cong nganh #{major_id}"
      end
    end
  end
examinees = Examinee.graduated.order(:created_at)
4.times do
  examinees.each {|examinee|
  status = 1
  year = 2017
  major_id = rand(Major.count-1)+1
  aspiration = 1

  # if examinee.registers.create!( major_id: major_id, status: status, year: year, aspiration: 1)
  #   puts "#{examinee.student_id} dang ki thanh cong #{major_id}"
  # else
  #   puts "#{examinee.student_id} dang ki khong thanh cong #{major_id}"
  # end
  register_major examinee, major_id, '1'
  }
end

