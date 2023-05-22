require "csv"
class JankenGame
puts "あっち向いてホイゲームをします。"


while true
    puts "じゃんけん..."
    puts "0(グー)１（チョキ）２（パー）３（たたかわない）"
myHand = gets.chomp.to_i
programHand = rand(3)
case_pattern = ""

if myHand == 3
    puts "また遊んでね！"
    exit
elsif myHand > 3
    puts "０〜３の数値を入力してください。"
    exit
end

jankens = ["グー","チョキ","パー"]
puts "ホイ！"
puts "あなたは#{jankens[myHand]}を出しました。相手は#{jankens[programHand]}を出しました。"

if  (myHand == 2 && programHand == 0 || myHand == 1 && programHand == 2 || myHand == 0 && programHand == 1)
    puts "あなたの勝ちです！あっち向いて..."
    win_lose = "win"
    break
    elsif (myHand == 0 && programHand == 2 || myHand == 2 && programHand == 1 || myHand == 1 && programHand == 0)
    puts "残念...顔の方向を選んでね！"
    win_lose = "lose"
    break
    else myHand == programHand 
    puts "あいこです。もう一回！"
end    
end


puts "------------------------"

puts "顔の向きを選んでください。"
puts "上(0) 下(1) 右(2) 左(3)"
myFace = gets.to_i
programFace = rand(4)

face_direction = ["上","下","右","左"]

puts "あなたの方向は#{face_direction[myFace]}。相手の方向は#{face_direction[programFace]}です。"

        
case win_lose
when "win"
    if myFace == programFace
        puts "やったね！あなたの勝ちです！また遊んでね"
        exit
    else
            puts "もう一回！じゃんけん..."
            
    end
    when "lose"
    if myFace == programFace
        puts "残念...あなたの負けです。また遊んでね"
        exit
    else
            puts "もう一回！"
    end
end           

end
