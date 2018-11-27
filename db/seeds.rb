# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Series
 fifa19_series_one = Series.create(title: "Fifa 19", description: "BEST FIFA 19 TUTORIALS & TIPS & SKILLS", level: "difficult")
 fifa19_series_two = Series.create(title: "Fifa 2", description: "Best FIFA 19 Tutorials Tricks & Skills ", level: "difficult")

 # Videos for series one
series_one_videos = [
{title: "FIFA 19 OMG", url: "https://www.youtube.com/embed/yXlMxAi7Tog", description: "WE COMPLETED THE BEST SBC FLASHBACK STURRIDGE FOR 40K!"},
{title: "Fifa 19 Division Rivals", url: "https://www.youtube.com/embed/3P4wSO2aZwo", description: "MY INSANE BLACK FRIDAY 1 MILLION COIN SQUAD"},
{title: "FIFA 19 MY FUT CHAMPIONS", url: "https://www.youtube.com/embed/I3-iGmOuqHU", description: "WE PACK 5 X IF WALKOUTS!"},
{title: "HOW TO STOP ALL GAME BREAKING GLITCHES in FIFA 19", url: "https://www.youtube.com/embed/mH-3p_XHp78", description: "ULTIMATE TEAM! DEFEND THE MOST ANNOYING GLITCHES"},
{title: "FIFA 19 BEST CHEAP & RELIABLE PLAYER", url: "https://www.youtube.com/embed/GqjAW4X0w7E", description: "TO BUY DURING BLACK FRIDAY MARKET CRASH FOR DIVISION RIVALS"},
{title: "FIFA 19 MY MOST INSANE START", url: "https://www.youtube.com/embed/WaUvpqnKuh8", description: "IN FUT CHAMPIONS WITH THE BEST 3 MILLION SQUAD!"},
{title: "MOST UNDERRATED SKILL MOVE in FIFA 19", url: "https://www.youtube.com/embed/tLsxqDrdAxY", description: "ULTIMATE TEAM! MY SECRET WEAPON in FUT CHAMPIONS!"},
{title: "MOST UNDERRATED SKILL MOVE in FIFA 19", url: "https://www.youtube.com/embed/tLsxqDrdAxY", description: "ULTIMATE TEAM! MY SECRET WEAPON in FUT CHAMPIONS!"},
{title: "FIFA 19 BEST PLAYER", url: "https://www.youtube.com/embed/H0mEuU4JXLs", description: "TO BUY DURING BLACK FRIDAY MARKET CRASH FOR FUT CHAMPIONS & DIVISION RIVALS"},
{title: "FIFA 19 MOMENTS YOU WOULDN'T BELIEVE IF THEY WEREN'T RECORDED!",url: "https://www.youtube.com/embed/6TCNnciBMpo", description: "PLAYING FUT CHAMPIONS"},
{title: "FIFA 19 TRICKS", url: "https://www.youtube.com/embed/XPOAtnnF1sk", description: "IF YOU DON'T USE THESE YOU WILL NEVER GET BETTER & BECOME A DIVISION 1 PLAYER"},
{title: "FIFA 19 I GOT THE BEST WINGER", url: "https://www.youtube.com/embed/gXI2Fe2Puus", description: "FOR DIVISION RIVALS & FUT CHAMPIONS! ROAD TO GLORY"},
{title: "FIFA 19 AFTER PATCH MY NEW OP TACTICS", url: "https://www.youtube.com/embed/E_zp33c9hd8", description: "IN DIVISION 1 (DIVISION RIVALS) & FUT CHAMPIONS"},
{title: "FIFA 19 TOP 3 THINGS YOU MUST CHANGE IN YOUR PLAY AFTER THE NEW GAMEPLAY PATCH", url: "https://www.youtube.com/embed/6gaeEwY9Urc", description: "(VERSION 1.04)"},
{title: "FIFA 19 SBC MARCOS ALONSO!", url: "https://www.youtube.com/embed/gmJrCQfMUIY", description: "OMG WE PACK A VERY HUGE WALKOUT ROAD TO THE FINAL!"},
{title: "FIFA 19 AMAZING PERFORMANCE IN FUT CHAMPIONS!", url: "https://www.youtube.com/embed/p_52FxTHY3E", description: "BEST START SO FAR! MY MOST IMPORTANT GAMES!"},
{title: "FIFA 19 NEW CHEAP GUARANTEED UCL SBC!", url: "https://www.youtube.com/embed/Bl0S6QZsqrU", description: "WE PACK A UCL WALKOUT PLAYER!"}
]

# Videos for series two
series_two_videos = [
{title: "BLACK FRIDAY ULTIMATE PROMO PACKS", url: "https://www.youtube.com/embed/tLkArqPwtcg", description: "AMAZING WALKOUTS in MY BEST FIFA 19 PACK OPENING"},
{title: "FIFA 19 BLACK FRIDAY ", url: "https://www.youtube.com/embed/YTeHMK-Zits", description: "LIGHTNING ROUNDS PACK OPENING !!! PROMO PACKS !!"},
{title: "FIFA 19 BLACK FRIDAY MARKET CRASH SQUAD BUILDERS", url: "https://www.youtube.com/embed/mdVFDw3i3K4", description: "1 MILLION / 2 MILLION / 3 MILLION COINS TEAMS"},
{title: "MY FIFA 19 ELITE FUTCHAMPIONS REWARDS", url: "https://www.youtube.com/embed/NnDNBHVcYNg", description: "FIFA 19 WEEKEND LEAGUE REWARDS PACK OPENING"},
{title: "WALKOUT in MY FIFA 19", url: "https://www.youtube.com/embed/UhCGH3tlsN4", description: "DIVISION 1 RIVALS REWARDS - FIFA 19 PACK OPENING !!!"},
{title: "MOST OVERPOWERED PREMIER LEAGUE CB in FIFA 19", url: "https://www.youtube.com/embed/sz3LnKVNnE4", description: "DIVISION 1 RIVALS & FUTCHAMPIONS !!!!"},
{title: "FIFA 19 MOST OVERPOWERED FORMATION TO CLOSE GAMES & COUNTER HIGH PRESSURE", url: "https://www.youtube.com/embed/MiujYPfAvqQ", description: "TACTICS & INSTRUCTIONS"},
{title: "MOST OVERPOWERED TEAM IN FIFA 19", url: "https://www.youtube.com/embed/s4l_XYbfP4Q", description: "DIVISION 1 RIVALS - HUGE TEAM UPGRADE"},
{title: "OMG NEW FIFA 19 REVOLUTIONARY PATCH", url: "https://www.youtube.com/embed/-O9xkzTG-uI", description: "OMG NEW FIFA 19 REVOLUTIONARY PATCH"},
{title: "FIFA 19 MY WEEKEND LEAGUE GONE WRONG",url: "https://www.youtube.com/embed/i3x5E-Verx4", description: "INSANE FIFA RAGE BECAUSE OF THE EA SERVERS !!"},
{title: "BEST AFFORDABLE ICON in FIFA 19 ULTIMATE TEAM", url: "https://www.youtube.com/embed/zQc8mdW-8Qg", description: "DIVISION RIVALS & FUTCHAMPIONS"},
{title: "FIFA 19 BEST SBC`S TO DO FOR REWARDS ???", url: "https://www.youtube.com/embed/gdh77Ocbry0", description: "FIFA 19 SBC REWARDS PACK OPENING !!!"},
{title: "FIFA 19 AFTER PATCH MY NEW OP TACTICS", url: "https://www.youtube.com/embed/oKK0AjpiiFs", description: "HUGE GLITCH IN THE GAME !!!"}
]

# Add videos for the created series
 series_one_videos.each do |el|
    fifa19_series_one.videos.create(el)
 end

 series_two_videos.each do |el|
    fifa19_series_two.videos.create(el)
 end