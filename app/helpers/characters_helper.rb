module CharactersHelper
    def rank_color(rank)
        # 小数に変換
        float_rank = rank.to_f
        if float_rank == 10.0
            color = "#FF0000"
        elsif float_rank >= 9.5
            color = "#FF00FF"
        elsif float_rank >= 9.0
            color = "#800080"
        elsif float_rank >= 8.5
            color = "#0000FF"
        elsif float_rank >= 8.0
            color = "#008080"
        elsif float_rank >= 7.5
            color = "#00CC00"
        elsif float_rank >= 7.0
            color = "#808000"
        elsif float_rank >= 6.5
            color = "#800000"
        end
        "color: #{color};"
    end
end
