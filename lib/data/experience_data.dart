import 'package:flutter/material.dart';
import 'package:portfolio/models/experience_model.dart';

class ExperienceDetails {
  final experienceData = <ExperienceModel>[
    ExperienceModel(icon: Icons.timelapse, value: '2 Years', title: 'Experience'),
    ExperienceModel(icon: Icons.web_stories, value: '5', title: 'Projects'),
    ExperienceModel(icon: Icons.school, value: '3', title: 'Languages'),
    ExperienceModel(icon: Icons.dashboard, value: '2', title: 'Frameworks'),
  ];

  final experienceDataRus = <ExperienceModel>[
    ExperienceModel(icon: Icons.timelapse, value: '2 Года', title: 'Опыта'),
    ExperienceModel(icon: Icons.web_stories, value: '5', title: 'Проекты'),
    ExperienceModel(icon: Icons.school, value: '3', title: 'Языка'),
    ExperienceModel(icon: Icons.dashboard, value: '2', title: 'Фреймворк'),
  ];
}