require './methods'

plans = [
  { place: '沖縄', price: 10_000 },
  { place: '北海道', price: 20_000 },
  { place: '九州', price: 15_000 }
]

disp_plans(plans)
chosen_plan = choose_plan(plans)
number_of_reservations = reservations_plan(chosen_plan)
calculate_charges(chosen_plan, number_of_reservations)
