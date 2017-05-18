module BxsliderHelper

  def bx_slider(content_or_options = nil, options = {}, escape = false, &block)
    if content_or_options.kind_of?(Hash)
      options.merge!(content_or_options)
    end

    options[:class] ? options[:class] << " bxslider" : options[:class] = "bxslider"

    if content_or_options.kind_of?(Hash) && !block_given?
      content_tag(:ul, "", options, escape)
    elsif block_given?
      content_tag(:ul, capture(&block), options, escape)
    else
      content_tag(:ul, content_or_options, options, escape)
    end
  end
end
