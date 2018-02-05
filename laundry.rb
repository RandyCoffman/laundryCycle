def wear(smell)
  sample(:drum_bass_hard, rate:smell)
  sleep(2)
  print "Sample means wear from function"
end

def stain_treat()
  play(50)
end

def dirty?()
  result = [true, false].sample
  print result
  result
end

def wash(temp, pause)
  play(temp)
  sleep(pause)
  print "Play means wash"
end

def dry(dryness)
  sample(dryness)
  print "Sample is our dry"
end


10.times do
  wear(10)
  if dirty?() == true
    stain_treat()
  end
  wash(60,2)
  dry(:elect_beep)
  dry(:ambi_choir)
end