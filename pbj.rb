def cabinet() #opening cabinet door
  sample(:perc_impact2)
  sleep(2)
end

def get_pbj() #getting PB&J
  sample(50)
  sleep(2)
end

def open_lids() #opening lids to pb&j
  sample(:drum_cymbal_closed)
  sleep(2)
end

def plate() #getting and laying the plate down
  play(60)
  sleep(3)
end

def lay_down_bread(loaves) #laying down how many loaves you want
  play(loaves.to_i * 20)
  sleep(3)
end

def get_knives() #getting knives to spread the pb&j
  sample(:elec_ping)
  sleep(2)
end

def spread_smoothpb() # spread smooth peanut butter
  sample(:guit_e_slide)
  sleep(2)
end

def spread_crunchypb() # spread crunchy peanut butter
  sample(:ambi_haunted_hum)
  sleep(2)
end

def crunchy?() #is the peannut butter crunchy?
  result = ["smooth", "crunchy"].sample
  print result
  result
end

def spread_jelly() #spread jelly
  sample(:bass_trance_c)
  sleep(2)
end

def put_bread_together() #put the loaves together
  play(70)
  sleep(2)
end

def eat() #now you're eating the pb&j sandwich
  sample(:drum_tom_mid_soft)
  sleep(2)
end

def clean_up() #wash your plate and knives
  sample(:ambi_dark_woosh)
  sleep(4)
end

2.times do
  cabinet()
  get_pbj()
  open_lids()
  plate()
  lay_down_bread(2)
  get_knives()
  if crunchy?() == "smooth"
    spread_smoothpb()
  else spread_crunchypb()
  end
  spread_jelly()
  put_bread_together()
  eat()
  clean_up()
end