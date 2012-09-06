module Texthelpers
  module ViewHelpers
    def title_for(page, options = {})
      options[:field] ||= "title"
      begin
        title = page.send("#{options[:field]}_#{I18n.locale}")
        # Return default language title if no translation available
        if title.blank?
          title = page.send("#{options[:field]}_#{I18n.default_locale.to_s}")
        end

        title
      rescue
        nil
      end
    end

    def text_for(page, options = {})
      options[:markdown] ||= "yes"
      options[:field] ||= "text"

      text = page.send("#{options[:field]}_#{I18n.locale}")

      if text.blank?
        text = page.send("#{options[:field]}_#{I18n.default_locale.to_s}")
      end

      if options[:truncate] 
        text = truncate text, :length => options[:truncate]
      end

      if options[:markdown] == "yes"
        raw BlueCloth.new(raw text).to_html
      else
        text
      end
    end
  end
end