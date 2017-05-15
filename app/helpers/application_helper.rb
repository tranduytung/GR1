module ApplicationHelper
  def full_title page_title = ""
    base_title = t :base_title
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
  def link_to_remove_fields name, f
    f.hidden_field(:_destroy) + link_to_function(name, "remove_fields(this)")
  end

  def link_to_function name, *args, &block
    html_options = args.extract_options!.symbolize_keys

    function = block_given? ? update_page(&block) : args[0] || ""
    onclick = "#{"#{html_options[:onclick]};
      "if html_options[:onclick]}#{function}; return false;"
    href = html_options[:href] || "#"

    content_tag(:a, name, html_options.merge(href: href,
      onclick: onclick))
  end

  def link_to_add_row(name, f, association)
    new_object = f.object.send(association).klass.new
    id = new_object.object_id
    fields = f.fields_for( association, new_object, child_index: id) do |child_for_form|
      render(association.to_s.singularize + "_row", f: child_for_form)
    end
    link_to(name, '', class: "add_row", data: { id: id, fields: fields.gsub("\n", "")})
  end

  def link_to_add_field(name, f, association)
    new_object = f.object.send(association).klass.new
    id = new_object.object_id
    fields = f.fields_for( association, new_object, child_index: id) do |child_for_form|
      render(association.to_s.singularize + "_field", f: child_for_form)
    end
    link_to(name, '', class: "add_fields", data: { id: id, fields: fields.gsub("\n", "")})
  end

  def register_time
    @register_time = RegisterTime.find_by year: Time.now.year
  end

  def name_group group
    result = ""
    result += t("math") + "(#{group.math})" unless group.math == 0
    result += t("literature") + "(#{group.literature})" unless group.literature == 0
    result += t("english") + "(#{group.english})" unless group.english == 0
    result += t("physical") + "(#{group.physical})" unless group.physical == 0
    result += t("chemistry") + "(#{group.chemistry})" unless group.chemistry == 0
    result += t("biological") + "(#{group.biological})" unless group.biological == 0
    result += t("history") + "(#{group.history})" unless group.history == 0
    result += t("geography") + "(#{group.geography})" unless group.geography == 0
    return result
  end
end
