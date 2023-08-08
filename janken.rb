def janken
   
    puts "じゃんけん……"
    puts "0(グー)1(チョキ)2(パー)3(戦わない)"
    
    hand_type = gets.to_i
    random_hand = rand(3) 
   
    jankens = ["グー","チョキ","パー","戦わない"]
    
    puts "ホイ！"
    puts "------------------"
    puts "あなた：#{jankens[hand_type]}を出しました"
    puts "相手：#{jankens[random_hand]}を出しました"
    puts "------------------"

    if hand_type == 3 || random_hand == 3
        puts "ジャンケンが放棄されました。ゲームを終了します。"
        return true
    else
        number = hand_type - random_hand
        case number
            when 0 then
                puts "あいこです。もう一度じゃんけんをします。"
                janken
            when 1,-2 then
                puts "じゃんけんに負けました。"
                load './hoi_lose.rb'
#                hoi_lose = Hoi2.new
#                hoi_lose.Hoi2
                
            when -1,2 then
                puts "じゃんけんに勝ちました。"
                load './hoi_win.rb'
#                hoi_win = Hoi1.new
#                hoi_win.Hoi1
                
        end
    end
end

janken


