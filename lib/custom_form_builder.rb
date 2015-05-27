class CustomFormBuilder < ActionView::Helpers::FormBuilder
  def form_error
    if self.object.errors.any?
      plural_name = self.object.class.model_name.plural
      model_name = self.object.class.model_name.human
      is_new = self.object.persisted? ? 'edit' : 'new'

      @template.content_tag :div, class: 'form-error' do
        @template.content_tag :p, I18n.t("#{plural_name}.#{is_new}.form.error", model: model_name)
      end
    end
  end

  def field_error(method)
    if self.object.errors[method].any?
      @template.content_tag :span, self.object.errors[method].first,
        class: 'field-error'
    end
  end
end
