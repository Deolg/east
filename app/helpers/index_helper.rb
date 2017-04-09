module IndexHelper

  def icon(option)
    '<span class="glyphicon glyphicon-ok icon-success">'.html_safe if option
  end
end
