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
end
