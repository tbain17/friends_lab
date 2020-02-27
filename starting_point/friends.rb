def get_name(person)
  return person[:name]
end

def fav_tv(person)
  return person[:favourites][:tv_show]
end

def fav_food(person, snack)
  if person[:favourites][:snacks] = snack
    return true
  else
    return false
  end
end

def add_friend(person, new_friend)
  person[:friends].push(new_friend)
end

def remove_friend(person, old_friend)
  person[:friends].delete (old_friend)
end


def count_money(people)
  total = 0
  for person in people
    total += person[:monies]
  end
  return total
end

def loan_money(lender, lendee, amount)
  lender[:monies] = lender[:monies] - amount
  lendee[:monies] = lendee[:monies] + amount
end

def all_fav_foods(person)
  foods = []
  for people in person
    foods.push(people[:favourites][:snacks])
  end
    return foods.flatten
end

def loners(people)
  friendless_people = []
  for person in people
    if person[:friends].length == 0
    friendless_people.push(person[:name])
    end
  end
  return friendless_people
end
