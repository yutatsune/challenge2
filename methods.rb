def disp_plans(plans)
  puts '旅行プランを選択してください。'
  plans.each.with_index(1) do |plan, i|
    puts "#{i}. #{plan[:place]}(#{plan[:price]})円"
  end
end

def choose_plan(plans)
  while true
    print 'プランの番号を選択 > '
    select_plan_num = gets.to_i
    break if (1..3).include?(select_plan_num)

    puts '1~3の番号を入力してください。'
  end
  plans[select_plan_num - 1]
end

def reservations_plan(chosen_plan)
  puts <<~TEXT
    #{chosen_plan[:place]}旅行ですね。
    何名で予約されますか？
  TEXT
  while true
    print '人数を入力 > '
    number_of_reservations = gets.to_i
    break if number_of_reservations >= 1

    puts '1以上を入力してください'
  end
  number_of_reservations
end

def calculate_charges(chosen_plan, number_of_reservations)
  total_price = chosen_plan[:price] * number_of_reservations
  puts "#{number_of_reservations}名ですね。"
  if number_of_reservations >= 5
    total_price *= 0.9
    puts '5名以上ですので10%割引となります'
  end
  puts "合計料金は#{total_price.floor}円になります。"
end
