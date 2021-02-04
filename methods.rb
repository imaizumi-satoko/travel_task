def display_plan(plans)
  puts "旅行プランを選択して下さい。"
  plans.each.with_index(1) do |plan, i|
    puts "#{i}. #{plan[:place]}旅行 (#{plan[:price]}円)"
  end
end

def choose_plan(plans)
  while true do
    puts "プランの番号を選択 > "
    select_plan_num = gets.to_i
    break if (1..3).include?(select_plan_num)
    puts "1~3の番号を入力してください"
  end
  plans[select_plan_num - 1]
end

def decide_plan(chosen_plan)
  puts "#{chosen_plan[:place]}旅行ですね。"
  puts "何名で予約されますか？"
  while true do 
    puts "人数を入力 > "
    count_of_people = gets.to_i
    break if count_of_people > 0
    puts "1以上を入力してください"
  end
  count_of_people
end

def calulate_total_charges(chosen_plan, decide_count)
  puts "#{decide_count}名ですね。"
  total_charges = chosen_plan[:price] * decide_count
  if decide_count >= 5
    puts "5名以上なので10%割引となります。"
    total_charges *= 0.9
  end
  puts "合計料金は#{total_charges.floor}円になります。"
end