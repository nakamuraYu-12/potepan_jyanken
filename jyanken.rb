
def fase_jyanken
    puts "じゃんけん..."
    puts "0(グー)1(チョキ)2(パー)3(戦わない)"
    jankens = ["グー","チョキ","パー",]
    player_jyanken = gets.to_i
    cpu_jyanken = rand(3)

    #プレイヤーが３(戦わない)を選んだ時
    if(player_jyanken >= 3)
        puts "棄権：あなたの負けです"
        return false
    end

    puts "ホイ！"
    puts "--------------------------------------------------------"
    puts "CPUは#{jankens[cpu_jyanken]}を出しました"
    puts "あなたは #{jankens[player_jyanken]}を出しました"
    puts "--------------------------------------------------------"

    #じゃんけんの結果によって処理を変える
    if(cpu_jyanken == player_jyanken)
        #あいこの時
        puts "あいこです"
        return true
    elsif(cpu_jyanken == 0 && player_jyanken == 1) || (cpu_jyanken == 1 && player_jyanken == 2) || (cpu_jyanken == 2 && player_jyanken == 0)
        #プレイヤーが負けた時
        puts "相手が勝ちました"
        jyanken_result = "lose"
        fase_attimuite(jyanken_result)
    else
        #プレイヤーが勝った時
        puts "あなたが勝ちました"
        jyanken_result = "win"
        fase_attimuite(jyanken_result)
    end
    
end

def fase_attimuite(result)
    puts "あっち向いて"
    puts "0(上)1(下)2(左)3(右)"
    selecrs = ["上","下","左","右"]
    player_attimuite = gets.to_i
    cpu_attimuite = rand(4)
    
    puts "ホイ！"
    puts "--------------------------------------------------------"
    puts "CPU:#{selecrs[cpu_attimuite]}"
    puts "あなた:#{selecrs[player_attimuite]}"
    puts "--------------------------------------------------------"

    if(player_attimuite == cpu_attimuite)
        #じゃんけんの結果から勝敗を提示
        case result
        when "lose"
            puts "あなたの負けです"
        when "win"
            puts  "あなたの勝ちです"
        end
        return false
    else
        #勝負がつかない場合は再度じゃんけんを呼び出す
        return true
        fase_jyanken()
    end
end


game_continue = true
#メソッドの戻り値がtrueの時、処理を繰り返す
while game_continue do
    game_continue = fase_jyanken()
end