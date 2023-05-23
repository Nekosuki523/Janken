puts "あっち向いてホイゲームをします。"


def jankenGame
    puts "じゃんけん..."
    puts "0(グー)１（チョキ）２（パー）３（たたかわない）"

myHand = gets.chomp.to_i
programHand = rand(3)


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

if  myHand == programHand
    puts "あいこです。もう一回！"
    return true
    
    elsif (myHand == 2 && programHand == 0 || myHand == 1 && programHand == 2 || myHand == 0 && programHand == 1)
    puts "じゃんけんに勝ちました！指の方向を選んでね！"
    puts "------------------------"
    $win_lose = "win"
    acchimuite
    
    else 
    puts "残念...顔の方向を選んでね！"
    puts "------------------------"
    $win_lose = "lose"
    acchimuite
end    
end

puts "------------------------"

def acchimuite
puts "顔の向きを選んでください。"
puts "上(0) 下(1) 右(2) 左(3)"
myFace = gets.to_i
programFace = rand(4)

face_direction = ["上","下","右","左"]

puts "あなたの方向は#{face_direction[myFace]}。相手の方向は#{face_direction[programFace]}です。"

if $win_lose == "win" && myFace == programFace
        puts "やったね！あなたの勝ちです！また遊んでね！"
        return false
    elsif $win_lose == "lose" && myFace == programFace
        puts "残念...あなたの負けです...また遊んでね！"
        return false
    else
        puts "もう一回！じゃんけんのやり直し！"
        puts "------------------------"
        return true
    end
end    


next_game = true

while next_game
    next_game = jankenGame
end
