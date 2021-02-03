puts <<~TEXT
旅行プランを選択して下さい。

1. 沖縄旅行（10000円）
2. 北海道旅行（20000円）
3. 九州旅行（15000円）

TEXT

while true do
  puts "プランの番号を選択 >"
  plan_num = gets.to_i
break if (1..3).include?(plan_num)
  puts "1~3の番号を入力してください。"
end

case  plan_num
  when 1
    place = "沖縄"
    price = 10000
  when 2
    place = "北海道"
    price = 20000
  when 3
    place = "九州"
    price = 15000
end
puts "#{place}旅行ですね。"

while true do
  puts "何名で予約されますか？"
  puts "人数を入力 >"
  count = gets.to_i
break if count > 0
  puts "1以上を入力してください。"
end

puts "#{count}名ですね。"
total_prace = price * count
if count >= 5
  puts "5名以上ですので10%割引となります。"
  total_prace *= 0.9
  else
  total_prace
end

puts "合計料金は#{total_prace.floor}円になります。"
