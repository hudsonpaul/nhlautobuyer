module ApplicationHelper

  def humanize secs
      return 'Expired' if secs < 0
      [[60, :s], [60, :m], [24, :h], [1000, :D]].map{ |count, name|
            if secs > 0
                    secs, n = secs.divmod(count)
                          "#{n.to_i}#{name}"
                              end
              }.compact.reverse.join(' ')
  end

  def get_class_for_time(secs)

    return 'danger' if secs <= 600 && secs >0
    return 'warning' if secs <= 3600 && secs > 600
    return ''

  end
end
