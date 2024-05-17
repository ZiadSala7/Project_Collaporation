class SectionCardModels {
  SectionCardModels({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.description,
  });

  final String id;
  final String name;
  final String imageUrl;
  final String description;

  SectionCardModels copyWith({
    String? id,
    String? name,
    String? imageUrl,
    String? description,
  }) =>
      SectionCardModels(
        id: id ?? this.id,
        name: name ?? this.name,
        imageUrl: imageUrl ?? this.imageUrl,
        description: description ?? this.description,
      );

  static List<SectionCardModels> fakeValues = [
    section,
    section.copyWith(
        id: '2',
        name: 'the Fort',
        imageUrl: _imagesUrls[1],
        description:
            'It is built perpendicular to the church and enters it through two doors in the entrance hallway, and it is used to protect monks from Berber attacks in the past, there was a sharp-sighted monk standing on top of the fort as a watchtower when he saw any danger The bell rings and the monks gather in this fortress until the danger is gone. It has a drinking water well, a place to store supplies and food, and a bath until a long time it was filled with people With water and they take it down and dip in it in the epiphany to bless it'),
    section.copyWith(
      id: '3',
      name: 'Table Hall',
      imageUrl: _imagesUrls[2],
      description:
          'We reach it from the southern entrance, which is the main entranceIt is rectangular in shape and was used for the forest table, and to the right of the interior there is a room with a ladder leading to The domes of the monastery are rich, and above there are two entrances to the right and left side of these rooms are damp In summer and hot in winter isolated from noise ',
    ),
    section.copyWith(
      id: '4',
      name: 'South Temple Room',
      imageUrl: _imagesUrls[3],
      description:
          'Its called the braid, and this corridor was used in ceremonial sessions and also used at the beginning of liturgy.On the south side of this corridor there are the remains of the ancient church drawings. There is archaeological baptism (Jorn) and was used for a short time in baptisms, but currently rites are held Baptism in modern churches',
    ),
    section.copyWith(id: '5', name: 'Temple', imageUrl: _imagesUrls[4],
    description: 'Eastern Half Dome: This dome included the third view of his pictures in four different phases.The first stage: represents the image of the ascension of Christ, and this icon is considered the oldest icon of the ascension of the Lord Christ in the world.North half dome: there is a depiction representing the nursing virgin and the prophets of the Old Testament and this icon In the fresco she represents the Virgin while she is sitting breastfeeding the baby Jesus.South Half DomeThere is a drawing representing Christ sitting on the throne and pointing with his hands at the world of the beginning and the end and around him the evangelicals Four, fathers, saints and patriarchs.'
    ),
    section.copyWith(id: '6', name: 'East Hulk Room', imageUrl: _imagesUrls[5],
    description: 'Like the Southern corridor in its use in ceremonial sessions and in the weather of JerusalemThere are beautiful icons, including a wonderful icon of Christ in a different way, which is with a mustache without a chin and pointing To the scientist of blessing and holding the Bible and 2 of the angels in the position of the hall or intercession and they are the owner Gabriel and Michael and called " icon of intercession',
    ),
    section.copyWith(id: '7', name: 'The Church', imageUrl: _imagesUrls[6],
    description: 'It was once a chorus and became now like a church where religious rites (mass) are held, there is after entering through the door Directly in the south wall, the icon holder dates back about 150 years, it was placed in front of the temple at a time of periods '
    ),
    section.copyWith(id: '8', name: 'Dish', imageUrl: _imagesUrls[7],
    description: 'Rectangular in shape consisting of the third arcade and was roofed with a wooden truss roof And the people used to pray in it in the past, but now the temple part has been used as a church '
    ),
    section.copyWith(
        id: '9', name: ' Church of Our Lady', imageUrl: _imagesUrls[8],
        description: 'It dates back to the 18th century, and is found in the southwestern part, and it is in the Khawares system, its area is small in structure and Khors only, and the reason for calling it the bird\'s milk is because the people who come and pray and are blessed from it and ask Something impossible he was achieving',
        ),
    section.copyWith(
      id: '10',
      name: 'Well',
      imageUrl: _imagesUrls[9],
      description: 'It was found in the nave on the left of the visitor after the southern entrance, about 10 meters deep, which was the source The only drinking water monks and visitors throughout the ages'
    ),
  ];
}

final section = SectionCardModels(
  id: '1',
  name: ' the Entrance',
  imageUrl: _imagesUrls[0],
  description:
      'A small door opening leads to a darkener with a drum or a basin covered with glass "washing basin" and was usually the monastery When visitors came to the church, they would greet them and wash their feet.The entrance with stones, which is one of the oldest parts of the monastery 500 m and the stones were from the Pharaonic city that was before The monastery, and when they took it, they decorated floral motifs with the cantas flower, and these stones are preserved for Allen with the inscriptions Ancient Pharaonic ',
);

const _imagesUrls = [];
