module Jekyll
  module PhoneFilter
  	# Convert a phone number into a format that tel: can interpret
    def phone(str)
      str.gsub(@context.registers[:site].config["phone_ext_marker"], ",").gsub(@context.registers[:site].config["phone_delimiter"], "").gsub(" ", "")
    end
  end
end

Liquid::Template.register_filter(Jekyll::PhoneFilter)
