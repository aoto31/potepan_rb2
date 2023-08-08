def hoi
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
        else cpu != me
        　puts "あいこです。もう一度じゃんけんをします。"
        　require "./jyanken"
        end
end