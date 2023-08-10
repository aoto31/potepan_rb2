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
                puts "あっち向いて〜"
                puts "0(上)1(下)2(右)3(左)"
    
                 me = gets.to_i
                 cpu = rand(3)
                 directions = ["上","下","右","左"]
        
                puts "ホイ！"
                puts "------------------"
                puts "あなた：#{directions[me]}を出しました"
                puts "相手：#{directions[cpu]}を出しました"
                puts "------------------"
    
               if cpu == me
                puts "負けました"
               else
                puts "あいこです。もう一度じゃんけんをします。"
                return janken
               end
                    
                
            when -1,2 then
                puts "じゃんけんに勝ちました。"
                puts "あっち向いて〜"
                puts "0(上)1(下)2(右)3(左)"
    
                  me = gets.to_i
                  cpu = rand(3)
                  directions = ["上","下","右","左"]
        
                puts "ホイ！"
                puts "------------------"
                puts "あなた：#{directions[me]}を出しました"
                puts "相手：#{directions[cpu]}を出しました"
                puts "------------------"
    
               if me == cpu
                puts "勝ちました"
               else
                puts "あいこです。もう一度じゃんけんをします。"
                return janken
               end
                

        end
    
    end
    
end

janken

