module CharactersHelper
    def rank_color(rank)
        # 小数に変換
        float_rank = rank.to_f
        if float_rank == 10.0
            color = "#FF0000"
        elsif float_rank >= 9.0
            color = "#3300FF"
        end
        "color: #{color};"
    end
end
