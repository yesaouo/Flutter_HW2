List<String> groupList = [
  'ALL',
  'Gen 0',
  'Gen 1',
  'Gen 2',
  'GAMERS',
  'Gen 3',
  'Gen 4',
  'Gen 5',
  'holoX',
  'ReGLOSS'
];
List<String> findGroup(String groupName) {
  List<String> result = [];

  personalData.forEach((name, details) {
    if (groupName == 'ALL' || details['group'].contains(groupName)) {
      result.add(name);
    }
  });

  return result;
}

Map<String, Map<String, dynamic>> personalData = {
  'Tokino Sora': {
    'group': ['Gen 0'],
    'introduction':
        "Hey, Sora-tomo! How are you all doing? It's me, Tokino Sora!",
    'detail':
        "hololive Production's first virtual idol, debuting on September 7, 2017. She loves horror games and singing, and has always dreamed of performing in Yokohama Arena. She signed a record deal with Victor Entertainment in March 2019. She is active in various forms of media, such as appearing in Watanuki-san Chi no and hosting Sora Ao to!, a radio show. She held her first solo concert, Dream!, on October 6, 2019, taking one step closer to her ultimate goal.",
    'links': {
      "YouTube": "https://www.youtube.com/channel/UCp6993wxpyDPHUpavwDFqgg",
      "X": "https://twitter.com/tokino_sora",
      "OFFICIAL FAN CLUB": "https://tokinosora-fc.com/",
      "VICTOR ENTERTAINMENT":
          "https://www.jvcmusic.co.jp/-/Artist/A026407.html",
      "MMD": "https://3d.nicovideo.jp/works/td63641"
    },
  },
  'Robocosan': {
    'group': ['Gen 0'],
    'introduction': "Hellobo! Roboco here!",
    'detail':
        "Hellobo! It's me, the high-spec hololive VTuber Roboco! I showed up from a faraway wasteland having lost all my memories. I believe I'm pretty high-spec, but some rumors say that it'd be more accurate to call me 'broken'... lol. I'm a gamer gal whose defining trait is a very human, emotional singing voice! Am I really a robot? Whoops, looks like my arm came off...",
    'links': {
      "YouTube": "https://www.youtube.com/channel/UCDqI2jOz0weumE8s7paEk6g",
      "X": "https://twitter.com/robocosan",
      "Song playlist":
          "https://www.youtube.com/playlist?list=PLF54qiUa9cTu9eyx3Ukx88jtJUCKGFvWL",
      "MMD": "https://3d.nicovideo.jp/works/td63645"
    },
  },
  'AZKi': {
    'group': ['Gen 0'],
    'introduction': "I'm the Virtual Diva AZKi! I love music and singing!",
    'detail':
        "A diva who became reborn into the virtual world in order to fabricate a new world. No matter the time, place, or position, she warps through all the barricades with her dazzling talent. ©kasokuSato",
    'links': {
      "YouTube": "https://www.youtube.com/channel/UC0TXe_LYZ4scaW2XMyi5_kw",
      "X": "https://twitter.com/AZKi_VDiVA"
    },
  },
  'Sakura Miko': {
    'group': ['Gen 0'],
    'introduction':
        "Nya-hello! I'm the elite shrine maiden of hololive, Sakura Miko!",
    'detail':
        "Used to work hard in the Virtual Sakura Shrine accomplishing duties as a shrine maiden until, following the gods' orders, she was led to Japan where she found out about Tokino Sora. After developing huge admiration for her, she decided to become a virtual shrine maiden idol and continue to keep working hard for that dream!",
    'links': {
      "YouTube": "https://www.youtube.com/channel/UC-hM6YJuNYVAmUWxeIr9FeA",
      "X": "https://twitter.com/sakuramiko35",
      "Twitch": "https://www.twitch.tv/sakuramiko_hololive",
      "MMD": "https://3d.nicovideo.jp/works/td74928",
      "MMD(2)": "https://3d.nicovideo.jp/works/td74930"
    },
  },
  'Hoshimachi Suisei': {
    'group': ['Gen 0'],
    'introduction':
        "It's your shooting star, your diamond in the rough, idol VTuber Hoshimachi Suisei!",
    'detail':
        "A forever18 VTuber who deeply loves singing and idols. Her dream is to one day hold a live concert in Tokyo Budokan.",
    'links': {
      "YouTube": "https://www.youtube.com/channel/UC5CwaMl1eIgY8h02uZw7u8A",
      "X": "https://twitter.com/suisei_hosimati",
      "Song playlist":
          "https://www.youtube.com/watch?v=hAI-qjw6J-A&list=PLAo9RlHR2tDZwddeEyp9nTfpaFB58DrXd&index=2"
    },
  },
  'Aki Rosenthal': {
    'group': ['Gen 1'],
    'introduction': "Alona, everyone! This is Aki Rosenthal a.k.a. AkiRose!",
    'detail':
        "A girl who traveled from a different universe. She has hyper curiosity and dabbles in all sorts of things. Her trademark pigtails float due to some sort of supernatural power.",
    'links': {
      "YouTube": "https://www.youtube.com/channel/UCFTLzh12_nrtzqBPsTCqenA",
      "X": "https://twitter.com/akirosenthal",
      "歌の再生リスト":
          "https://www.youtube.com/playlist?list=PLYt9gyZFZDj_e7p0saJXMghPsjmBMwyiO",
      "公式グッズ": "https://hololive.booth.pm/items/2825001",
      "MMD": "https://3d.nicovideo.jp/works/td63644"
    },
  },
  'Akai Haato': {
    'group': ['Gen 1'],
    'introduction': "Welcome to your rouge awakening! This is Akai Haato!",
    'detail':
        "A sassy kouhai. She is often prickly, but she'll try to get a lot of attention from those who have made friends with her. She loves red ribbons and heart shapes, and she'll wear them often in her hair and on her clothes.",
    'links': {
      "YouTube": "https://www.youtube.com/channel/UC1CfXB_kRs3C-zaeTG3oGyg",
      "X": "https://twitter.com/akaihaato",
      "MMD": "https://3d.nicovideo.jp/works/td63647",
    },
  },
  'Shirakami Fubuki': {
    'group': ['Gen 1', 'GAMERS'],
    'introduction': "Good foxy day! I'm Shirakami Fubuki!",
    'detail':
        "White-haired animal-eared otaku fox. She loves talking with people and will be happy if you give her the time of day. She aims to become a top otaku idol while enjoying each and every day.",
    'links': {
      "YouTube": "https://www.youtube.com/channel/UCdn5BQ06XqgXoAxIhbqw5Rg",
      "X": "https://twitter.com/shirakamifubuki",
    },
  },
  'Natsuiro Matsuri': {
    'group': ['Gen 1'],
    'introduction':
        "Wasshoi! hololive's symbol of purity and everyone's idol, Natsuiro Matsuri here!",
    'detail':
        "A rookie member of her school cheerleading team. Her cheerful, energetic, and affectionate personality means she gets along with everyone and has lots of friends. Loves festivals, events, and other fun things.",
    'links': {
      "YouTube": "https://www.youtube.com/channel/UCQ0UDLQCjY0rmuxCDE38FGg",
      "X": "https://twitter.com/natsuiromatsuri",
      "MMD": "https://3d.nicovideo.jp/works/td63646",
    },
  },
  'Minato Aqua': {
    'group': ['Gen 2'],
    'introduction': "A-quality day to one and all! I'm Minato Aqua!",
    'detail':
        "A marine maid-styled virtual maid. She is trying her very best, yet is still sometimes awkward and clumsy.",
    'links': {
      "YouTube": "https://www.youtube.com/channel/UC1opHUrw8rvnsadT-iGp7Cg",
      "X": "https://twitter.com/minatoaqua",
      "MMD": "https://3d.nicovideo.jp/works/td63649",
    },
  },
  'Murasaki Shion': {
    'group': ['Gen 2'],
    'introduction': "Hellshio! Murasaki Shion here!",
    'detail':
        "A child that randomly appears around the Underworld Academy... though she's actually an adult (or so she says). A self-proclaimed talented dark magician of noble birth (or so she says). She almost never actually says 'Hellshio.'",
    'links': {
      "YouTube": "https://www.youtube.com/channel/UCXTpFs_3PqI41qX2d9tL2Rw",
      "X": "https://twitter.com/murasakishionch",
      "MMD": "https://3d.nicovideo.jp/works/td63632",
    },
  },
  'Nakiri Ayame': {
    'group': ['Gen 2'],
    'introduction': "Greetings, Humans! Yoohoo!",
    'detail':
        "A kimono-clad Oni girl from the Underworld Academy. As she loves to prank people, she always uses will-o’-the-wisp on them just to have fun. Many may not realize it, but she is actually the president of the student council.",
    'links': {
      "YouTube": "https://www.youtube.com/channel/UC7fk0CB07ly8oSl0aqKkqFg",
      "X": "https://twitter.com/nakiriayame",
    },
  },
  'Yuzuki Choco': {
    'group': ['Gen 2'],
    'introduction': "Good evening, my cute students! Choc-on!",
    'detail':
        "The school nurse at the Underworld Academy. Is incredibly popular among the students, with the boys in particular coming to get checked up all the time. Loves sweets, and often gets into trouble for leaving them strewn about on her desk.",
    'links': {
      "YouTube": "https://www.youtube.com/channel/UC1suqwovbL1kzsoaZgFZLKg",
      "X": "https://twitter.com/yuzukichococh",
      "MMD": "https://3d.nicovideo.jp/works/td63631",
    },
  },
  'Oozora Subaru': {
    'group': ['Gen 2'],
    'introduction': "Sup! I'm Oozora Subaru from hololive 2nd Generation!",
    'detail':
        "The manager of an MMA team and an e-sports club. A bright and cheerful girl full of spirit, she can interact with anyone and everyone without hesitation. She's currently working hard on her own pro-gamer skills. Another day of giving everything I've got as a manager!!!!!!!!!!!",
    'links': {
      "YouTube": "https://www.youtube.com/channel/UCvzGlP9oQwU--Y0r9id_jnA",
      "X": "https://twitter.com/oozorasubaru",
    },
  },
  'Ookami Mio': {
    'group': ['GAMERS'],
    'introduction': "Hellooowl! It is Ookami Mio!",
    'detail':
        "A black-haired wolf girl who appeared on our radar randomly. She often shows up around shrines. She likes gaming.",
    'links': {
      "YouTube": "https://www.youtube.com/channel/UCp-5t9SrOQwXMU7iIjQfARg",
      "X": "https://twitter.com/ookamimio",
    },
  },
  'Nekomata Okayu': {
    'group': ['GAMERS'],
    'introduction': "Om, nom, Okayu!",
    'detail':
        "A cat being raised by an old woman that runs an onigiri store. She streams from the computer in her grandma's room.",
    'links': {
      "YouTube": "https://www.youtube.com/channel/UCvaTdHTWBGv3MKj3KVqJVCw",
      "X": "https://twitter.com/nekomataokayu",
      "MMD": "https://3d.nicovideo.jp/works/td63648",
    },
  },
  'Inugami Korone': {
    'group': ['GAMERS'],
    'introduction': "Ello! Fingers! Give me your fingers!",
    'detail':
        "A dog from a bakery in the city. She likes to play games during her free time while watchdogging.",
    'links': {
      "YouTube": "https://www.youtube.com/channel/UChAnqc_AY5_I3Px5dig3X1Q",
      "X": "https://twitter.com/inugamikorone",
      "MMD": "https://3d.nicovideo.jp/works/td63650",
    },
  },
  'Usada Pekora': {
    'group': ['Gen 3'],
    'introduction':
        "Hiya-peko! Hiya-peko! Hiya-pekooo! I'm Usada Pekora, peko!",
    'detail':
        "A lonely rabbit-eared girl who loves carrots. She loves them so much that she always brings a few anywhere she goes.",
    'links': {
      "YouTube": "https://www.youtube.com/channel/UC1DCedRgGHBdm81E1llLhOQ",
      "X": "https://twitter.com/usadapekora",
      "Twitch": "https://www.twitch.tv/usadapekora_hololive",
      "MMD": "https://3d.nicovideo.jp/works/td88332",
      "Human Rabbitality Project": "https://rabbit-plan.hololivepro.com/en/",
    },
  },
  'Shiranui Flare': {
    'group': ['Gen 3'],
    'introduction': "Noon-nui! This is hololive 3rd Gen's Shiranui Flare!",
    'detail':
        "A half-elf born to a human and elf. Usually enjoys life as she pleases. Wants to be a source of comfort so rely on her whenever you're in trouble. She may be passionate and overly sentimental, but praising her will bring her joy, even if also a little embarrassment! 'Hehehe! Let's get along!'",
    'links': {
      "YouTube": "https://www.youtube.com/channel/UCvInZx9h3jC2JzsIzoOebWg",
      "X": "https://twitter.com/shiranuiflare",
      "Song playlist":
          "https://www.youtube.com/watch?v=3y8oIuEkqQs&list=PLBoFNGFmekcMIhlW5Z-umsS3VPnQx7tI8",
    },
  },
  'Shirogane Noel': {
    'group': ['Gen 3'],
    'introduction': "All hustle, all muscle! Shirogane Noel's here!",
    'detail':
        "As much as this fluffy, meatheaded knight may be easy-going, she has the dangerous habit of attempting to muscle her way through her problems. Hungering for power, she came to train to the VTuber world where all the stronk people are.",
    'links': {
      "YouTube": "https://www.youtube.com/channel/UCdyqAaZDKHXg4Ahi7VENThQ",
      "X": "https://twitter.com/shiroganenoel",
    },
  },
  'Houshou Marine': {
    'group': ['Gen 3'],
    'introduction':
        "Ahoy! Captain of the Houshou Pirates, Houshou Marine here!",
    'detail':
        "Loves jewels, treasure, and money. Her dream is to become a pirate and go treasure hunting. In order to get a pirate ship, she is now stacking up money as a VTuber on the great lands, just like how the other land-lovers do (which also means she is currently just a girl cosplayer). She acts like a big sis and sometimes seduces people like a succubus does. A sensual, femme fatale boss, and a young one, at that! (Around 17) Her pirate outfit is just cosplay, and quite lewd when you see it that way.",
    'links': {
      "YouTube": "https://www.youtube.com/channel/UCCzUftO8KOVkV4wQG1vkUvg",
      "X": "https://twitter.com/houshoumarine",
      "MMD": "https://3d.nicovideo.jp/works/td78500",
    },
  },
  'Amane Kanata': {
    'group': ['Gen 4'],
    'introduction': "Hey, you all came, ta!",
    'detail':
        "An angel from the Celestial Academy. She is cheerful in front of close friends but becomes quiet and introverted when in crowds. She stays at home on her days off. She works hard with the goal of holding a concert at Saitama Super Arena someday.",
    'links': {
      "YouTube": "https://www.youtube.com/channel/UCZlDXzGoo7d44bwdNObFacg",
      "X": "https://twitter.com/amanekanatach",
      "MMD": "https://3d.nicovideo.jp/works/td78501",
    },
  },
  'Tsunomaki Watame': {
    'group': ['Gen 4'],
    'introduction': "Hoof, hoof, helloof! Watame did nothing wrong!",
    'detail':
        "Loves singing, and as she continued uploading song covers and having weekly singing streams titled 'Watameh Night Fever!!,' she started wanting to stand on Tokyo Budokan's stage someday. Make sure you check out her Tsunomaki Rock Paper Scissors videos as well!",
    'links': {
      "YouTube": "https://www.youtube.com/channel/UCqm3BQLlJfvkTsX_hvm0UmA",
      "X": "https://twitter.com/tsunomakiwatame",
      "MMD": "https://3d.nicovideo.jp/works/td78502",
    },
  },
  'Tokoyami Towa': {
    'group': ['Gen 4'],
    'introduction': "Suppies! 'Tis I, Tokoyami Towa, from hololive 4th Generation!",
    'detail':
        "A young devil who is visiting human society to gain experience and develop her skills. But instead of studying, she became addicted to video games! After learning about a tool for communicating with humans called 'streaming,' she's trying it out to help with her studies.",
    'links': {
      "YouTube": "https://www.youtube.com/channel/UC1uv2Oq6kNxgATlCiez59hw",
      "X": "https://twitter.com/tokoyamitowa",
      "MMD": "https://3d.nicovideo.jp/works/td84870",
    },
  },
  'Himemori Luna': {
    'group': ['Gen 4'],
    'introduction': "Is evewyone heeere?",
    'detail':
        "The princess of Candy Kingdom. She's affectionate and loves being pampered, but her butler often scolds her for acting too spoiled. Her moon-shaped accessories are said to be the crest of a country in another world.",
    'links': {
      "YouTube": "https://www.youtube.com/channel/UCa9Y57gfeY0Zro_noHRVrnw",
      "X": "https://twitter.com/himemoriluna",
      "MMD": "https://3d.nicovideo.jp/works/td84746",
    },
  },
  'Kiryu Coco': {
    'group': ['Gen 4'],
    'introduction': "Good morning, everyone! Wake up, wake up, wake up!",
    'detail':
        "A kid dragon who came to Japan from another world as a language exchange student. Holds a deep interest in human culture. She is a dragon with a strict code of honor, and keeps her human form through sheer force of willpower.",
    'links': {
      "YouTube": "https://www.youtube.com/channel/UCS9uQI-jC3DE0L4IpXyvr6w",
      "X": "https://twitter.com/kiryucoco",
    },
  },
};
