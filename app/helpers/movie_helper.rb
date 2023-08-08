module MovieHelper
  def mv_showing(is_showing)
    if is_showing == true
      "上映中"
    else
      "上映予定"
    end
  end
end
