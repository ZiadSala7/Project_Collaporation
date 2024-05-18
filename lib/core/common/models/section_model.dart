import 'package:cv_project_team/core/language/lang_keys.dart';
import 'package:cv_project_team/core/styles/image/app_images.dart';

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
        name: LangKeys.theFort,
        imageUrl: _imagesUrls[1],
        description: LangKeys.descriptionTheFort
        ),
    section.copyWith(
      id: '3',
      name: LangKeys.tableHall,
      imageUrl: _imagesUrls[2],
      description: LangKeys.descriptionTableHall,
    ),
    section.copyWith(
      id: '4',
      name: LangKeys.southTempleRoom,
      imageUrl: _imagesUrls[3],
      description: LangKeys.descriptionSouthTempleRoom,
    ),
    section.copyWith(
      id: '5',
      name: LangKeys.temple,
      imageUrl: _imagesUrls[4],
      description: LangKeys.descriptionTemple,
    ),
    section.copyWith(
      id: '6',
      name: LangKeys.northHulkRoom,
      imageUrl: _imagesUrls[5],
      description: LangKeys.descriptionNorthHulkRoom,
    ),
    section.copyWith(
      id: '7',
      name: LangKeys.theChurch,
      imageUrl: _imagesUrls[6],
      description: LangKeys.descriptionTheChurch,
    ),
    section.copyWith(
      id: '8',
      name: LangKeys.dish,
      imageUrl: _imagesUrls[7],
      description: LangKeys.descriptionDish,
    ),
    section.copyWith(
      id: '9',
      name: LangKeys.madonnaCurch,
      imageUrl: _imagesUrls[8],
      description: LangKeys.descriptionMadonnaCurch,
    ),
  ];
}

final section = SectionCardModels(
  id: '1',
  name: LangKeys.theEntrance,
  imageUrl: _imagesUrls[0],
  description: LangKeys.descriptionTheEntrance,
);

const _imagesUrls = [
  AppImages.imagesAlmadkhalM11,
  AppImages.imagesAlhesnH19,
  AppImages.imagesSalatAlmaaedaMaaeda7,
  AppImages.imagesSouthHekalHkl8,
  AppImages.imagesAlHekalPh4,
  AppImages.imagesNorthHekalNkl12,
  AppImages.imagesOldKhorasKh18,
  AppImages.imagesAlsahnS22,
  AppImages.imagesAzraaAz2,
];
