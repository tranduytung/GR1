module RegistersHelper
  def register_major registers, major_id, aspiration
    @register = registers.find_by major_id: major_id
    if @register.nil?
      @major = Major.find_by id: major_id
      @university = []
      registers.each{|a| @university << a.university.id}
      if @university.uniq.count == 2 && !@university.include?(@major.university.id)
        flash[:danger] = "Da dang ki toi da 2 truong dai hoc"
      elsif @university.count(@major.university.id) == 2
        flash[:danger] = "Da dang ki toi da 2 nganh trong truong dai hoc"
      else
        @register = registers.create!(major_id: major_id,
          year: Time.now.year, status: 1, aspiration: aspiration.to_i)
      end
    end
  end
end
